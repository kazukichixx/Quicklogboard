<?php
require 'sessions/session_manager.php'; // セッション管理をチェック
checkSession();
require 'includes/db.php'; // DB接続ファイルのインクルード

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['previewData'])) {
    $validData = unserialize(htmlspecialchars_decode($_POST['previewData'])); // プレビューで表示したデータを復元
    
    // 有効なデータを保存
    $pdo = getDbConnection();
    $sql = "INSERT INTO LoginAttempts (UserID, Timestamp, Action) VALUES (:userID, :timestamp, :action)";
    $stmt = $pdo->prepare($sql);

    try {
        foreach ($validData as $entry) {
            if (validateData($entry)) { // バリデーション
                $stmt->bindValue(':userID', $entry[0], PDO::PARAM_STR);
                $stmt->bindValue(':timestamp', $entry[1], PDO::PARAM_STR);
                $stmt->bindValue(':action', $entry[2], PDO::PARAM_STR);
                $stmt->execute(); // データ挿入
            } else {
                echo "エラー: 有効なデータではありません。データ: " . htmlspecialchars(implode(', ', $entry), ENT_QUOTES, 'UTF-8') . "<br>";
            }
        }
        
        echo "データの保存が完了しました。<a href='dashboard.php'>戻る</a>";
    } catch (PDOException $e) {
        die("SQL Error: " . $e->getMessage());
    }
} else {
    die("無効なリクエストです。<a href='dashboard.php'>戻る</a>");
}

function validateData($data) {
    $validActions = ['Login', 'Failed Login Attempt', 'Logout'];
    $userIdPattern = '/^user[0-9]{3}$/';

    if (count($data) < 3) {
        return false; // データが不足している場合
    }

    if (preg_match($userIdPattern, $data[0]) &&
        validateTimestamp($data[1]) &&
        in_array($data[2], $validActions)) {
        return true;
    }

    return false;
}

function validateTimestamp($timestamp) {
    $date = DateTime::createFromFormat('Y-m-d H:i:s', $timestamp);
    return $date && $date->format('Y-m-d H:i:s') === $timestamp; // 正しい形式か確認
}
?>
