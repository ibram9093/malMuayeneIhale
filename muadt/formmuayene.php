<!DOCTYPE html>
<html lang="tr">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title> <?= $_POST['iddd']; ?> nolu Muayene</title>
    <link rel="stylesheet" href="../css/formYazdir.css">

</head>

<body>

    <div id="contant">
        <div id="muaform">
            <div id="topmuayene">
                <h3>T.C.</h3>
                <h3>SAĞLIK BAKANLIĞI</h3>
                <h4>TÜRKİYE KAMU HASTANELERİ KURUMU</h4>
                <h4>Şanlıurfa İl Sağlık Müdürlüğü</h4>
                <h4>Bozova Mehmet-Enver YILDIRIM Devlet Hastanesi</h4>
            </div>
            <div id="formbaslik">
                <h3>Muayene ve Kabul Komisyon Raporu</h3>
            </div>
            <div id="muayeneaciklama">
                <p>
                    Aşağıda hastanemize alınan cins ve miktarı yazılı malzemelerin
                    tarafımızdan kontrol ve muayenesinde evsafına uygun olduğu
                    görüldüğünden iş bu rapor mahallinde tanzim edilmiştir.
                </p>
            </div>


            <div id="faturabi" >
                <table>
                    <tr>
                        <th>Muayene No:</th>
                        <td> <?= $_POST['iddd']; ?></td>
                        <th>Muayene Tarihi:</th>
                        <td><?php  $date = date_create($_POST['datetar']);
                        echo  date_format($date, "d.m.Y");?></td>
                    </tr>
                    <tr>
                        <th>Fatura No:</th>
                        <td><?= $_POST['faturano']; ?> </td>
                        <th>Firma Adı:</th>
                        <td colspan="3"><?= $_POST['firmaadi']; ?> </td>
                    </tr>
                <?php if ($_POST['iknno'] == 0 || $_POST['iknno'] == "") { 
                 } else{ ?>
                    <tr>
                        <th>İKN No:</th>
                        <td> <?= $_POST['iknno']; ?></td>
                        <th>İhale Tarihi:</th>
                        <td><?php $date = date_create($_POST['ihaletari']);
                        echo  date_format($date, "d.m.Y");   ?></td>
                    </tr>
                    <tr>
                        <th>İhale Adı:</th>
                        <td colspan="3"><?= $_POST['ihalead']; ?> </td>
                    </tr>
                <?php } ?>


                </table>
            </div>

            <div id="malzeme">
                <table>
                    <tr>
                        <th style="width: 5em;">SN</th>
                        <th>Malzeme Adı</th>
                        <th>Miktar</th>
                        <th>Birim</th>
                    </tr>

                    <?php 
                        for ($x=1; $x < 14; $x++) { 
                            if (empty($_POST["mal" . $x])) {
                                break;
                            }?>
                            <tr>
                                <td style="width: 5em;"><?= $_POST["sr" . $x]; ?></td>
                                <td><?= $_POST["mal" . $x]; ?></td>
                                <td><?= $_POST["ad" . $x]; ?></td>
                                <td><?= $_POST["ci" . $x]; ?></td>
                            </tr>
                       <?php }
                    ?>

                </table>
            </div>

            <div id="imzalar">
                <div class="uye1">
                    <ul>
                        <li>Komisyon Başkanı</li>
                        <li><?= $_POST['faturasahibi']; ?></li>
                    </ul>
                </div>

                <div class="uye2">
                    <ul>
                        <li>Üye</li>
                        <li><?= $_POST['faturasahibi1']; ?></li>
                    </ul>
                </div>

                <div class="uye3">
                    <ul>
                        <li>Üye</li>
                        <li><?= $_POST['faturasahibi2']; ?></li>
                    </ul>
                </div>
            </div>

            <div id="idare">
                <ul>
                    <li>Uygundur.</li>
                    <li><?php 
                        $date = date_create($_POST['datetar']);
                        echo  date_format($date, "d.m.Y");
                    ?></li>
                    <li>Uzm.Dr.Mehmet Fatih AKSOY</li>
                    <li>Başhekim</li>
                </ul>

            </div>
        </div>
    </div>
</body>

<script>
    let x =  window.print();

    
</script>

</html>