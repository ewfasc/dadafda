<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ja">
	<head>
		<meta charset="UTF-8">
		<title>代行者アカウント編集画面</title>
	</head>
	<body>
		<header>
			<div class="logo">買い物代行<br>お使い便</div>
		</header>
		
		<h1>口座情報編集</h1>
		
		<div>
			<summary>振込口座情報</summary>
			<form action="AgentEditBankConfirmation.action" method="post">
				<div class="filed">
					<input type="text" id="bank" name="bank" required>
				</div>
				<div>
					<input type="submit" value="登録する">
				</div>
			</form>
		</div>
		<div class="buttons">
			<a href="AgentTop.action">メインメニューに戻る</a>
		</div>
		<div class="buttons">
			<a href="javascript:history.back();">アカウント編集に戻る</a>
		</div>
	</body>
</html>