<?php @include './partials/header.php'; ?>

<?php
$ekle = $db->prepare("SELECT * FROM muayene where id=:id");
$ekle->execute(array('id' => $_GET['id']));
$personelcek = $ekle->fetch(PDO::FETCH_ASSOC);
?>

<main>
    <div class="bilgigiris">
    <h2>Muayene Düzenle</h2>
    <form action="islem.php" method="post">
        <div class="bolme">
            <div>
                <label for="datetar">Muayene Tarihi</label>
                <input type="date" id="datetar" class="form-control" name="datetar" value="<?= $personelcek['muayenetarihi']; ?>">
            </div>
            <div>
                <label for="firmaadi">Firma adı</label>
                <input type="text" name="firmaadi" value="<?= $personelcek['firmaadi']; ?>" id="firmaadi" class="form-control">
            </div>
            <div>
                <label for="faturano">Fatura No</label>
                <input type="text" name="faturano" value="<?= $personelcek['faturano']; ?>" id="faturano" class="form-control">
            </div>
            <div>
                <label for="iknno">İKN No</label>
                <input type="text" name="iknno" id="iknno" 
                       pattern="\d{4}/\d+" 
                       placeholder="2025/123193">
                <small>Format: YIL/NUMARA (örn: 2025/123193)</small>
                <span class="uyari">
                    İhale kayıt numarası doğrudan temin ve sağlık market alımlarında boş bırakılabilir. İKN sı EKAP ile girilenler kabul edilir.
                </span>
            </div>
        </div>
        <div class="bolme">
            <div>
                <label for="faturasahibi">Muayene Yapan 1</label>
                <input type="text" name="faturasahibi" value="<?= $personelcek['faturasahibi']; ?>" id="faturasahibi" class="form-control">
            </div>
            <div>
                <label for="faturasahibi1">Muayene Yapan 2</label>
                <input type="text" name="faturasahibi1" value="<?= $personelcek['faturasahibi1']; ?>" id="faturasahibi1" class="form-control">
            </div>
            <div>
                <label for="faturasahibi2">Muayene Yapan 3</label>
                <input type="text" name="faturasahibi2" value="<?= $personelcek['faturasahibi2']; ?>" id="faturasahibi2" class="form-control">
            </div>
        </div>
        <input type="hidden" name="iddd" value="<?= $personelcek['id']; ?>">
        <div class="form-group">

            <button type="submit" name="perduzen" class="button">Muayene Düzenle</button>
        </div>
    </form>
</div>



</main>










<?php @include './partials/footer.php' ?>