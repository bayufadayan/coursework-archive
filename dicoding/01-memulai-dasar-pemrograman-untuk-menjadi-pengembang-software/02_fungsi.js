function onlyGreating(someone){
    console.log("Haii", someone);
}

onlyGreating("bayy");

function manggil(pacar){
    console.log(pacar + " sayang, udah makan?");
}

manggil("saki");


function manggilLagi(kondisi, name = "saki"){
    console.log("Selamat ", kondisi + ", Apa kabar", name);
}

manggilLagi('malam');
manggilLagi('sore', 'syaa');