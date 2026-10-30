<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>注文内容確認</title>
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
  .confirm {
    width: 80%;
    max-width: 700px;
    margin: 0 auto;
  }
  .field {
    border: 1px solid #000;
    padding: 8px 12px;
    margin-bottom: 30px;
  }
  .field .label {
    font-size: 16px;
    margin-bottom: 6px;
  }
  .field .value {
    font-size: 18px;
    word-break: break-all;
    white-space: pre-wrap;
  }
  .field.memo .value {
    height: 220px;
    overflow-y: auto;
  }
  .field.budget .value {
    min-height: 1.2em;
  }
  .buttons {
    display: flex;
    justify-content: space-between;
    margin: 30px 0;
  }
  .buttons a {
    display: block;
    width: 130px;
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
  <h1>注文内容確認</h1>

  <div class="confirm">
    <div class="field memo">
      <div class="label">メモ</div>
      <div class="value"><c:out value="${param.memo}" /></div>
    </div>

    <div class="field budget">
      <div class="label">予算金額</div>
      <div class="value"><c:out value="${param.budget}" />円</div>
    </div>

    <div class="buttons">
      <a href="戻る先">戻る</a>
      <a href="$[link]">注文</a>
    </div>
  </div>
</body>
</html>