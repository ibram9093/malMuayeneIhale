

<?php
$aktiv = "muayeneForm";
@include './partials/header.php';
?>

<?php
$ekle = $db->prepare("SELECT * FROM muayene where id=:id");
$ekle->execute(array('id' => $_GET['id']));
$personelcek = $ekle->fetch(PDO::FETCH_ASSOC);
?>


<?php
$ekle = $db->prepare("SELECT * FROM ihaleler where iknno=:iknno");
$ekle->execute(array('iknno' => $personelcek['iknno']));
$ihalecek = $ekle->fetch(PDO::FETCH_ASSOC);
?>



<div class="bilgigiris" >
    <h2>Muayene Formu</h2>
    <form action="formmuayene.php" method="post" target="_blank">
        <div>
            <div class="form1">
                <label for="muayeneno">Muayene No</label>
                <input type="text" name="iddd" id="muayene no " value="<?= $personelcek['id']; ?>" readonly>
            </div>

            <input type="hidden" id="datetar" class="form-control" name="datetar" value="<?= $personelcek['muayenetarihi']; ?>" readonly>
            <input type="hidden" name="firmaadi" value="<?= $personelcek['firmaadi']; ?>" id="firmaadi" readonly>
            <input type="hidden" name="faturano" value="<?= $personelcek['faturano']; ?>" id="faturano" readonly>
            <input type="hidden" name=" faturasahibi" value="<?= $personelcek['faturasahibi']; ?>" id="faturasahibi" readonly>
            <input type="hidden" name="faturasahibi1" value="<?= $personelcek['faturasahibi1']; ?>" id="faturasahibi1" readonly>
            <input type="hidden" name="faturasahibi2" value="<?= $personelcek['faturasahibi2']; ?>" id="faturasahibi2" readonly>
            <input type="hidden" name="faturasahibi2" value="<?= $personelcek['faturasahibi2']; ?>" id="faturasahibi2">
            <input type="hidden" name="iknno" value="<?= $personelcek['iknno']; ?>" id="iknno">
            <input type="hidden" name="ihalead" value="<?= $ihalecek['ihalead']; ?>" id="ihalead">
            <input type="hidden" name="ihaletari" value="<?= $ihalecek['ihaletari']; ?>" id="ihaletari">
        </div>

        <div id="malzemegiris">
            <table class="malzeme-tablosu">
               <thead>
                   <tr>
                       <th>SN</th>
                       <th>Malzeme Adı</th>
                       <th>Miktar</th>
                       <th>Birim</th>
                   </tr>
               </thead>
                <tbody id="malzemeBody">
                    <tr>
                        <td><input type="number" name="sr1" required value="1"></td>
                        <td><input type="text" name="mal1" required></td>
                        <td><input type="number" name="ad1" required></td>
                        <td><input type="text" name="ci1" value="Adet" required></td>
                    </tr>
                    <tr>
                        <td><input type="number" name="sr2" value="2"></td>
                        <td style="width: 40em;"><input type="text" name="mal2"></td>
                        <td><input type="number" name="ad2"></td>
                        <td><input type="text" name="ci2" value="Adet"></td>
                    </tr>
                    <tr>
                        <td><input type="number" name="sr3" value="3"></td>
                        <td style="width: 40em;"><input type="text" name="mal3"></td>
                        <td><input type="number" name="ad3"></td>
                        <td><input type="text" name="ci3" value="Adet"></td>
                    </tr>
                    <tr>
                        <td><input type="number" name="sr4" value="4"></td>
                        <td style="width: 40em;"><input type="text" name="mal4"></td>
                        <td><input type="number" name="ad4"></td>
                        <td><input type="text" name="ci4" value="Adet"></td>
                    </tr>
                    <tr>
                        <td><input type="number" name="sr5" value="5"></td>
                        <td style="width: 40em;"><input type="text" name="mal5"></td>
                        <td><input type="number" name="ad5"></td>
                        <td><input type="text" name="ci5" value="Adet"></td>
                    </tr>
                    <tr>
                        <td><input type="number" name="sr6" value="6"></td>
                        <td style="width: 40em;"><input type="text" name="mal6"></td>
                        <td><input type="number" name="ad6"></td>
                        <td><input type="text" name="ci6" value="Adet"></td>
                    </tr>
                    <tr>
                        <td><input type="number" name="sr7" value="7"></td>
                        <td style="width: 40em;"><input type="text" name="mal7"></td>
                        <td><input type="number" name="ad7"></td>
                        <td><input type="text" name="ci7" value="Adet"></td>
                    </tr>
                    <tr>
                        <td><input type="number" name="sr8" value="8"></td>
                        <td style="width: 40em;"><input type="text" name="mal8"></td>
                        <td><input type="number" name="ad8"></td>
                        <td><input type="text" name="ci8" value="Adet"></td>
                    </tr>
                    <tr>
                        <td><input type="number" name="sr9" value="9"></td>
                        <td style="width: 40em;"><input type="text" name="mal9"></td>
                        <td><input type="number" name="ad9"></td>
                        <td><input type="text" name="ci9" value="Adet"></td>
                    </tr>
                    <tr>
                        <td><input type="number" name="sr10" value="10"></td>
                        <td style="width: 40em;"><input type="text" name="mal10"></td>
                        <td><input type="number" name="ad10"></td>
                        <td><input type="text" name="ci10" value="Adet"></td>
                    </tr>
                    <tr>
                        <td><input type="number" name="sr11" value="11"></td>
                        <td style="width: 40em;"><input type="text" name="mal11"></td>
                        <td><input type="number" name="ad11"></td>
                        <td><input type="text" name="ci11" value="Adet"></td>
                    </tr>
                    <tr>
                        <td><input type="number" name="sr12" value="12"></td>
                        <td style="width: 40em;"><input type="text" name="mal12"></td>
                        <td><input type="number" name="ad12"></td>
                        <td><input type="text" name="ci12" value="Adet"></td>
                    </tr>
                    <tr>
                        <td><input type="number" name="sr13" value="13"></td>
                        <td style="width: 40em;"><input type="text" name="mal13"></td>
                        <td><input type="number" name="ad13"></td>
                        <td><input type="text" name="ci13" value="Adet"></td>
                    </tr>
                </tbody>

            </table>
            <div class="form-group">
                <button type="submit" name="perduzen" class="button">Form Düzenle</button>
            </div>
        </div>


    </form>




</div>














<?php @include './partials/footer.php' ?>