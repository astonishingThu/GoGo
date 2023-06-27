const ttct = document.querySelector(".ttct");
const soDoGhe = document.querySelector(".js-soDoGhe");
const ttLoTrinh = document.getElementById("ttLoTrinh");
const tagNhapThongTin = document.getElementById("nhapThongTin");
function openTTCT() {
    soDoGhe.classList.remove("open");
    ttct.classList.add("open");
    document.getElementById("hinhanh").classList.add("open");
}
function closeTTCT() {
    ttct.classList.remove("open");
}
function hienthi(field){
    console.log(field.toString());
    allFields = document.querySelectorAll(".field");
    for (let one of allFields){
        one.classList.remove("open");
    }
    switch (field){
        case "hinhanh":
            document.getElementById("hinhanh").classList.add("open");
            break;
        case "tienich":
            document.getElementById("tienich").classList.add("open");
            break;
        case "diemdontra":
            document.getElementById("diemdontra").classList.add("open");
            break;
        case "chinhsach":
            document.getElementById("chinhsach").classList.add("open");
            break;
        case "danhgia":
            document.getElementById("danhgia").classList.add("open");
            break;
        default:
            ttct.classList.remove("open");
            break;
    }
}

//Nhập id ghế vip và số ghế mới viết được cái này
function openSoDo() {
    closeTTCT();
    closeTtLoTrinh();
    soDoGhe.classList.add("open");
    let titleGhe = document.getElementById("titleGhe");
    let soGhe = document.getElementById("soGhe");
    var hang1 = document.getElementById("hang-1");
    var hang2 = document.getElementById("hang-2");
    // console.log(soGhe.toString());
    hang1.innerHTML = "";
    hang2.innerHTML = "";
    titleGhe.innerHTML = soGhe.innerText + " Ghế";
    for (let i = 1; i <= Math.round(Number(soGhe.innerText) / 2); i++) {
        let ghe = document.createElement("div");
        hang1.append(ghe);
        ghe.className = "ghe icon-bus col-md-5 btn m-1 empty";
        ghe.id = "" + Math.round(i);
        ghe.innerHTML = " "+ ghe.id;
        ghe.setAttribute("onclick", "datGhe(" + Math.round(i) + ")");
    }
    for (let i = (Number(soGhe.innerText) / 2 + 1); i <= Number(soGhe.innerText); i++) {
        let ghe = document.createElement("div");
        hang2.append(ghe);
        ghe.className = "ghe icon-bus col-md-5 btn m-1 empty";
        ghe.id = "" + Math.round(i);
        ghe.innerHTML = " "+ ghe.id;
        ghe.setAttribute("onclick", "datGhe(" + Math.round(i) + ")");
    }
}
function closeSoDoGhe() {
    soDoGhe.classList.remove("open");
}

//Chọn ghế vip
function datGhe(id) {
    let book = false;
    let ghe = document.getElementById(id);
    if (ghe.classList.contains("empty")) {
        book = true;
        ghe.className = "ghe icon-bus col-md-5 btn m-1 choosing";
    } else {
        book = false;
        ghe.className = "ghe icon-bus col-md-5 btn m-1 empty";
    }
}

function openTtLoTrinh(){
    closeNhapThongTin();
    ttLoTrinh.classList.add("open");
}
function closeTtLoTrinh(){
    ttLoTrinh.classList.remove("open");
}
function openNhapThongTin(){
    tagNhapThongTin.classList.add("open");
}
function closeNhapThongTin(){
    tagNhapThongTin.classList.remove("open");
}

function chonLoTrinh(){
    closeSoDoGhe();
    openTtLoTrinh();
}

function nhapThongTin(){
    closeTtLoTrinh();
    openNhapThongTin();
}