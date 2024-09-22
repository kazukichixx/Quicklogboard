<?php
require 'sessions/session_manager.php'; // セッション管理をチェック
checkSession();
require 'includes/db.php'; // DB接続ファイルのインクルード

if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_FILES['file'])) {
    // ファイルの拡張子を確認
    $fileExt = pathinfo($_FILES['file']['name'], PATHINFO_EXTENSION);
    if (strtolower($fileExt) !== 'csv') {
        die("無効なファイル形式です。CSVファイルをアップロードしてください。<a href='dashboard.php'>戻る</a>");
    }

    // ファイルを開いて内容をプレビュー
    $file = fopen($_FILES['file']['tmp_name'], 'r');
    $previewData = []; // プレビュー用のデータ配列

    while (($data = fgetcsv($file)) !== FALSE) {
        $previewData[] = $data; // プレビュー用のデータを保持
    }
    fclose($file);
    
    // プレビューを表示
    echo "<h2>ファイル内容のプレビュー</h2>";
    echo "<table border='1'>";
    echo "<tr><th>UserID</th><th>Timestamp</th><th>Action</th></tr>"; // ヘッダー

    foreach ($previewData as $row) {
        echo "<tr>";
        foreach ($row as $cell) {
            echo "<td>" . htmlspecialchars($cell, ENT_QUOTES, 'UTF-8') . "</td>"; // 各セルを表示
        }
        echo "</tr>";
    }
    echo "</table>";

    // データ保存ボタンを表示
    echo '<form method="post" action="save_upload.php">'; // 保存を行うための新しい処理
    echo "<input type='hidden' name='previewData' value='" . htmlspecialchars(serialize($previewData), ENT_QUOTES, 'UTF-8') . "'>";
    echo "<button type='submit'>このデータを保存する</button>";
    echo "</form>";

    echo "<a href='dashboard.php'>戻る</a>";
    exit(); // このリクエストを終了
}
?>
