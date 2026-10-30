<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>注文メモ</title>
<style>
  body {
    margin: 0;
    font-family: sans-serif;
  }
  h1 {
    text-align: center;
    font-size: 20px;
    font-weight: normal;
    margin: 40px 0 30px;
  }
  form {
    width: 80%;
    max-width: 700px;
    margin: 0 auto;
  }
  .field {
    border: 1px solid #000;
    padding: 8px 12px;
    margin-bottom: 8px;
  }
  .field label {
    display: block;
    font-size: 16px;
    margin-bottom: 6px;
  }
  .field textarea,
  .field input {
    width: 100%;
    box-sizing: border-box;
    border: none;
    outline: none;
    font-size: 18px;
    font-family: sans-serif;
  }
  .field textarea {
    height: 220px;
    resize: none;
  }
  .field.yen {
    position: relative;
  }
  .field.yen input {
    padding-right: 30px;
  }
  .field.yen .unit {
    position: absolute;
    right: 12px;
    bottom: 10px;
    font-size: 18px;
  }
  .error {
    color: #d32f2f;
    font-size: 14px;
    min-height: 20px;
    margin-bottom: 20px;
  }
  .buttons {
    display: flex;
    justify-content: space-between;
    margin: 30px 0;
  }
  .buttons a,
  .buttons button {
    display: block;
    width: 130px;
    padding: 14px 0;
    text-align: center;
    font-size: 18px;
    color: #000;
    text-decoration: none;
    background-color: #fff;
    border: 1px solid #000;
    cursor: pointer;
    box-sizing: border-box;
  }
  .buttons a:hover,
  .buttons button:hover {
    background-color: #eee;
  }
</style>
<script>
  function validateForm() {
    var ok = true;

    var memo = document.getElementById("memo").value.trim();
    var money = document.getElementById("money").value.trim();

    if (memo === "") {
      document.getElementById("memoError").textContent = "メモを書いてください";
      ok = false;
    } else {
      document.getElementById("memoError").textContent = "";
    }

    if (money === "") {
      document.getElementById("moneytError").textContent = "予算金額を書いてください";
      ok = false;
    } else if (!/^[0-9]+$/.test(money)) {
      document.getElementById("moneyError").textContent = "整数で入力してください";
      ok = false;
    } else {
      document.getElementById("moneyError").textContent = "";
    }

    return ok;
  }

  document.addEventListener("DOMContentLoaded", function () {
    document.getElementById("money").addEventListener("input", function () {
      this.value = this.value.replace(/[^0-9]/g, "");
    });
  });
</script>
</head>
<body>
  <h1>注文メモ</h1>

  <form action="$[link ]" method="post" onsubmit="return validateForm()">
    <div class="field">
      <label for="memo">メモ</label>
      <textarea id="memo" name="memo"></textarea>
    </div>
    <div class="error" id="memoError"></div>

    <div class="field yen">
      <label for="budget">予算金額</label>
      <input type="text" id="moneyt" name="money" inputmode="numeric" maxlength="9" autocomplete="off">
      <span class="unit">円</span>
    </div>
    <div class="error" id="budgetError"></div>

    <div class="buttons">
      <a href="戻る先">戻る</a>
      <button type="submit">決定</button>
    </div>
  </form>
</body>
</html>