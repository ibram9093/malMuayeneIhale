class Fatura {
    constructor(faturaNo , faturaAd , faturaTutar){
        this.faturaNo = faturaNo;
        this.faturaAd = faturaAd;
        this.faturaTutar = faturaTutar
    }
}

class Util {
    static boslukKontrol(fatura){
        let sonuc = true 
        if(fatura.faturaNo == "" || fatura.faturaAd == "" || fatura.faturaTutar == ""){
            sonuc = false 
        }
        return sonuc
    }
}

class Ekran {
    constructor(){
        this.giris = document.getElementById("girisler");
        this.FaturaNo = document.getElementById("FaturaNo");
        this.FaturaAdi = document.getElementById("FaturaAdi");
        this.FaturaTutarı = document.getElementById("FaturaTutarı");
        this.inputtutar = document.getElementById("inputTutari")

        this.FaturaTutarı.addEventListener( "keyup" , (e) =>{
            if(this.FaturaTutarı.value == ""){
                this.inputtutar.textContent = ""
            }

            if(e.key == "," ){
                this.FaturaTutarı.value = this.FaturaTutarı.value.replace("," ,".")
            }
            let tutar = this.FaturaTutarı.value
            const f = new Intl.NumberFormat("tr-TR" ,{
                currency :"TRY",
                style : "currency",
                maximumFractionDigits : 2
            });

            if(this.formKontrol(tutar)){
                this.inputtutar.textContent = f.format(tutar);
            }
        })







        this.bilgi = document.querySelector(".bilgi");
        this.faturaListesi = document.getElementById("veriGirisi");

        document.getElementById("yazdırTemizle").addEventListener("click" , (e) =>{this.yazdirtamizleme(e)})

        this.kaydetGuncel =document.getElementById("kaydetGuncelle");

        this.faturalarBilgi = document.getElementById("faturalarBilgisi")
        
        this.kaydetGuncel.addEventListener("click" , (e) => this.kaydetGuncelle(e));
        this.faturaListesi.addEventListener("click" , (e) => this.duzenleSil(e))
        this.depo = new Depo();
        this.faturaEkranaYaz();
        this.secilen = undefined;

    }

    alanlarıTemizle(){
        this.FaturaNo.value = ""
        this.FaturaAdi.value = ""
        this.FaturaTutarı.value = ""
    }

    yazdirtamizleme(e){
        if(e.target.classList.contains("btn--delete")){
            if (confirm("Bütün Faturaları silmek istediğinize Eminmisiz!")) {
                this.depo.faturaTemizle();
                this.faturaListesi.innerHTML =""
                this.bilgiVer(true,"Tüm faturalar silindi.")
            }
        }
        if (e.target.classList.contains("btn--edit")) {
            this.yazilacakEleman();

        }
    }

    yazilacakEleman(){
        let faturaSay = this.depo.tumFatura
        let faturaToplam = 0;
        faturaSay.forEach((e) =>{
            faturaToplam = parseFloat(e.faturaTutar.replace(",",".")) + faturaToplam
        });

        let tarih = new Date();
        this.faturalarBilgi.innerHTML = `
        Tarih : ${tarih.getDate()}.${tarih.getMonth() +1}.${tarih.getFullYear()} 
        &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        &nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        Toplam Tutar : ${faturaToplam.toFixed(2)} TL <br> 
        Teslim Edilen fatura sayısı :  ${faturaSay.length} 
        `
        print();
    }

    duzenleSil(e){
        this.secilen = e.target.parentElement.parentElement
        if(e.target.classList.contains("btn--delete")){
            if (confirm(`${this.secilen.cells[0].textContent.trim()} nolu faturayı silme istediğinize eminmisiniz!`)) {
                this.depo.faturaSil(this.secilen.cells[0].textContent);
                this.secilen.remove();
                this.bilgiVer(true, "fatura Silindi.")
                this.secilen = undefined;
            }
        }
        if(e.target.classList.contains("btn--edit")){
            let faturatut = this.secilen.cells[2].textContent.trim();
            let ind = this.secilen.cells[2].textContent.trim().indexOf("TL")

            this.FaturaNo.value = this.secilen.cells[0].textContent.trim();
            this.FaturaAdi.value = this.secilen.cells[1].textContent.trim();
            this.FaturaTutarı.value = faturatut.slice(0 , ind)
            this.kaydetGuncel.textContent = "Güncelle";
        }
    }

    faturaEkranaYaz(){
        this.depo.tumFatura.forEach(e => {
            this.ekranYaz(e)
        });
    }

