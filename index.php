<?php session_start(); ?>
<!doctype html>
<html lang="tr -TR">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!--  CSS -->
  <link rel="stylesheet" href="./css/login1.css">
  <title>Kullanıcı Giriş</title>
</head>

<body>
  <!--kullanıcı girişi-->

  <div id="login">
    <h2>Kullanıcı Girişi</h2>

    <?php if (isset($_GET['durum'])) : ?>
      <?php if ($_GET['durum'] == "false") : ?>
        <div class="alert-danger">Başarısız giriş</div>
      <?php elseif ($_GET['durum'] == "cikis") : ?>
        <div class="alert-success">Cıkış yaptınız.</div>
      <?php endif ?>
    <?php endif ?>


    <form action="lislem.php" method="post">
      <div class="formlar">
        <img src="./img/user.png" alt="kullanıcı adı">
        <input type="text" id="kadi" name="kadi" <?php if (isset($_COOKIE['user'])) : ?> value="<?php echo $_COOKIE['user']; ?>" <?php else : ?> placeholder="Kullanıcı adını giriniz..." <?php endif ?>>
      </div>
      <div class="formlar">
        <img src="./img/lock.png" alt="Şifreniz">
        <input type="password" id="Password1" name="sifre" placeholder="Şifrenizi giriniz...">
      </div>
      <div class="formlar-check">
        <input type="checkbox" id="Check1" name="hatirla" <?php echo isset($_COOKIE['user']) ? "checked" : "" ?>>
        <label for="Check1">Beni Hatırla</label>
      </div>
      <button type="submit" class="btn" name="giris">Gönder</button>
    </form>
  </div>


  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-U1DAWAznBHeqEIlVSCgzq+c9gqGAJn5c/t99JyeKa9xxaYpSvHU5awsuZVVFIhvj" crossorigin="anonymous">
  </script>

</body>

</html>