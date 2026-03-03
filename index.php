<?php
// Logique Backend : Création du forum
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $forumName = htmlspecialchars($_POST['name']);
    $hasPass = isset($_POST['use_pass']) ? "Oui" : "Non";
    
    // Simulation de génération de lien
    $token = bin2hex(random_bytes(5));
    $finalLink = "https://med-forum-auth.trycloudflare.com/view?id=" . $token;

    echo "<div style='background: #00ff00; color: black; padding: 10px; text-align: center;'>";
    echo "<h3>✅ Forum '$forumName' créé !</h3>";
    echo "<p>Lien International : <a href='#'>$finalLink</a></p>";
    echo "</div>";
}
?>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Med-Forum | Creator</title>
    <style>
        body { background-color: #0a0a0a; color: #00ff00; font-family: 'Courier New', monospace; display: flex; justify-content: center; align-items: center; height: 100vh; margin: 0; }
        .container { border: 2px solid #00ff00; padding: 20px; box-shadow: 0 0 15px #00ff00; width: 90%; max-width: 400px; }
        h1 { text-align: center; font-size: 1.5rem; text-transform: uppercase; }
        input[type="text"], input[type="password"] { width: 100%; padding: 10px; margin: 10px 0; background: #111; border: 1px solid #00ff00; color: #00ff00; box-sizing: border-box; }
        button { width: 100%; padding: 12px; background: #00ff00; color: black; border: none; font-weight: bold; cursor: pointer; text-transform: uppercase; }
        button:hover { background: #00cc00; }
    </style>
</head>
<body>
    <div class="container">
        <h1>-- Med-Forum --</h1>
        <form method="POST">
            <label>Nom du Forum :</label>
            <input type="text" name="name" placeholder="Ex: Clan-Hacker" required>
            
            <label>Lien Image (Logo) :</label>
            <input type="text" name="image" placeholder="https://image.com/logo.png">
            
            <label><input type="checkbox" name="use_pass"> Activer Mot de Passe ?</label>
            <input type="password" name="password" placeholder="Mot de passe si activé">
            
            <button type="submit">Générer le lien International</button>
        </form>
    </div>
</body>
</html>

