<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
  String status = request.getParameter("status");
  if (status == null) {
    status = (String) request.getAttribute("status");
  }
  if (status == null) {
    status = "受注済み";
  }
%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>依頼状況確認</title>
<style>
  body {
    margin: 0;
    font-family: sans-serif;
    text-align: center;
  }
  h1 {
    font-size: 24px;
    font-weight: normal;
    margin: 40px 0 30px;
  }
  .order-id {
    font-size: 18px;
    margin-bottom: 40px;
  }
  .steps {
    display: flex;
    justify-content: center;
    align-items: center;
    gap: 10px;
    margin-bottom: 40px;
  }
  .steps button {
    width: 110px;
    height: 110px;
    border-radius: 50%;
    border: 1px solid #000;
    background-color: #fff;
    font-size: 16px;
    cursor: pointer;
  }
  .steps button:hover {
    background-color: #eee;
  }
  .steps button.active {
    background-color: #2e7d32;
    color: #fff;
    font-weight: bold;
  }
  .arrow {
    font-size: 28px;
  }
  .content {
    width: 80%;
    max-width: 500px;
    height: 200px;
    margin: 0 auto 40px;
    padding: 12px;
    box-sizing: border-box;
    border: 1px solid #000;
    text-align: left;
    font-size: 18px;
    overflow-y: auto;
    white-space: pre-wrap;
    word-break: break-all;
  }
  .content .label {
    font-size: 14px;
    margin-bottom: 8px;
  }
  .back {
    display: inline-block;
    width: 160px;
    padding: 14px 0;
    font-size: 18px;
    color: #000;
    text-decoration: none;
    border: 1px solid #000;
    margin-bottom: 40px;
  }
  .back:hover {
    background-color: #eee;
  }
</style>
</head>
<body>
  <h1>依頼状況確認</h1>

  <div class="order-id">注文ID：${param.orderId}</div>

  <form action="送信先" method="post">
    <input type="hidden" name="orderId" value="${param.orderId}">
    <div class="steps">
      <button type="submit" name="status" value="受注済み" class="<%= "受注済み".equals(status) ? "active" : "" %>">受注済み</button>
      <span class="arrow">▶</span>
      <button type="submit" name="status" value="買物中" class="<%= "買物中".equals(status) ? "active" : "" %>">買物中</button>
      <span class="arrow">▶</span>
      <button type="submit" name="status" value="配達中" class="<%= "配達中".equals(status) ? "active" : "" %>">配達中</button>
      <span class="arrow">▶</span>
      <button type="submit" name="status" value="完了" class="<%= "完了".equals(status) ? "active" : "" %>">完了</button>
    </div>
  </form>

  <div class="content">
    <div class="label">依頼内容</div>
    ${param.content}
  </div>

  <a href="メニュー先" class="back">メニューに戻る</a>
</body>
</html>