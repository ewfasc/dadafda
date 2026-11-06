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
			<details>
				<summary>アカウント名</summary>
				<form action="" method="post">
					<div class="filed">
						<input type="hidden" name="type" vlaue="name">
						<input type="text" id="name" name="value" value="${user.username}" required>
					</div>
					<div>
						<input type="submit" value="変更する">
					</div>
				</form>
			</details>
			
			<details>
				<summary>電話番号</summary>
				<form action="" method="post">
					<div class="filed">
						<input type="hidden" name="type" vlaue="tell">
						<input type="tel" id="tell" name="value" value="${user.tell}" required>
					</div>
					<div>
						<input type="submit" value="変更する">
					</div>
				</form>
			</details>
			
			<details>
				<summary>メールアドレス</summary>
				<form action="" method="post">
					<div class="filed">
						<input type="hidden" name="type" vlaue="mail">
						<input type="email" id="mail" name="value" value="${user.mail}" required>
					</div>
					<div>
						<input type="submit" value="変更する">
					</div>
				</form>
			</details>
			
			<details>
				<summary>パスワード</summary>
				<form action="" method="post">
					<div class="filed">
						<input type="hidden" name="type" vlaue="password">
						<input type="password" id="password"  name="value" value="${user.password}" required>
					</div>
					<div class="filed">
						<input type="password" id="password"  name="value" value="${user.password}" required>
					</div>
					<div>
						<input type="submit" value="変更する">
					</div>
				</form>
			</details>
			
			<details>
				<summary>住所</summary>
				<form action="" method="post">
					<div class="filed">
						<input type="hidden" name="type" vlaue="address">
						<input type="text" id="address" name="value" value="${member.address}" required>
					</div>
					<div>
						<input type="submit" value="変更する">
					</div>
				</form>
			</details>
			
			<details>
				<summary>支払方法</summary>
				<a href="">支払方法変更画面へ</a>
			</details>
		
		</div>
		<div class="buttons">
			<a href="javascript:history.back();">メインメニューに戻る</a>
		</div>
	</body>
</html>