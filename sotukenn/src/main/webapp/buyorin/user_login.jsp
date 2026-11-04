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
  button[type="submit"] {
    width: 100%;
    height: 42px;
    border: none;
    border-radius: 4px;
    background: #2f6fed;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
  }
  button[type="submit"]:hover { background: #2559c4; }
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

  /* 三本線ボタン */
  .menu-btn {
    position: absolute;
    top: 20px;
    right: 20px;
    width: 48px;
    height: 48px;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    gap: 6px;
    background-color: #2f6fed;
    border: none;
    border-radius: 6px;
    cursor: pointer;
  }
  .menu-btn:hover { background-color: #2559c4; }
  .menu-btn span {
    display: block;
    width: 26px;
    height: 3px;
    background-color: #fff;
    border-radius: 2px;
  }

  /* サイドバー */
  .sidebar {
    position: fixed;
    top: 0;
    right: -260px;
    width: 260px;
    height: 100%;
    background-color: #fff;
    box-shadow: -2px 0 8px rgba(0, 0, 0, 0.2);
    transition: right 0.3s;
    z-index: 1000;
    text-align: left;
  }
  .sidebar.open { right: 0; }
  .sidebar-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 20px;
    font-size: 18px;
    font-weight: bold;
    border-bottom: 1px solid #ddd;
  }
  .close-btn {
    width: auto;
    height: auto;
    font-size: 24px;
    background: none;
    border: none;
    cursor: pointer;
  }
  .sidebar a {
    display: block;
    padding: 18px 20px;
    font-size: 18px;
    color: #333;
    text-decoration: none;
    border-bottom: 1px solid #eee;
  }
  .sidebar a:hover { background-color: #e3f2fd; }
  .overlay {
    display: none;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    background-color: rgba(0, 0, 0, 0.4);
    z-index: 999;
  }
  .overlay.open { display: block; }
</style>
<script>
  function toggleSidebar() {
    document.getElementById("sidebar").classList.toggle("open");
    document.getElementById("overlay").classList.toggle("open");
  }
</script>
</head>
<body>
  <!-- 三本線ボタン -->
  <button type="button" class="menu-btn" onclick="toggleSidebar()" aria-label="メニューを開く">
    <span></span>
    <span></span>
    <span></span>
  </button>

  <div class="overlay" id="overlay" onclick="toggleSidebar()"></div>
  <div class="sidebar" id="sidebar">
    <div class="sidebar-header">
      <span>メニュー</span>
      <button type="button" class="close-btn" onclick="toggleSidebar()">×</button>
    </div>
    
    <a href="main/userRegister.jsp">新規登録</a>
  </div>

  <form action="LoginExecute.action" method="post">
    <a class="agent-btn" href="agentlogin.jsp">代行者ログイン</a>
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