<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>おつかりん ログイン</title>
<style>
  body {
    margin: 0;
    min-height: 100vh;
    display: flex;
    align-items: center;
    justify-content: center;
    font-family: "Hiragino Kaku Gothic ProN", "Yu Gothic", Meiryo, sans-serif;
    background: #f5f5f5;
    color: #222;
  }
  form {
    width: 320px;
    padding: 32px;
    background: #fff;
    border: 1px solid #ddd;
    border-radius: 8px;
  }
  h1 { margin: 0 0 4px; font-size: 20px; text-align: center; }
  p { margin: 0 0 24px; font-size: 14px; text-align: center; color: #666; }
  label { display: block; margin-bottom: 4px; font-size: 14px; }
  input {
    box-sizing: border-box;
    width: 100%;
    height: 40px;
    margin-bottom: 16px;
    padding: 0 10px;
    border: 1px solid #bbb;
    border-radius: 4px;
    font-size: 16px;
  }
  button {
    width: 100%;
    height: 42px;
    border: none;
    border-radius: 4px;
    background: #2f6fed;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
  }
  button:hover { background: #2559c4; }
  .agent-btn {
    box-sizing: border-box;
    display: flex;
    align-items: center;
    justify-content: center;
    width: 100%;
    height: 42px;
    margin-bottom: 24px;
    border: 1px solid #2f6fed;
    border-radius: 4px;
    background: #fff;
    color: #2f6fed;
    font-size: 16px;
    text-decoration: none;
  }
  .agent-btn:hover { background: #eef3ff; }
</style>
</head>
<body>
  <form action="#" method="post">
    <a class="agent-btn" href="agentLogin.jsp">代行者ログイン</a>
    <h1>おつかりん利用者ログイン</h1>
    <p>ログイン</p>
    <label for="id">ID</label>
    <input type="text" id="id" name="id" autocomplete="username">
    <label for="password">パスワード</label>
    <input type="password" id="password" name="password" autocomplete="current-password">
    <button type="submit">ログイン</button>
  </form>
</body>
</html>