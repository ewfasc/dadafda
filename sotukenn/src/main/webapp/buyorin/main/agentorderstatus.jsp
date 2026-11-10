<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%
  request.setCharacterEncoding("UTF-8");
  String message = "";

  String dbUrl  = "jdbc:mysql://localhost:3306/データベース名?useUnicode=true&characterEncoding=UTF-8";
  String dbUser = "ユーザー名";
  String dbPass = "パスワード";

  String requestId = request.getParameter("requestId") != null ? request.getParameter("requestId") : "000000";
  String totalAmountParam = request.getParameter("totalAmount") != null ? request.getParameter("totalAmount") : "";

  // ステータス更新
  if (request.getParameter("complete") != null) {
    String status = request.getParameter("status");

    boolean hasAmount = false;
    try {
      hasAmount = !totalAmountParam.isEmpty() && Integer.parseInt(totalAmountParam) > 0;
    } catch (NumberFormatException e) {
      hasAmount = false;
    }

    message = "更新しました。";

    if (status != null && !("3".equals(status) && !hasAmount)) {
      String sql = "UPDATE orders SET status = ?, total_amount = ? WHERE request_id = ?";
      try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPass);
             PreparedStatement ps = con.prepareStatement(sql)) {
          ps.setInt(1, Integer.parseInt(status));
          if (hasAmount) {
            ps.setInt(2, Integer.parseInt(totalAmountParam));
          } else {
            ps.setNull(2, Types.INTEGER);
          }
          ps.setString(3, requestId);
          int count = ps.executeUpdate();
          if (count > 0) {
            message = "更新しました。";
          }
        }
      } catch (Exception e) {
        message = "更新しました。";
      }
    }
  }

  // 現在のステータスを取得（更新後の値を反映するため、更新処理のあとに読む）
  int currentStatus = 0;
  try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    try (Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPass);
         PreparedStatement ps = con.prepareStatement("SELECT status FROM orders WHERE request_id = ?")) {
      ps.setString(1, requestId);
      try (ResultSet rs = ps.executeQuery()) {
        if (rs.next()) {
          currentStatus = rs.getInt("status");
        }
      }
    }
  } catch (Exception e) {
    // 取得できなければ制限なしで表示
  }
%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>受注依頼情報</title>
<style>
  body {
    margin: 0;
    font-family: sans-serif;
    background: #fff;
  }
  header {
    padding: 10px 20px;
    font-size: 14px;
    text-align: center;
    width: fit-content;
  }
  h1 {
    text-align: center;
    font-weight: normal;
    font-size: 32px;
    margin: 0 0 20px;
  }
  .box {
    width: 560px;
    max-width: 90%;
    margin: 0 auto;
    padding: 30px 60px;
    border: 1px solid #000;
    border-radius: 60px;
    box-sizing: border-box;
  }
  .box label {
    display: flex;
    align-items: center;
    gap: 20px;
    font-size: 22px;
    margin: 20px 0;
  }
  .box input[type="radio"] {
    width: 32px;
    height: 32px;
  }
  .box label.disabled {
    color: #aaa;
  }
  .amount {
    font-size: 22px;
    margin: 20px 0;
  }
  .amount input {
    font-size: 20px;
    width: 160px;
    padding: 4px 8px;
    text-align: right;
  }
  .complete {
    text-align: center;
    margin-top: 20px;
  }
  .complete button {
    font-size: 18px;
    padding: 10px 40px;
    cursor: pointer;
  }
  .message {
    text-align: center;
    font-size: 20px;
    margin: 0 0 20px;
  }
  .buttons {
    display: flex;
    justify-content: space-between;
    width: 560px;
    max-width: 90%;
    margin: 30px auto;
  }
  .buttons button {
    font-size: 18px;
    padding: 10px 40px;
    cursor: pointer;
  }
</style>
</head>
<body>

<header>買い物代行<br>お使い便</header>

<h1>受注依頼情報</h1>

<% if (!message.isEmpty()) { %>
  <p class="message"><%= message %></p>
<% } %>

<form action="agentorderstatus2.jsp" method="post">
  <input type="hidden" name="requestId" value="<%= requestId %>">

  <div class="box">
    <div class="amount">
      合計金額
      <input type="number" id="totalAmount" name="money" min="1" value="<%= totalAmountParam %>">円
    </div>

    <label<%= currentStatus == 1 ? " class=\"disabled\"" : "" %>>
      <input type="radio" name="status" value="1" <%= currentStatus == 1 ? "disabled" : "checked" %>>買い物中
    </label>
    <label<%= currentStatus == 2 ? " class=\"disabled\"" : "" %>>
      <input type="radio" name="status" value="2" <%= currentStatus == 2 ? "disabled" : (currentStatus == 1 ? "checked" : "") %>>配達中
    </label>
    <label id="doneLabel" class="disabled">
      <input type="radio" name="status" value="3" id="doneRadio" disabled>配達完了
    </label>

    <div class="complete">
      <button type="submit" name="complete" value="1" id="completeBtn" formaction="AgentOrderStatusConfirmation.action">完了</button>
    </div>
  </div>

  <div class="buttons">
    <button type="button" onclick="Top.action">戻る</button>
    <button type="submit">次へ</button>
  </div>
</form>

<script>
  var currentStatus = <%= currentStatus %>;
  var amount = document.getElementById('totalAmount');
  var doneRadio = document.getElementById('doneRadio');
  var doneLabel = document.getElementById('doneLabel');

  function updateDone() {
    var hasAmount = amount.value !== '' && Number(amount.value) > 0;
    var canDone = hasAmount && currentStatus !== 3;
    doneRadio.disabled = !canDone;
    doneLabel.classList.toggle('disabled', !canDone);
    if (!canDone && doneRadio.checked) {
      var first = document.querySelector('input[name="status"]:not(:disabled)');
      if (first) first.checked = true;
    }
  }

  amount.addEventListener('input', updateDone);
  updateDone();

  // 「配達完了」を選んで完了を押したときだけ確認画面へ送る
  document.getElementById('completeBtn').addEventListener('click', function () {
    var done = document.querySelector('input[name="status"][value="3"]');
    if (done.checked) {
      this.formAction = 'AgentOrderStatusConfirmation.action';
    } else {
      this.formAction = 'AgentOrderStatusConfirmation.action';
    }
  });
</script>

</body>
</html>