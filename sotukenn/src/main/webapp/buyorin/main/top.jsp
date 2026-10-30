<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>利用者トップ画面</title>
<style>
  body {
    margin: 0;
    font-family: sans-serif;
    text-align: center;
  }
  .login-btn {
    position: absolute;
    top: 20px;
    right: 20px;
    padding: 10px 24px;
    font-size: 16px;
    color: #fff;
    background-color: #1565c0;
    border: none;
    border-radius: 6px;
    cursor: pointer;
  }
  .login-btn:hover {
    background-color: #0d47a1;
  }
  h1 {
    margin: 40px 0;
  }
  .menu {
    display: flex;
    flex-direction: column;
    align-items: center;
    gap: 30px;
  }
  .menu a {
    display: block;
    width: 80%;
    max-width: 500px;
    padding: 40px 0;
    font-size: 28px;
    color: #fff;
    background-color: #2e7d32;
    text-decoration: none;
    border-radius: 12px;
  }
  .menu a:hover {
    background-color: #1b5e20;
  }
</style>
<script>
  function confirmLogin() {
    if (confirm("本当にログアウトしますか？")) {
      location.href = "main.Logout.action";
    }
  }
</script>
 </head>
<body>
  <button class="login-btn" onclick="confirmLogin()">ログアウト</button>
  <h1>利用者トップ画面</h1>
  <div class="menu">
    <a href="リンク先1">依頼する</a>
    <a href="リンク先2">依頼状況を確認する</a>
    <a href="リンク先3">履歴を確認する</a>
  </div>
</body>
</html>