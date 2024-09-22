<?php
require 'sessions/session_manager.php'; // セッション管理をチェック
checkSession();
require 'includes/db.php'; // DB接続ファイル

// フィルタリング用の変数を取得
$startDate = $_GET['start_date'] ?? '';
$endDate = $_GET['end_date'] ?? '';
$userID = $_GET['user_id'] ?? $_SESSION['UserID']; // 現在のユーザーIDをデフォルトに

$pdo = getDbConnection();

// SQLクエリでアクションのカウントを取得
$sql = "SELECT Action, COUNT(*) as count FROM LoginAttempts 
        WHERE UserID = :userID";

if (!empty($startDate) && !empty($endDate)) {
    $sql .= " AND Timestamp BETWEEN :startDate AND :endDate";
}

$sql .= " GROUP BY Action";

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':userID', $userID, PDO::PARAM_STR);

if (!empty($startDate) && !empty($endDate)) {
    $stmt->bindValue(':startDate', $startDate, PDO::PARAM_STR);
    $stmt->bindValue(':endDate', $endDate, PDO::PARAM_STR);
}

$stmt->execute();
$actions = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>アクショングラフ表示</title>
    <link rel="stylesheet" href="css/styles.css">
    <script src="js/chart.min.js"></script>
</head>
<body>
    <div class="container">
        <h2>アクションのグラフ表示</h2>
        
        <!-- フィルターフォーム -->
        <form method="get" action="action_graph.php">
            <input type="date" name="start_date" value="<?php echo htmlspecialchars($startDate); ?>">
            <input type="date" name="end_date" value="<?php echo htmlspecialchars($endDate); ?>">
            <input type="hidden" name="user_id" value="<?php echo htmlspecialchars($userID); ?>">
            <button type="submit">フィルター</button>
        </form>
        
        <canvas id="actionChart"></canvas>
        <script src="js/action_graph.js"></script>
    </div>
</body>
</html>
