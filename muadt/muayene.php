<?php
$aktiv = "muayene1";
@include './partials/header.php';
?>
<main>

    <div class="popupContainer">
        <label for="loginPopup" class="button">Muayene ekle</label>
        <button id = "faturaYaz" class="button">Seçili Faturaları Yazdır</button>
        <label for="search">ARA: </label>
        <input type="text" autocomplete="off" placeholder="ARA..." name="search" id="search">
        <input type="checkbox" id="loginPopup">
        <div class="popup">
            <label for="loginPopup"></label>
            <div class="inner">
                <div class="title">
                    <h2>Muayene Ekle</h2>
                    <label for="loginPopup">X</label>
                </div>
                <div class="content">

                        <div class="bilgigiris">

                            <form action="islem.php" method="post">
                                <div class="bolme">
                                    <div>
                                        <label for="datetar">Muayene Tarihi</label>
                                        <input type="date" name="datetar" id="datetar" placeholder="muayene tarihi giriniz" required>
                                    </div>
                                    <div>
                                        <label for="firmaadi">Firma adı</label>
                                        <input type="text" name="firmaadi" id="firmaadi" placeholder="Firma adı yazınız." required>
                                    </div>
                                    <div>
                                        <label for="faturano">Fatura No</label>
                                        <input type="text" name="faturano" id="faturano" placeholder="Fatura no yazınız." required>
                                    </div>
                                    <div>
                                        <label for="iknno">İKN No</label>
                                        <input type="text" name="iknno" id="iknno" 
                                               pattern="\d{4}/\d+" 
                                               placeholder="2025/123193" >
                                        <small>Format: YIL/NUMARA (örn: 2025/123193)</small>
                                        <span class="uyari">
                                            İhale kayıt numarası doğrudan temin ve sağlık market alımlarında boş bırakılabilir. İKN sı EKAP ile girilenler kabul edilir.
                                        </span>
                                    </div>
                                </div>
                                <div class="bolme">
                                    <div>
                                        <label for="faturasahibi">Muayene Yapan 1</label>
                                        <input type="text" name="faturasahibi" id="faturasahibi" required placeholder="Muayene Yapanı yazınız.">
                                    </div>
                                    <div>
                                        <label for="faturasahibi1">Muayene Yapan 2</label>
                                        <input type="text" name="faturasahibi1" id="faturasahibi1" required placeholder="Muayene Yapanı yazınız.">
                                    </div>
                                    <div>
                                        <label for="faturasahibi2">Muayene Yapan 3</label>
                                        <input type="text" name="faturasahibi2" id="faturasahibi2" required placeholder="Muayene Yapanı yazınız.">
                                    </div>
                                    <div>
                                        
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

                                <button type="submit" name="personelekle" class="button">Muayene Kaydet</button>
                            
                            </form>
                        </div>
                    
                </div>
            </div>
        </div>
    </div>



    <?php
    $ekle = $db->prepare("SELECT * FROM muayene");
    $ekle->execute();
    $personelcek = $ekle->fetchAll(PDO::FETCH_ASSOC);
    ?>




    <div class="contable">
        <h2>Muayene Listesi</h2>
        <table>
            <thead>
                <tr>
                    <th>Teslim Edilecek</th>
                    <th>Muayene No <i class="fa-solid fa-sort"></i></th>
                    <th>Muayene Tarihi <i class="fa-solid fa-sort"></i></th>
                    <th>Firma adı <i class="fa-solid fa-sort"></i></th>
                    <th>fatura No <i class="fa-solid fa-sort"></i></th>
                    <th>İKN No <i class="fa-solid fa-sort"></i></th>

                    <th>Muayene Yapan 1 <i class="fa-solid fa-sort"></i></th>
                    <th>Muayene Yapan 2 <i class="fa-solid fa-sort"></i></th>
                    <th>Muayene Yapan 3 <i class="fa-solid fa-sort"></i></th>
                    <th colspan="2">İşlemler</th>
                </tr>
            </thead>


            <tbody id="tableArama">
                                <?php
                rsort($personelcek);
                foreach ($personelcek as $person) { ?>
                    <tr>
                        <td><input type="checkbox" class="teslimCheckbox" name="teslimCheckbox" id=""></td>
                        <td><?php echo $person['id'] ?></td>
                        <td><?php $date = date_create($person['muayenetarihi']);
                            echo  date_format($date, "d.m.Y"); ?></td>
                        <td><?php echo $person['firmaadi'] ?></td>
                        <td><?php echo $person['faturano'] ?></td>
                        <td><?php echo $person['iknno'] ?></td>
                        <td><?php echo $person['faturasahibi'] ?></td>
                        <td><?php echo $person['faturasahibi1'] ?></td>
                        <td><?php echo $person['faturasahibi2'] ?></td>
                        <td><a data-title="Düzenle" href="duzenle.php?id=<?php echo $person['id'] ?>" class="btnd aciklama" name="perduzenle"><i class="far fa-edit"></i></a></td>
                        <td><a data-title="Form Oluştur" href="form.php?id=<?php echo $person['id'] ?>" class="btnd aciklama" name="perduzenle"><i class="fa fa-id-card" aria-hidden="true"></i></a></td>
                    </tr>
                <?php } ?>
            </tbody>


        </table>
    </div>


</main>


<div id="yazdir">

    <div id="baslik">
        <img src="../img/logo.PNG" class="imgBaslik" alt="bakanlık loğusu">
        <div>
            <h3>Bozova Mehmet-Enver YILDIRIM Devlet Hastanesi</h3> <hr>
            <h3>Satınalma Birimine Teslim Edilen Faturalar</h4>
        </div>

    </div>

    <table class="deneme">
        <thead  >
            <th>muayene no</th>
            <th>muayene tarihi</th>
            <th>firma adi</th>
            <th>fatura no</th>
        </thead>

        <tbody id="teslim" >

        </tbody>

    </table>

    <div id="zaman">
        <div id="tarih"></div>
        <div id="miktar"></div>
    </div>

    <div id="teslimat">
        <div>Teslim Eden</div>
        <div>Teslim Alan</div>
    </div>




</div>








<?php @include './partials/footer.php' ?>