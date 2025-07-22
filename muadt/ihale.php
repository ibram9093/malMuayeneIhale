<?php
$aktiv = "muayene3";
@include './partials/header.php';
?>


<main>
    <div class="bilgigiris">
        <div class="title">
            <h2>İhale Ekle</h2>
        </div>
        
        <form action="ihaleislem.php" method="post">
            <div class="bolme" style="display:flex; width:100%">
                <div>
                    <label for="ikn">İKN</label>
                    <input type="text" name="ikn" id="ikn" placeholder="İhale Kayıt no giriniz" required>
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

            <button type="submit" name="ihaleekle" class="button">İhale Kaydet</button>
        </form>
    </div>
</main>


    <?php
    $ekle = $db->prepare("SELECT * FROM ihaleler");
    $ekle->execute();
    $personelcek = $ekle->fetchAll(PDO::FETCH_ASSOC);
    ?>


    <div class="contable">
        <h2>İhale Listesi</h2>
        <table>
            <thead>
                <tr>
                    <th>ID</th>
                    <th>İKN</th>
                    <th>İhale Adı</th>
                    <th>İhale tarihi</th>
                    <th>İşlemler</th>
                </tr>
            </thead>

            <tbody>
                <?php
                    rsort($personelcek);
                    foreach ($personelcek as $person) { ?>
                        <tr>
                            <td><?php echo $person['id'] ?></td>
                            <td><?php echo $person['iknno'] ?></td>
                            <td><?php echo $person['ihalead'] ?></td>
                            <td><?php $date = date_create($person['ihaletari']);
                                echo  date_format($date, "d.m.Y");?></td>
                            <td><a href="ihaleDuzenle.php?id=<?php echo $person['id'] ?>" class="btnd aciklama" data-title="Düzenle" name="perduzenle"><i class="fa fa-id-card" aria-hidden="true"></i></a></td>
                        </tr>
                <?php } ?>
            </tbody>

        </table>
    </div>




<?php @include './partials/footer.php' ?>
