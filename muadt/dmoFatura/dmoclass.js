class Malzeme{
    constructor(sira, tasinirKod, malzemeAdi, TalepMiktar, aylikTüketim, cinsi, kurum , alim){
        this.sira = sira;
        this.tasinirKod = tasinirKod;
        this.malzemeAdi = malzemeAdi;
        this.TalepMiktar = TalepMiktar;
        this.aylikTüketim = aylikTüketim;
        this.cinsi = cinsi;
        this.kurum = kurum;
        this.alim = alim;
    }
}

class Ekran {
    constructor(){
        this.secilenFile;
        this.input = document.getElementById("input");
        this.buton = document.getElementById("button");
        this.veri = document.getElementById("excelVerisi");

        this.input.addEventListener("change",(e) => this.dosya(e));
        this.buton.addEventListener("click", (e) => this.cevirme(e));

        this.kurum = document.getElementById("kurumAdi");
        this.alim = document.getElementById("alimAdi");
        this.yazdirTamizle = document.getElementById("yazdirTemizle");
        this.dosyaAdi = document.getElementById("dosyaAdi");
        this.uyari = document.getElementById("uyarı");
        document.getElementById("btn-print").addEventListener("click" , (e) =>{
            this.yazdirPrint(e)
        });

        document.getElementById("btnTemizle").addEventListener("click" , (e) =>{
            setTimeout((e) =>{
                this.depo.malzemelerSil();
                this.kurum.textContent = "";
                this.alim.textContent = "";
                this.veri.textContent = "";
                this.gelecek.className = "anaSayfa";
            },200);
        });

        this.gelecek = document.getElementById("anabölüm");
        this.depo = new Depo();

        this.mallarıEkranaYaz();
    }

    yazdirPrint(e){
        window.print()
    }

    mallarıEkranaYaz(){
        this.depo.tumMalzeme.forEach((e,i) => {
            this.ekranYaz(e);
        });
    }

    ekranYaz(eleman) {
        let aylikTuk ;
        if (eleman.aylikTüketim) {
            aylikTuk = eleman.aylikTüketim
        }else{
            aylikTuk = ""
        }

        let tr = document.createElement("tr");
        tr.innerHTML = `
        <td>${eleman.sira}</td>
        <td>${eleman.tasinirKod}</td>
        <td>${eleman.malzemeAdi}</td>
        <td>${eleman.TalepMiktar}</td>
        <td>${aylikTuk}</td>
        <td>${eleman.cinsi}</td>`
        this.veri.appendChild(tr);

        this.kurum.textContent = eleman.kurum;
        this.alim.textContent = eleman.alim;
    }

    dosya(e) {
        this.uyari.className = "uyari";
        if (this.depo.tumMalzeme !== "") {
            this.depo.malzemelerSil();
        }
        this.depo = new Depo();
        this.secilenFile = e.target.files[0];
        this.dosyaAdi.textContent = this.secilenFile.name;

    }

    anasayfaGetir(){
        this.gelecek.className = "getir";
    }

    cevirme(e) {
        
        if (this.secilenFile) {

            let dosyaReader = new FileReader();
            dosyaReader.readAsBinaryString(this.secilenFile);
            dosyaReader.onload = (event) =>{
                let data = event.target.result;
                let workbook = XLSX.read(data,{type:"binary"});
                workbook.SheetNames.forEach(sheet => {
                    let rowObject = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheet]);
                    this.satırlariEkran(rowObject);                
                });
                
            }

        }else{
            this.uyari.classList.add("geldi");
            this.uyari.textContent = "Lütfen Bir Dosya Seçiniz."
            setTimeout(() =>{
                this.uyari.className = "uyari"
            },2000)
        }
        
        this.dosyaAdi.textContent = "DMO Yüklemek için Dosyayı Excel Seçiniz"
        this.input.value = ""
        this.secilenFile = ""
    }
    
    satırlariEkran(rowObject){

        if (rowObject[0]["Alım Adı"] == null) {
            this.uyari.classList.add("geldi");
            this.uyari.textContent = "DMO excel dosyasını yükleyin lütfen"
            setTimeout(() =>{
                this.uyari.className = "uyari"
            },2000)
            
        }else{
            let sirali = rowObject.sort((a,b) => {
                //pozitif negatif veya 0 değerini döndğren yapıdır.
                if(a["Malzeme Tanımı"] < b["Malzeme Tanımı"]){
                return -1;
                }else if(a["Malzeme Tanımı"]> b["Malzeme Tanımı"]){
                return 1;
                }else return 0 ;
            });
    
            let sayma = 0
            sirali.forEach((e,i) =>{
                if (e.TalepMiktar) {
                    sayma++
                    this.malzemeClass = new Malzeme(sayma, 
                        e["MalzemeKodu"] ,  
                        e["Malzeme Tanımı"] , 
                        e["TalepMiktar"] , 
                        e["Malzeme Kodu Aylık Ortalama Tüketim Miktarı"],
                        e["Ölçü Birimi"], 
                        e["Kurum Adi"],
                        e["Alım Adı"] );
    
                    this.anasayfaGetir();
                    this.depo.malzemeKayit(this.malzemeClass);
                    this.ekranYaz(this.malzemeClass);
                }
            });

            this.uyari.classList.add("geldiBasarili");
            this.uyari.textContent = "Dosya Başarılı Bir Şekilde Yüklendi"
            setTimeout(() =>{
                this.uyari.className = "uyari"
            },2000)
    
            setTimeout((e) =>{
                this.kurum.textContent = "";
                this.alim.textContent = "";
                this.veri.textContent = "";
                this.mallarıEkranaYaz();
            },200);
        }
    }
        


}

class Depo {
    constructor(){
        this.tumMalzeme = this.malzemeler();
    }
    
    // local depo adı : mallar
    malzemeler(){
        let mallar ;
        if (localStorage.getItem("mal") === null) {
            mallar = [];
        }else{
            mallar = JSON.parse(localStorage.getItem("mal"));
        }
        return mallar;
    }
    
    malzemeKayit(eleman){
        this.tumMalzeme.push(eleman);
        localStorage.setItem("mal" , JSON.stringify(this.tumMalzeme));
    }
    malzemelerSil(){
        let mal = [];
        localStorage.setItem("mal" , JSON.stringify(mal));
    }
}




document.addEventListener("DOMContentLoaded" , (e) =>  ekran = new Ekran())