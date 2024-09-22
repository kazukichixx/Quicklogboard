<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ダッシュボード</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <?php require 'sessions/session_manager.php'; checkSession(); ?>
    <div class="container">
        <h2>ようこそ、<?php echo htmlspecialchars($_SESSION['Username'], ENT_QUOTES, 'UTF-8'); ?>さん</h2>
        
        <h3>ファイルアップロード</h3>
        <form method="post" action="upload.php" enctype="multipart/form-data">
            <label for="file">CSVファイルを選択:</label>
            <input type="file" name="file" id="file" accept=".csv" required>
            <button type="submit">アップロード</button>
        </form>
        
        <p><a href="logout.php">ログアウト</a></p>
    </div>
</body>
</html>