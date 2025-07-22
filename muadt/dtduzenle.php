<?php @include './partials/header.php';?>

<?php
$ekle = $db->prepare("SELECT * FROM dt where id=:id");
$ekle->execute(array('id' => $_GET['id']));
$personelcek = $ekle->fetch(PDO::FETCH_ASSOC);
?>


<main>
    
<div class="bilgigiris">
                    <div class="title">
                    <h2>Doğrudan Temin Düzenle</h2>
                </div>
    
    <form action="dtislem.php" method="post">
        <div class="bolme">
            <div>
                <label for="dttarihi">DT Tarihi</label>
                <input type="date" id="dttarihi" class="form-control" name="dttarihi" value="<?= $personelcek['dttarihi']; ?>">
            </div>
            <div>
                <label for="dtadi">DT adı</label>
                <input type="text" name="dtadi" value="<?= $personelcek['dtadi']; ?>" id="dtadi" class="form-control">
            </div>
            <div>
                <label for="dtsahibi">DT Yapan Kişi</label>
                <input type="text" name="dtsahibi" value="<?= $personelcek['dtsahibi']; ?>" id="dtsahibi" class="form-control">
            </div>
        </div>
        <input type="hidden" name="dtid" value="<?= $personelcek['id']; ?>">
        <div>
            <button type="submit" name="dtduzen" class="button">Doğrudan Temin Düzenle</button>
        </div>
    </form>

</div>

</main>




<?php @include './partials/footer.php' ?>