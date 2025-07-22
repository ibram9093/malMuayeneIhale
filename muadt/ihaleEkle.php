<link rel="stylesheet" href="../css/main.css">
<?php
$iknno = $_GET['iknno'] ?? ''; // URL'de iknno varsa al, yoksa boş bıra?>

<main>
    <div class="bilgigiris">
        <div class="title">
            <h2>Muayene Kısmına Girilen <?php echo $iknno ?> İKN NO Bilgilerini giriniz. Lütfen</h2>
        </div>
        
        <form action="ihaleislem.php" method="post">
            <div class="bolme" style="display:flex; width:100%">
                <div>
                    <label for="ikn">İKN</label>
                    <input type="text" name="ikn" id="ikn" value="<?php echo htmlspecialchars($iknno); ?>" placeholder="İhale Kayıt no giriniz" required>
                </div>
                <div>
                    <label for="ihalead">İhale Adı</label>
                    <input type="text" name="ihalead" id="ihalead" placeholder="İhale adı yazınız." required>
                </div>
                <div>
                    <label for="ihaletari">İhale Tarihi</label>
                    <input type="date" name="ihaletari" id="ihaletari" placeholder="İhale tarihini yazınız." required>
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

            <button type="submit" name="MuaFalseihaleekle" class="button">İhale Kaydet</button>
        </form>
    </div>
</main>