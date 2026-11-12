<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>おつかい便</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- おつかい便専用CSS -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/css/style.css">
</head>

<body>

    <!-- ヘッダー -->
    <header class="site-header">

        <div class="container">

            <!-- ロゴとユーザー情報 -->
            <div class="header-top">

                <!-- 左側：ロゴとキャラクター -->
                <a href="#" class="site-logo">
                    <img src="${pageContext.request.contextPath}/images/character.png"
                         alt="おつかい便キャラクター"
                         class="site-character">

                    <span>おつかい便</span>
                </a>

                <!-- 右側：ユーザー名 -->
                <div class="user-info">
                    <span>username</span>
                </div>

            </div>

        </div>

    </header>

    <!-- メインコンテンツ -->
    <main class="main-container">
        <!-- ここに各画面の内容を配置予定 -->
    </main>

    <!-- フッター -->
    <footer class="site-footer">
        <p>© 2026 おつかい便 All Rights Reserved.</p>
    </footer>

    <!-- Bootstrap JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
