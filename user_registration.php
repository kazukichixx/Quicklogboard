<?php
require 'includes/db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $username = trim($_POST['username']);
    $email = trim($_POST['email']);
    $password = $_POST['password'];

    $pdo = getDbConnection();

    if (empty($username) || empty($email) || empty($password)) {
        die("すべてのフィールドを入力してください。");
    }

    $passwordHash = password_hash($password, PASSWORD_BCRYPT);

    try {
        $sql = "INSERT INTO Users (Username, PasswordHash, Email, CreatedDate) VALUES (:username, :passwordHash, :email, NOW())";
        $stmt = $pdo->prepare($sql);
        $stmt->bindValue(':username', $username, PDO::PARAM_STR);
        $stmt->bindValue(':passwordHash', $passwordHash, PDO::PARAM_STR);
        $stmt->bindValue(':email', $email, PDO::PARAM_STR);
        $stmt->execute();
        echo "登録が完了しました。";
    } catch (PDOException $e) {
        exit('SQL Error:' . $e->getMessage());
    }
}
?>