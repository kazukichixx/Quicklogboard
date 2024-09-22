<?php
require 'sessions/session_manager.php';
checkSession();

require 'includes/db.php';

// データベース接続
$pdo = getDbConnection();

// クエリを準備して実行
$sql = "SELECT u.FileName, u.UploadDate, us.Username 
        FROM UploadHistory u 
        INNER JOIN Users us ON u.UserID = us.UserID 
        WHERE us.UserID = :userID
        ORDER BY u.UploadDate DESC";

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':userID', $_SESSION['UserID'], PDO::PARAM_INT);
$stmt->execute();

// 結果を取得
$uploads = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ファイル履歴</title>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <div class="container">
        <h2><?php echo htmlspecialchars($_SESSION['Username'], ENT_QUOTES, 'UTF-8'); ?> さんのアップロード履歴</h2>
        <table>
            <thead>
                <tr>
                    <th>ファイル名</th>
                    <th>アップロード日時</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($uploads as $upload): ?>
                <tr>
                    <td><?php echo htmlspecialchars($upload['FileName'], ENT_QUOTES, 'UTF-8'); ?></td>
                    <td><?php echo htmlspecialchars($upload['UploadDate'], ENT_QUOTES, 'UTF-8'); ?></td>
                </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
        <p><a href="dashboard.php">ダッシュボードに戻る</a></p>
    </div>
</body>
</html>
