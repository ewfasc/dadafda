<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>依頼一覧</title>
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
  .list {
    width: 80%;
    max-width: 600px;
    margin: 0 auto;
  }
  details {
    border: 1px solid #000;
    border-radius: 12px;
    margin-bottom: 24px;
    padding: 0 20px;
  }
  summary {
    padding: 20px 0;
    font-size: 18px;
    cursor: pointer;
  }
  .detail {
    padding: 0 0 20px;
  }
  .content {
    border: 1px solid #000;
    min-height: 120px;
    padding: 12px;
    font-size: 16px;
    line-height: 1.8;
    box-sizing: border-box;
  }
  .accept {
    display: block;
    margin: 12px 0 0 auto;
    padding: 12px 20px;
    font-size: 14px;
    color: #000;
    background-color: #d5e8d4;
    border: 1px solid #82b366;
    cursor: pointer;
  }
  .accept:hover {
    background-color: #c0dbbd;
  }
  .buttons {
    margin: 40px 0;
    text-align: center;
  }
  .buttons a {
    display: inline-block;
    width: 120px;
    padding: 14px 0;
    font-size: 18px;
    color: #000;
    text-decoration: none;
    background-color: #dae8fc;
    border: 1px solid #6c8ebf;
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

  <h1>依頼一覧</h1>

  <div class="list">
    <details>
      <summary>注文ID：</summary>
      <div class="detail">
        <div class="content"></div>
        <form action="送信先" method="post">
          <input type="hidden" name="orderId" value="">
          <button type="submit" class="accept">依頼を受ける</button>
        </form>
      </div>
    </details>

    <details>
      <summary>注文ID：</summary>
      <div class="detail">
        <div class="content"></div>
        <form action="送信先" method="post">
          <input type="hidden" name="orderId" value="">
          <button type="submit" class="accept">依頼を受ける</button>
        </form>
      </div>
    </details>

    <details>
      <summary>注文ID：</summary>
      <div class="detail">
        <div class="content"></div>
        <form action="送信先" method="post">
          <input type="hidden" name="orderId" value="">
          <button type="submit" class="accept">依頼を受ける</button>
        </form>
      </div>
    </details>
  </div>

  <div class="buttons">
    <a href="戻る先">戻る</a>
  </div>
</body>
</html>