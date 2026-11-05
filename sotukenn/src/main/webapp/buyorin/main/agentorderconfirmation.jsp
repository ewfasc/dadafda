<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>依頼確認</title>
<style>
  body {
    margin: 0;
    font-family: sans-serif;
    text-align: center;
  }

  /* 左上ロゴ */
  .logo {
    position: absolute;
    top: 20px;
    left: 20px;
    font-size: 16px;
    line-height: 1.4;
    color: #333;
  }

  h1 {
    font-size: 32px;
    font-weight: normal;
    margin: 40px 0 30px;
  }

  .content {
    width: 80%;
    max-width: 700px;
    height: 300px;
    margin: 0 auto 30px;
    padding: 12px;
    box-sizing: border-box;
    text-align: left;
    font-size: 18px;
    overflow-y: auto;
    white-space: pre-wrap;
    word-break: break-all;
  }
  
.content {
  width: 80%;
  max-width: 700px;
  height: 300px;
  margin: 0 auto 30px;
  padding: 12px;
  box-sizing: border-box;
  border: 1px solid #000;
  text-align: left;
  font-size: 18px;
  overflow-y: auto;
  white-space: pre-wrap;
  word-break: break-all;
}
  .buttons {
    display: flex;
    justify-content: center;
    gap: 80px;
    margin-bottom: 40px;
  }
  .buttons button {
    width: 160px;
    height: 60px;
    font-size: 18px;
    cursor: pointer;
  }
  .cancel-btn {
    background-color: #f8cecc;
    border: 1px solid #b85450;
  }
  .cancel-btn:hover {
    background-color: #f1b0ac;
  }
  .accept-btn {
    background-color: #d5e8d4;
    border: 1px solid #82b366;
  }
  .accept-btn:hover {
    background-color: #b9d8b7;
  }
</style>
<script>
  function confirmCancel() {
    if (confirm("キャンセルして一覧に戻りますか？")) {
      location.href = "AgentOrder.action";
    }
  }
</script>
</head>
<body>

    <div class="logo">買い物代行<br>お使い便</div>

    <h1>依頼確認</h1>

    <div class="content">${param.content}</div>

    <form action="AcceptOrder.action" method="post">
        <input type="hidden" name="orderId" value="${param.orderId}">
        <div class="buttons">
            <button type="button" class="cancel-btn" onclick="confirmCancel()">キャンセル</button>
            <button type="submit" class="accept-btn">依頼を受ける</button>
        </div>
    </form>
</body>
</html>