document.getElementById('registrationForm').addEventListener('submit', function(event) {
    event.preventDefault(); // フォーム送信を防ぐ

    const username = document.getElementById('username').value.trim();
    const email = document.getElementById('email').value.trim();
    const password = document.getElementById('password').value.trim();

    // 基本的な検証
    if (!username || !email || !password) {
        alert('すべてのフィールドを入力してください。');
        return;
    }

    // メール形式の検証
    const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailPattern.test(email)) {
        alert('有効なメールアドレスを入力してください。');
        return;
    }

    // フォームをサーバーへ送信
    this.submit();
});