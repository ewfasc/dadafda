<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>完了</title>
<style>
  body { margin: 0; font-family: sans-serif; background: #fff; }
  header { padding: 10px 20px; font-size: 14px; text-align: center; width: fit-content; }
  h1 { text-align: center; font-weight: normal; font-size: 32px; margin: 0 0 20px; }
  .box {
    width: 560px; max-width: 90%; margin: 0 auto; padding: 30px 60px;
    border: 1px solid #000; border-radius: 60px; box-sizing: border-box;
    font-size: 22px; text-align: center;
  }
  .buttons { display: flex; justify-content: center; gap: 40px; margin: 30px auto; }
  .buttons button {
    min-width: 120px; height: 40px; padding: 0 20px; font-size: 16px;
    border: 1px solid #000; background: #fff; cursor: pointer; white-space: nowrap;
  }
</style>
</head>
<body>

<header>買い物代行<br>お使い便</header>

<h1>完了</h1>
<div class="box">
  <p>
    <c:choose>
      <c:when test="${success}">配達を完了しました。</c:when>
      <c:otherwise>配達を完了しました。</c:otherwise>
    </c:choose>
  </p>
</div>
<div class="buttons">
  <button type="button" onclick="location.href='agenttop.jsp'">メインメニューに戻る</button>
</div>

</body>
</html>