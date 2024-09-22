<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ユーザー登録とログイン</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="container">
        <h2>ユーザー登録</h2>
        <form id="registrationForm" method="post" action="user_registration.php">
            <label for="username">ユーザー名:</label>
            <input type="text" id="username" name="username" required>

            <label for="email">メールアドレス:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">パスワード:</label>
            <input type="password" id="password" name="password" required>

            <button type="submit">登録</button>
        </form>

        <h2>ログイン</h2>
        <form id="loginForm" method="post" action="login.php">
            <label for="username">ユーザー名:</label>
            <input type="text" name="username" required>

            <label for="password">パスワード:</label>
            <input type="password" name="password" required>

            <button type="submit">ログイン</button>
        </form>
    </div>
</body>
</html>