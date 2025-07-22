<?php include 'baglan.php' ?>
<?php session_start(); ?>
<!DOCTYPE html>
<html lang="tr-TR">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css" integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w==" crossorigin="anonymous" referrerpolicy="no-referrer" />


    <link rel="stylesheet" href="../css/main.css">

    <title>
        <?php if ($aktiv == "muayene1") { echo "Bozova DH | Muayene Listesi";} ?>
        <?php if ($aktiv == "muayene2") { echo "Bozova DH | DT listesi";} ?>
        <?php if ($aktiv == "muayene3") { echo "Bozova DH | İhale Listesi";} ?>
        <?php if ($aktiv == "muayeneForm") { echo  "Muayene Form Oluşturma";} ?>
    </title>
</head>

<body>

    <nav id="top-navb">
        <ul>
            <li>
                <a href="muayene.php">Menü</a>
            </li>
            <li>
                <a class="<?php if ($aktiv == "muayene1") {
                                echo "active";
                            } ?>" href="muayene.php">Muayene Listesi</a>
            </li>
            <li>
                <a class="<?php if ($aktiv == "muayene2") {
                                echo "active";
                            } ?>" href="dtlist.php">DT Listesi</a>
            </li>

            <li>
                <a class="<?php if ($aktiv == "muayene3") {
                                echo "active";
                            } ?>" href="ihale.php">İhale Listesi</a>
            </li>
            
            <div>
                <?php if (isset($_SESSION['kadi'])) { ?>
                    <a href="/lcikis.php" class="btn">Çıkış</a>
                <?php } ?>
            </div>
        </ul>

    </nav>