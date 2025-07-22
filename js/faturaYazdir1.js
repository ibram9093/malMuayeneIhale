const yazdir = document.getElementById("faturaYaz");
const table = document.querySelectorAll(".teslimCheckbox");
const yazilacakKısım =  document.getElementById("teslim");
const tarihYazili = document.getElementById("tarih")
const miktar = document.getElementById("miktar")


yazdir.addEventListener("click" , (e) =>{
    e.preventDefault();
    let yazilacak = []
    yazilacak = tiklanan();
    if(yazilacak.length !== 0){
        yazilacak.forEach((e) =>{
            yaziliHtml(e)
        });
        tarihMiktar(yazilacak.length);
        print();
        yazilacakKısım.textContent = ""
    }else{
        alert("Lütfen Teslim edilecek Bir Fatura Seçiniz")
    }

})

function yaziliHtml(eleman) {
    const tr = document.createElement("tr");
    tr.innerHTML = `
    <tr>
        <td>${eleman.muayeneNo}</td>
        <td>${eleman.muayeneTarihi}</td>
        <td>${eleman.FirmaAdi}</td>
        <td>${eleman.faturaNo}</td>
    </tr>`
    yazilacakKısım.appendChild(tr)

    
}

function tiklanan() {
    const yazil = []
    table.forEach((e) =>{
        if(e.checked){
            let muayeneNo = e.parentElement.parentElement.cells[1].textContent;
            let muayeneTarihi = e.parentElement.parentElement.cells[2].textContent;
            let FirmaAdi = e.parentElement.parentElement.cells[3].textContent;
            let faturaNo = e.parentElement.parentElement.cells[4].textContent;

            
            yazil.push({
                muayeneNo : muayeneNo ,
                muayeneTarihi :muayeneTarihi,
                FirmaAdi:FirmaAdi,
                faturaNo:faturaNo
            })
        }
    });
    return yazil;
}

function tarihMiktar(elemanSayısy) {
    let tarih = new Date();
        tarihYazili.innerHTML = 
        `Tarih : ${tarih.toLocaleDateString()}`;

        miktar.textContent = `Fatura Sayısı : ${elemanSayısy}`;
    
}

// ${tarih.getDate()}.${tarih.getMonth() +1}.${tarih.getFullYear()}