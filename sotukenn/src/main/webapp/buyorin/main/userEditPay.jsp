<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
	<head>
		<meta charset="UTF-8">
		<title>利用者アカウント編集画面</title>
	</head>
	<body>
		<header>
			<div class="logo">買い物代行<br>お使い便</div>
		</header>
		
		<h1>アカウント編集</h1>
		
		<div>
			<summary>クレジットカード情報</summary>
			<form action="UserEditPayConfirmation.action" method="post">
				<div class="filed">
					<input type="text" id="pay" name="pay" required>
				</div>
				<div>
					<input type="submit" value="登録する">
				</div>
			</form>
		</div>
		<div class="buttons">
			<a href="Top.action">メインメニューに戻る</a>
		</div>
		<div class="buttons">
			<a href="javascript:history.back();">アカウント編集に戻る</a>
		</div>
	</body>
</html>