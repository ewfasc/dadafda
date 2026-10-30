<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>注文完了</title>
<style>
  body {
    margin: 0;
    font-family: sans-serif;
  }
  h1 {
    text-align: center;
    font-size: 36px;
    font-weight: normal;
    margin: 30px 0;
  }
  .message {
    text-align: center;
    font-size: 24px;
    margin: 100px 0;
  }
  .buttons {
    display: flex;
    justify-content: center;
    margin: 40px 0;
  }
  .buttons a {
    display: block;
    width: 200px;
    padding: 14px 0;
    text-align: center;
    font-size: 18px;
    color: #000;
    text-decoration: none;
    background-color: #fff;
    border: 1px solid #000;
    box-sizing: border-box;
  }
  .buttons a:hover {
    background-color: #eee;
  }
</style>
</head>
<body>
  <h1>注文完了</h1>

  <p class="message">注文が完了しました</p>

  <div class="buttons">
    <a href="メインメニュー先">メインメニューへ戻る</a>
  </div>
</body>
</html>