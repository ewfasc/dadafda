<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>受注依頼情報</title>
<style>
  body {
    margin: 0;
    font-family: sans-serif;
  }
  .container {
    position: relative;
    margin: 15px;
    min-height: 470px;
  }
  .logo {
    position: absolute;
    top: 15px;
    left: 20px;
    text-align: center;
    font-size: 14px;
    line-height: 1.3;
  }
  h1 {
    text-align: center;
    font-weight: normal;
    font-size: 32px;
    margin: 0;
    padding-top: 40px;
  }
  .request-id {
    font-size: 12px;
    font-weight: bold;
    margin: 20px 0 0 200px;
  }
  .budget {
    border: 1px solid #000;
    width: 525px;
    height: 52px;
    margin: 20px auto 0;
    box-sizing: border-box;
    padding: 18px 40px;
    font-size: 12px;
    font-weight: bold;
  }
  .items {
    border: 1px solid #000;
    border-radius: 30px;
    width: 583px;
    height: 187px;
    margin: 10px auto 0;
    box-sizing: border-box;
    padding: 30px 45px;
    font-size: 20px;
  }
  .items ul {
    margin: 0;
    padding-left: 0;
    list-style: none;
  }
  .items li::before {
    content: "・";
  }
  .buttons {
    display: flex;
    justify-content: center;
    gap: 40px;
    margin: 25px 0 20px;
  }
 .buttons button {
  min-width: 120px;
  height: 40px;
  padding: 0 20px;
  font-size: 16px;
  border: 1px solid #000;
  background: #fff;
  cursor: pointer;
  white-space: nowrap;
}
</style>
</head>
<body>
<div class="container">
  <div class="logo">買い物代行<br>お使い便</div>

  <h1>受注依頼情報</h1>

  <div class="request-id">依頼ID：000000</div>

  <div class="budget">予算金額</div>


  <div class="items">
    <ul>
    </ul>
  </div>

  <div class="buttons">
    <button type="button" onclick="history.back()">戻る</button>
    <button type="button" onclick="location.href='agenttop.jsp'">メインメニューに戻る</button>
  </div>
</div>
</body>
</html>