<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>受注依頼情報</title>
<style>
  body {
    margin: 0;
    font-family: sans-serif;
    background: #fff;
  }
  header {
    padding: 10px 20px;
    font-size: 14px;
    text-align: center;
    width: fit-content;
  }
  h1 {
    text-align: center;
    font-weight: normal;
    font-size: 32px;
    margin: 0 0 20px;
  }
  .box {
    width: 560px;
    max-width: 90%;
    margin: 0 auto;
    padding: 30px 60px;
    border: 1px solid #000;
    border-radius: 60px;
    box-sizing: border-box;
  }
  .box label {
    display: flex;
    align-items: center;
    gap: 20px;
    font-size: 22px;
    margin: 20px 0;
  }
  .box input[type="radio"] {
    width: 32px;
    height: 32px;
  }
  .buttons {
    display: flex;
    justify-content: space-between;
    width: 560px;
    max-width: 90%;
    margin: 30px auto;
  }
  .buttons button {
    font-size: 18px;
    padding: 10px 40px;
    cursor: pointer;
  }
</style>
</head>
<body>

<header>買い物代行<br>お使い便</header>

<h1>受注依頼情報</h1>

<form action="next.jsp" method="post">
  <div class="box">
    <label><input type="radio" name="status" value="1">買い物中</label>
    <label><input type="radio" name="status" value="2" checked>配達中</label>
    <label><input type="radio" name="status" value="3">配達完了</label>
  </div>


  <div class="buttons">
    <button type="button" onclick="history.back()">戻る</button>
     <button type="button" onclick="location.href='orderInformation2.jsp'">次へ</button>
  </div>
</form>

</body>
</html>