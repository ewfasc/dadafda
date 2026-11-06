<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>受注依頼情報</title>
<style>
  * { box-sizing: border-box; }
  body {
    margin: 0;
    font-family: sans-serif;
    color: #333;
  }
  header {
    position: relative;
    padding: 16px 24px;
    text-align: center;
  }
  .logo {
    position: absolute;
    top: 16px;
    left: 24px;
    font-size: 14px;
    line-height: 1.3;
  }
  h1 {
    margin: 0;
    padding-top: 40px;
    font-size: 28px;
    font-weight: normal;
  }
  .container {
    width: 560px;
    max-width: 90%;
    margin: 20px auto 0;
    padding: 24px 32px 40px;
    border: 1px solid #000;
    border-radius: 60px;
  }
  .container h2 {
    margin: 0 0 16px;
    font-size: 26px;
    font-weight: normal;
  }
  .amount-box {
    position: relative;
    height: 100px;
    border: 1px solid #000;
  }
  .amount-box .amount {
    padding: 8px;
    font-size: 20px;
  }
  .amount-box .unit {
    position: absolute;
    right: 12px;
    bottom: 8px;
    font-size: 18px;
  }
  .buttons {
    text-align: center;
    margin-top: 32px;
  }
  .buttons a, .buttons button {
    display: inline-block;
    margin: 0 8px;
    padding: 10px 28px;
    border: 1px solid #000;
    border-radius: 6px;
    background: #fff;
    color: #333;
    font-size: 16px;
    text-decoration: none;
    cursor: pointer;
  }
  .buttons a:hover, .buttons button:hover {
    background: #eee;
  }
</style>
</head>
<body>

<header>
  <div class="logo">買い物代行<br>お使い便</div>
  <h1>受注依頼情報</h1>
</header>

<div class="container">
  <h2>合計金額</h2>
  <div class="amount-box">
    <div class="amount">${totalAmount}</div>
    <span class="unit">円</span>
  </div>
</div>

<div class="buttons">
  <a href="javascript:history.back()">戻る</a>
  <a href="${pageContext.request.contextPath}/MainMenu">メインメニューに戻る</a>
</div>

</body>
</html>