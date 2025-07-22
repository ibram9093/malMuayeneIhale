let secilenFile;

const input = document.getElementById("input");
const buton = document.getElementById("button");
const veri = document.getElementById("excelVerisi")


input.addEventListener("change", dosya);
buton.addEventListener("click", cevirme);

function dosya(e) {
    secilenFile = e.target.files[0]
}

function cevirme(e) {
    if (secilenFile) {
        let dosyaReader = new FileReader();
        dosyaReader.readAsBinaryString(secilenFile);
        dosyaReader.onload = (event) =>{
            let data = event.target.result;
            let workbook = XLSX.read(data,{type:"binary"});
            workbook.SheetNames.forEach(sheet => {
                let rowObject = XLSX.utils.sheet_to_row_object_array(workbook.Sheets[sheet]);
                satırlariEkran(rowObject)
                
            });
        }
    }
    input.value = ""
    buton.ariaDisabled;
}

function satırlariEkran(rowObject){
    let sayma = 0
    rowObject.forEach((e,i) =>{
        if (e.TalepMiktar) {
            sayma++
            yazdir(sayma, e["Taşınır Kodu"] ,  e["Malzeme Tanımı"] , e.TalepMiktar , e["Ölçü Birimi"] )
        }

    })
}






function yazdir(sira , kodu , adi, miktar ,cinsi) {
    let tr = document.createElement("tr");
    tr.innerHTML = `
    <td>${sira}</td>
    <td>${kodu}</td>
    <td>${adi}</td>
    <td>${miktar}</td>
    <td>${cinsi}</td>`
    veri.appendChild(tr);
}