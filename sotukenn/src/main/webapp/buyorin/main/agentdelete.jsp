<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>アカウント削除確認</title>
<style>
  * { box-sizing: border-box; }
  body {
    margin: 0;
    font-family: "Hiragino Sans", "Meiryo", sans-serif;
    color: #333;
    background: #fff;
  }
  header {
    position: relative;
    padding: 16px 24px;
    text-align: center;
  }
  .logo {
    position: absolute;
    left: 24px;
    top: 16px;
    font-size: 14px;
    line-height: 1.4;
  }
  h1 { margin: 0; font-size: 32px; font-weight: normal; }

  .card {
    max-width: 640px;
    margin: 32px auto;
    padding: 32px 48px;
    border: 1px solid #333;
    border-radius: 48px;
  }
  .row { margin-bottom: 20px; }
  .row label { display: block; font-size: 12px; margin-bottom: 6px; }
  .row .value {
    padding: 8px 10px;
    border: 1px solid #666;
    min-height: 36px;
    background: #fff;
  }

  .buttons {
    display: flex;
    justify-content: center;
    gap: 80px;
    margin-top: 32px;
  }
  .buttons button {
    width: 108px;
    height: 44px;
    font-size: 16px;
    color: #333;
    cursor: pointer;
  }
  .btn-back   { background: #dae8fc; border: 1px solid #6c8ebf; }
  .btn-change { background: #fff2cc; border: 1px solid #d6b656; }
</style>
</head>
<body>

<header>
  <div class="logo">買い物代行<br>お使い便</div>
  <h1>アカウント削除確認</h1>
</header>

<form class="card" action="AgentDeleteExecute.action" method="post">

  <div class="buttons">
    <button type="button" class="btn-back" onclick="history.back()">戻る</button>
    <button type="submit" class="btn-change">削除</button>
  </div>

</form>

</body>
</html>
