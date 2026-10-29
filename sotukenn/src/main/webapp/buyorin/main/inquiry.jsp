<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>お問い合わせ</title>
<style>
  body {
    margin: 0;
    font-family: sans-serif;
  }
  header {
    padding: 20px 30px;
  }
  .logo {
    display: inline-block;
    text-align: center;
    font-size: 18px;
    line-height: 1.3;
  }
  h1 {
    text-align: center;
    font-size: 40px;
    font-weight: normal;
    margin: 0 0 30px;
  }
  form {
    width: 75%;
    max-width: 700px;
    margin: 0 auto;
  }
  textarea {
    display: block;
    width: 100%;
    height: 250px;
    box-sizing: border-box;
    padding: 12px;
    font-size: 18px;
    font-family: sans-serif;
    border: 1px solid #000;
    resize: none;
  }
  .buttons {
    display: flex;
    justify-content: center;
    gap: 100px;
    margin: 40px 0;
  }
  .buttons a {
    display: block;
    width: 120px;
    padding: 12px 0;
    text-align: center;
    font-size: 18px;
    color: #000;
    text-decoration: none;
    background-color: #dae8fc;
    border: 1px solid #9eaecb;
  }
  .buttons a:hover {
    background-color: #c3d7f5;
  }
</style>
</head>
<body>
  <header>
    <div class="logo">買い物代行<br>お使い便</div>
  </header>

  <h1>お問い合わせ</h1>

  <form>
    <textarea name="inquiry"></textarea>
    <div class="buttons">
      <a href="戻る先">戻る</a>
      <a href="送信先">送信</a>
    </div>
  </form>
</body>
</html>