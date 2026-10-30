<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>代行者新規登録確認</title>
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
  table {
    margin: 0 auto;
    border-collapse: collapse;
  }
  th {
    width: 180px;
    padding: 14px 20px;
    text-align: center;
    font-size: 16px;
    font-weight: normal;
  }
  td {
    min-width: 300px;
    padding: 14px 20px;
    font-size: 18px;
    word-break: break-all;
  }
  .buttons {
    display: flex;
    justify-content: center;
    gap: 100px;
    margin: 40px 0;
  }
  .buttons a {
    display: block;
    width: 140px;
    padding: 14px 0;
    text-align: center;
    font-size: 20px;
    color: #000;
    text-decoration: none;
    border: 1px solid #000;
  }
  .back {
    background-color: #dae8fc;
    border-color: #6c8ebf;
  }
  .back:hover {
    background-color: #c3d7f5;
  }
  .done {
    background-color: #fff2cc;
    border-color: #d6b656;
  }
  .done:hover {
    background-color: #ffe9a6;
  }
</style>
</head>
<body>
  <header>
    <div class="logo">買い物代行<br>お使い便</div>
  </header>

  <h1>代行者新規登録確認</h1>

  <table>
    <tr>
      <th>名前</th>
      <td>${sessionScope.user.username}</td>
    </tr>
    <tr>
      <th>電話番号</th>
      <td>${sessionScope.user.tell}</td>
    </tr>
    <tr>
      <th>メールアドレス</th>
      <td>${sessionScope.user.mail}</td>
    </tr>
    <tr>
      <th>パスワード</th>
      <td>${sessionScope.user.password}</td>
    </tr>
    <tr>
      <th>銀行口座</th>
      <td>${sessionScope.agent.bank}</td>
    </tr>
   </table>

  <div class="buttons">
    <a href="戻る先" class="back">戻る</a>
    <a href="完了先" class="done">完了</a>
  </div>
</body>
</html>