    ekranYaz(fatura){
        const tr = document.createElement("tr");
        tr.innerHTML = `
        <td>${fatura.faturaNo}</td>
        <td>${fatura.faturaAd}</td>
        <td>${fatura.faturaTutar} TL</td>
        <td class="flex">
            <button class="btn btn--edit"><i class="far fa-edit"></i></button>
            <button class="btn btn--delete"><i class="far fa-trash-alt"></i> </button>
        </td>`
        this.faturaListesi.appendChild(tr)
    }

    formKontrol(veri){
        let uzunluk=veri.length;
        let sonkarakter=veri[uzunluk-1];
        if(sonkarakter>='0' && sonkarakter<='9'){
            return true
        }
        else{
            return false
        }
    }

    kaydetGuncelle(e){
        e.preventDefault();




        this.fatura = new Fatura(this.FaturaNo.value.trim() , this.FaturaAdi.value.trim() , this.FaturaTutarı.value.trim().replace(",","."));
        const boslukKontrol = Util.boslukKontrol(this.fatura);

        let faturaTutarKontrol = this.formKontrol(this.fatura.faturaTutar);


        if(boslukKontrol && faturaTutarKontrol){
            if(this.secilen){
                let eskiFatura = this.secilen.cells[0].textContent.trim();
                const sonyc = this.depo.guncelle(eskiFatura , this.fatura);
                if(sonyc){
                    this.secilen.cells[0].textContent = this.fatura.faturaNo;
                    this.secilen.cells[1].textContent = this.fatura.faturaAd;
                    this.secilen.cells[2].textContent = this.fatura.faturaTutar;
                    this.kaydetGuncel.textContent = "kaydet";
                    this.secilen = undefined;
                    this.bilgiVer(true , "Fatura bilgisi Güncellendi");
                    this.alanlarıTemizle();
                }else{
                    this.bilgiVer(false , "Girdiğiniz fatura no kullanımda")
                }

            }else{
                const sonuc = this.depo.faturaEkle(this.fatura);
                if(sonuc){
                    this.ekranYaz(this.fatura);
                    this.bilgiVer(true , "Fatura kaydı başarılı");
                    this.alanlarıTemizle();
                }else{
                    this.bilgiVer(false , "Fatura No Kullanımda");
                }
                
            }
        }else if(!faturaTutarKontrol){
            this.bilgiVer(false , "Fatura Tutarını metin giremezsiniz.");

        }else{
            this.bilgiVer(false , "Boş Alan Bırakmayalım.");
        }
        this.FaturaNo.focus();
    }

    bilgiVer(sonuc,mesaj){
        this.bilgi.textContent = mesaj;
        if(sonuc){
            this.bilgi.classList.add("bilgi--succes");
        }else{
            this.bilgi.classList.add("bilgi--error");
        }
        setTimeout(() =>{
            this.bilgi.className = "bilgi"
        },2000)
    }
}

class Depo {
    constructor(){
        this.tumFatura = this.FatralarıGetir()
    }

    numaraEssizmi(faturanumarası){
        const sonuc = this.tumFatura.find(e=>{
            return e.faturaNo === faturanumarası;
        });

        if(sonuc){
            return false
        }else{
            return true
        }
    }

    // localstorage faturalar
    FatralarıGetir(){
        let tumfaturalar ;
        if (localStorage.getItem("faturalar") === null) {
            tumfaturalar = [];
        }else{
            tumfaturalar = JSON.parse(localStorage.getItem("faturalar"));
        }
        return tumfaturalar;
    }

    faturaEkle(fatura){
        if(this.numaraEssizmi(fatura.faturaNo)){
            this.tumFatura.push(fatura);
            localStorage.setItem("faturalar" , JSON.stringify(this.tumFatura));
            return true;
        }
        else{
            return false;
        }
    }

    faturaSil(silinecekFaturaNo){
        this.tumFatura.forEach((e,i) =>{
            if(e.faturaNo === silinecekFaturaNo){
                this.tumFatura.splice(i , 1)
            }
        });
        localStorage.setItem("faturalar" , JSON.stringify(this.tumFatura));
    }

    faturaTemizle(){
        this.tumFatura = [];
        localStorage.setItem("faturalar" , JSON.stringify(this.tumFatura));
    }
    
    guncelle(eski , yeni){
        if(yeni.faturaNo === eski){
            this.tumFatura.forEach((e,i) =>{
                if(eski == e.faturaNo){
                    this.tumFatura[i] = yeni;
                }
            });
            localStorage.setItem("faturalar" , JSON.stringify(this.tumFatura));
            return true;
        }

        if(this.numaraEssizmi(yeni.faturaNo)){
            this.tumFatura.forEach((e,i) =>{
                if(eski == e.faturaNo){
                    this.tumFatura[i] = yeni;
                }
            });
            localStorage.setItem("faturalar" , JSON.stringify(this.tumFatura));
            return true;

        }else{
            return false;
        }



    }
}

document.addEventListener("DOMContentLoaded",  () => {const ekran = new Ekran();})