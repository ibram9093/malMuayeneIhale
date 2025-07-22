<?php
$aktiv = "muayene2";
@include './partials/header.php';
?>
<?php
$ekle = $db->prepare("SELECT * FROM dt");
$ekle->execute();
$personelcek = $ekle->fetchAll(PDO::FETCH_ASSOC);
?>
<main>

    <div class="bilgigiris">
        <div class="title">
            <h2>Doğrudan Temin Ekle</h2>
        </div>

        <form action="dtislem.php" method="post">
            <div class="bolme">
                <div>
                    <label for="datetar">DT Tarihi</label>
                    <input type="date" name="dttarihi" id="dttarihi" required>
                </div>
                <div>
                    <label for="dtadi">DT adı</label>
                    <input type="text" name="dtadi" id="dtadi" required placeholder="Doğrudan temin adını yazınız">
                </div>
                <div>
                    <label for="dtsahibi">DT Yapan Kişi</label>
                    <input type="text" name="dtsahibi" id="dtsahibi" required placeholder="Doğrudan temin yapan kişi">
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

            <div class="form-group">
                <button type="submit" name="dtekle" class="button">DT Kaydet</button>
            </div>
        </form>
    </div>
</main>

    <div class="contable">
        <h2>Doğrudan Temin Listesi</h2>
        <table>
            <thead>
                <tr>
                    <th>DT Sırası</th>
                    <th>DT Tarihi</th>
                    <th>DT adı</th>
                    <th>DT Yapan Kişi</th>
                    <th>İşlemler</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    rsort($personelcek);
                    foreach ($personelcek as $person) { ?>
                        <tr>
                            <td><?php echo $person['id'] ?></td>
                            <td><?php $date = date_create($person['dttarihi']);
                                echo  date_format($date, "d.m.Y");  ?></td>
                            <td><?php echo $person['dtadi'] ?></td>
                            <td><?php echo $person['dtsahibi'] ?></td>
                            <td><a href="dtduzenle.php?id=<?php echo $person['id'] ?>" data-title="Düzenle" class="btnd aciklama" name="perduzenle"><i class="fa fa-id-card" aria-hidden="true"></i></a></td>
                        </tr>
                <?php } ?>
            </tbody>


        </table>
    </div>




<?php @include './partials/footer.php' ?>