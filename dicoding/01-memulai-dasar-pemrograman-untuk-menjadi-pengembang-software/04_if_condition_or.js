let belanja = 100000;
let memberCard = "Bronze";

if (belanja >= 75000 || memberCard == 'Platinum') {
    belanja -= 25000;
    console.log("Anda dapat potongan!");
} else{
    console.log('Belum dapet potongan');
}

console.log(belanja);