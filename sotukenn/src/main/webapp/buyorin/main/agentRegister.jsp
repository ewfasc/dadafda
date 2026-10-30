<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>代行者新規登録</title>
<style>
  body {
    margin: 0;
    font-family: sans-serif;
  }
  header {
    display: flex;
    justify-content: space-between;
    align-items: flex-start;
    padding: 20px 30px;
  }
  .logo {
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
  .field {
    border: 1px solid #000;
    padding: 8px 12px;
    margin-bottom: 40px;
  }
  .field label {
    display: block;
    font-size: 14px;
    margin-bottom: 6px;
  }
  .field input {
    width: 100%;
    box-sizing: border-box;
    border: none;
    outline: none;
    font-size: 18px;
    padding: 8px 0;
  }
  .submit {
    display: block;
    width: fit-content;
    margin: 0 auto 40px;
    padding: 12px 60px;
    font-size: 18px;
    color: #fff;
    background-color: #2e7d32;
    text-decoration: none;
    border-radius: 6px;
  }
  .submit:hover {
    background-color: #1b5e20;
  }
</style>
</head>
<body>
  <header>
    <div class="logo">買い物代行<br>お使い便</div>
  </header>

  <h1>代行者新規登録</h1>

  <form>
    <div class="field">
      <label for="name">名前</label>
      <input type="text" id="name" name="name" required>
    </div>
    <div class="field">
      <label for="tel">電話番号</label>
      <input type="tel" id="tel" name="tel" required>
    </div>
    <div class="field">
      <label for="email">ID</label>
      <input type="email" id="email" name="email" required>
    </div>
    <div class="field">
      <label for="password">パスワード</label>
      <input type="password" id="password" name="password" required>
    </div>
    <div class="field">
      <label for="bank">銀行口座</label>
      <input type="text" id="bank" name="bank" required>
    </div>
    <a href="AgentRegisterConfirmation.action" class="submit">登録</a>
   </form>
</body>
</html>