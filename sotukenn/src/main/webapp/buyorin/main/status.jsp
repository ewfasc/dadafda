<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%
  String status = (String) request.getAttribute("status");
  if (status == null) {
    status = request.getParameter("status");
  }
  if (status == null) {
    status = "受注済み";
  }
  String[] list = {"受注済み", "買物中", "配達中", "完了"};
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
    color: #000;
    font-size: 16px;
    cursor: default;
  }
  .steps button.active {
    background-color: #2e7d32;
    color: #fff;
    font-weight: bold;
  }
.steps {
  display: flex;
  align-items: center;
  gap: 10px;
  font-size: 16px;
}
.steps .arrow {
  color: #000;
}
.steps .step {
  padding: 6px 14px;
  border: 2px solid transparent; 
  display: inline-block;
}
.steps .step.active {
  border: 2px solid #000;       
  border-radius: 20px;          
  background-color: transparent; 
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

  <div class="order-id">注文ID：111111</div>

  <div class="steps">
    <% for (int i = 0; i < list.length; i++) { %>
      <% if (i > 0) { %><span class="arrow">▶</span><% } %>
      <button type="button" disabled class="<%= list[i].equals(status) ? "active" : "" %>"><%= list[i] %></button>
    <% } %>
  </div>

  <div class="content">
    <div class="label">依頼内容</div>
    ${memo}
  </div>

  <a href="Top.action" class="back">メニューに戻る</a>
</body>
</html>