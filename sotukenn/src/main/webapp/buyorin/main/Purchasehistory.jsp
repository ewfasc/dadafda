<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>購入履歴</title>
<style>
  body {
    margin: 0;
    font-family: sans-serif;
  }
  h1 {
    text-align: center;
    font-size: 32px;
    font-weight: normal;
    margin: 30px 0;
  }
  .list {
    width: 80%;
    max-width: 450px;
    margin: 0 auto;
  }
  details {
    border: 1px solid #000;
    border-radius: 10px;
    margin-bottom: 20px;
    padding: 0 16px;
  }
  summary {
    padding: 18px 0;
    font-size: 18px;
    cursor: pointer;
  }
  .detail {
    padding: 0 0 16px;
    font-size: 16px;
    line-height: 1.8;
  }
  .buttons {
    display: flex;
    justify-content: center;
    margin: 60px 0 40px;
  }
  .buttons a {
    display: block;
    padding: 12px 24px;
    font-size: 14px;
    color: #000;
    text-decoration: none;
    background-color: #fff;
    border: 1px solid #000;
  }
  .buttons a:hover {
    background-color: #eee;
  }
</style>
</head>
<body>
  <h1>購入履歴</h1>

  <div class="list">
    <details>
      <summary>2026/10/28　注文ID：000003</summary>
      <div class="detail">
        メモ：牛乳1本、食パン1斤、卵1パック<br>
        予算金額：1,000円<br>
        状況：完了
      </div>
    </details>

    <details>
      <summary>2026/10/20　注文ID：000002</summary>
      <div class="detail">
        メモ：トイレットペーパー、ティッシュ<br>
        予算金額：1,500円<br>
        状況：完了
      </div>
    </details>

    <details>
      <summary>2026/10/10　注文ID：000001</summary>
      <div class="detail">
        メモ：りんご3個、バナナ1房<br>
        予算金額：800円<br>
        状況：完了
      </div>
    </details>
  </div>

  <div class="buttons">
    <a href="メインメニュー先">メインメニューに戻る</a>
  </div>
</body>
</html>