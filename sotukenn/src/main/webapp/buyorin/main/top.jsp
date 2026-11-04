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
    background-color: #1565c0;
    border: none;
    border-radius: 6px;
    cursor: pointer;
  }
  .menu-btn:hover {
    background-color: #0d47a1;
  }
  .menu-btn span {
    display: block;
    width: 26px;
    height: 3px;
    background-color: #fff;
    border-radius: 2px;
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
  .sidebar.open {
    right: 0;
  }
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
    cursor: pointer;
  }
  .sidebar a:hover {
    background-color: #e3f2fd;
  }
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
  .overlay.open {
    display: block;
  }
</style>
<script>
  function toggleSidebar() {
    document.getElementById("sidebar").classList.toggle("open");
    document.getElementById("overlay").classList.toggle("open");
  }
  function confirmLogout() {
    if (confirm("本当にログアウトしますか？")) {
      // ★リンク先記入：ログアウトのAction（例：/buyorin/main/Logout.action）
      location.href = "Logout.action";
    }
  }
</script>
</head>
<body>
    <!-- 三本線ボタン -->
    <button class="menu-btn" onclick="toggleSidebar()" aria-label="メニューを開く">
        <span></span>
        <span></span>
        <span></span>
    </button>

    <div class="overlay" id="overlay" onclick="toggleSidebar()"></div>
    <div class="sidebar" id="sidebar">
        <div class="sidebar-header">
            <span>メニュー</span>
            <button class="close-btn" onclick="toggleSidebar()">×</button>
        </div>
       
        <a onclick="confirmLogout()">ログアウト</a>
       
        <a href="AccountEdit.action">アカウント編集</a>
        
        <a href="Contact.action">お問い合わせ</a>
    </div>

    <h1>利用者トップ画面</h1>
    <div class="menu">
        <a href="Order.action">依頼する</a>
        <a href="Status.action">依頼状況を確認する</a>
        <a href="History.action">履歴を確認する</a>

        <a href="Order.action">依頼する</a>
       
        <a href="Status.action">依頼状況を確認する</a>
     
        <a href="History.action">履歴を確認する</a>
    </div>
</body>
</html>