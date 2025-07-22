<?php @include './partials/header.php';?>

<?php
$ekle = $db->prepare("SELECT * FROM ihaleler where id=:id");
$ekle->execute(array('id' => $_GET['id']));
$personelcek = $ekle->fetch(PDO::FETCH_ASSOC);
?>


<main>
    <div class="bilgigiris">
        <div class="title">
            <h2>İhale Düzenle</h2>
        </div>
        
        <form action="ihaleislem.php" method="post">
            <div class="bolme" style="display:flex; width:100%">
                <div>
                    <label for="ikn">İKN</label>
                    <input type="text" name="ikn" id="ikn" value="<?= $personelcek['iknno']; ?>" required>
                </div>
                <div>
                    <label for="ihalead">İhale Adı</label>
                    <input type="text" name="ihalead" id="ihalead" value="<?= $personelcek['ihalead']; ?>" required>
                </div>
                <div>
                    <label for="ihaletari">İhale Tarihi</label>
                    <input type="date" name="ihaletari" id="ihaletari" value="<?= $personelcek['ihaletari']; ?>"  required>
                </div>
            </div>



            <?php
            if (!empty($_GET['durum'])) {

                if ($_GET['durum'] == "ok") { ?>
                    <div class="alertbasarılı">kayıt başarı ile eklendi.</div>
                <?php
                } elseif ($_GET['durum'] == "no") { ?>
                    <div class="alertuyarı">boş alan bırakılamaz</div>
                <?php
                } elseif ($_GET['durum'] == "bos") { ?>
                    <div class="alerttehlikeli">veri tabanı hatası</div>
            <?php }
            }
            ?>

            <input type="hidden" name="id" value="<?= $personelcek['id']; ?>">

            <button type="submit" name="ihaleDuzenle" class="button">İhale Düzenle</button>
        </form>
    </div>
</main>