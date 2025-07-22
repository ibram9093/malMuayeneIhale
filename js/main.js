
window.addEventListener('load', function() {
  const urlParams = new URLSearchParams(window.location.search);
  if(urlParams.get('durum') === 'ok') {
    // Başarılıysa popup'ı kapat
    document.getElementById('loginPopup').checked = false;
  }
});

String.prototype.turkishToUpper = function(){
	var string = this;
	var letters = { "i": "İ", "ş": "Ş", "ğ": "Ğ", "ü": "Ü", "ö": "Ö", "ç": "Ç", "ı": "I" };
	string = string.replace(/(([iışğüçö]))/g, function(letter){ return letters[letter]; })
	return string.toUpperCase();
}


const arama = document.getElementById('search').addEventListener('keyup' , (e) =>{muayeneArama(e)});

const muayeneArama = (e) =>{
    const input = e.target.value.trim().turkishToUpper();
    const tbody = document.getElementById('tableArama');
    const rows = tbody.getElementsByTagName('tr');

    console.log(input);

    for (let i = 0; i < rows.length; i++) {
        const rowText = rows[i].textContent.trim().turkishToUpper();
        if (rowText.indexOf(input) > -1) {
            rows[i].style.display = '';
        } else {
            rows[i].style.display = 'none';
        }
    }
}

    
    







    const Siralama = (e) => {
        // TALEP SIRALAMA
        const getCellValueInput = (tr) => Array.from(tr.cells[2].children)[0].value;

        const comparerr = (idx, asc) => (a, b) => ((v1, v2) =>
            v1 !== '' && v2 !== '' && !isNaN(v1) && !isNaN(v2) ? v1 - v2 : v1.toString().localeCompare(v2)
        )(getCellValueInput(asc ? a : b, idx), getCellValueInput(asc ? b : a, idx));


        // DİĞER SIRALAMA İÇİN
        const getCellValue = (tr, idx) => tr.children[idx].innerText || tr.children[idx].textContent;

        const comparer = (idx, asc) => (a, b) => ((v1, v2) =>
            v1 !== '' && v2 !== '' && !isNaN(v1) && !isNaN(v2) ? v1 - v2 : v1.toString().localeCompare(v2)
        )(getCellValue(asc ? a : b, idx), getCellValue(asc ? b : a, idx));


        // do the work...
        document.querySelectorAll("th").forEach(th => th.addEventListener("click", () => {
            if (th.textContent == "Talep Edilen") {
                const table = th.closest('table');
                const tbody = table.querySelector('tbody');
                Array.from(tbody.querySelectorAll('tr'))
                    .sort(comparerr(Array.from(th.parentNode.children).indexOf(th), this.asc = !this.asc))
                    .forEach(tr => tbody.appendChild(tr));
            } else {
                const table = th.closest('table');
                const tbody = table.querySelector('tbody');
                Array.from(tbody.querySelectorAll('tr'))
                    .sort(comparer(Array.from(th.parentNode.children).indexOf(th), this.asc = !this.asc))
                    .forEach(tr => tbody.appendChild(tr));
            }
        }))
    }

    Siralama()