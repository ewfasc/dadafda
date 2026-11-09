<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%
  request.setCharacterEncoding("UTF-8");

  String dbUrl  = "jdbc:mysql://localhost:3306/データベース名?useUnicode=true&characterEncoding=UTF-8";
  String dbUser = "ユーザー名";
  String dbPass = "パスワード";

  String requestId = request.getParameter("requestId") != null ? request.getParameter("requestId") : "";
  String totalAmount = request.getParameter("totalAmount") != null ? request.getParameter("totalAmount") : "";
  boolean executed = request.getParameter("execute") != null;
  boolean success = false;

  // 「完了する」を押したときだけDBを更新
  if (executed) {
    try {
      int amount = Integer.parseInt(totalAmount);
      if (amount > 0) {
        Class.forName("com.mysql.cj.jdbc.Driver");
        try (Connection con = DriverManager.getConnection(dbUrl, dbUser, dbPass);
             PreparedStatement ps = con.prepareStatement(
               "UPDATE orders SET status = 3, total_amount = ? WHERE request_id = ?")) {
          ps.setInt(1, amount);
          ps.setString(2, requestId);
          success = ps.executeUpdate() > 0;
        }
      }
    } catch (Exception e) {
      success = false;
    }
  }
%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>完了確認</title>
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
    font-size: 22px;
    text-align: center;
  }
  .buttons {
    display: flex;
    justify-content: center;
    gap: 40px;
    margin: 30px auto;
  }
  .buttons button {
    min-width: 120px;
    height: 40px;
    padding: 0 20px;
    font-size: 16px;
    border: 1px solid #000;
    background: #fff;
    cursor: pointer;
    white-space: nowrap;
  }
</style>
</head>
<body>

<header>買い物代行<br>お使い便</header>

<% if (!executed) { %>

  <h1>完了確認</h1>
  <div class="box">
    <p>合計金額：${money }円</p>
    <p>配達を完了にしますか？</p>
  </div>
  <form method="post">
    <input type="hidden" name="requestId" value="<%= requestId %>">
    <input type="hidden" name="totalAmount" value="<%= totalAmount %>">
    <div class="buttons">
      <button type="button" onclick="history.back()">戻る</button>
      <button type="submit" name="execute" value="1">完了する</button>
    </div>
  </form>

<% } else { %>

  <h1>完了</h1>
  <div class="box">
    <p><%= success ? "配達を完了しました。" : "更新に失敗しました。" %></p>
  </div>
  <div class="buttons">
    <button type="button" onclick="location.href='agenttop.jsp'">メインメニューに戻る</button>
  </div>

<% } %>

</body>
</html>