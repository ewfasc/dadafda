<%@ tag language="java" pageEncoding="UTF-8" %>
<%@ attribute name="title" required="true" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>${title}</title>
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
</style>
<script>
document.addEventListener('DOMContentLoaded', () => {
  // 移動させたい入力欄（class="enter-next"）をすべて取得
  const fields = Array.from(document.querySelectorAll('.enter-next'));
  fields.forEach((field, index) => {
    field.addEventListener('keydown', (event) => {
      if (event.key === 'Enter') {
        const nextField = fields[index + 1];
        if (nextField) {
          // 次の入力欄がある場合：送信を防いで下へ移動
          event.preventDefault();
          nextField.focus();
        }
        // 最後の欄の場合：そのままフォームが送信される
      }
    });
  });
});
</script>
</head>
<body>
  <header>
    <div class="logo">買い物代行<br>お使い便</div>
  </header>

  <h1>${title}</h1>

  <jsp:doBody/>
</body>
</html>