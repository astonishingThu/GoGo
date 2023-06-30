const ttcts = document.querySelectorAll(".ttct");
const ttLoTrinhs = document.querySelectorAll(".ttLoTrinh");
const soDoGhes = document.querySelectorAll(".soDoGhe");
const nhapThongTins = document.querySelectorAll(".nhapThongTin");

// Vé đang chọn
let listVe = [];
// Kết thúc đặt chỗ
function reset(idLoTrinh){
    listVe = null;
}

// Bắt đầu đặt chỗ, Hiển thị sơ đồ ghế
function openSoDo(idLoTrinh, listTrong) {
    closeTTCT();
    closeTtLoTrinh();
    let soDoGhe = document.getElementById("soDoGhe"+idLoTrinh);
    soDoGhe.classList.add("open");
    let titleGhe = document.getElementById("titleGhe");
    let soGhe = document.getElementById("soGhe");
    var hang1 = document.getElementById("hang-1");
    var hang2 = document.getElementById("hang-2");
    // console.log(soGhe.toString());
    hang1.innerHTML = "";
    hang2.innerHTML = "";
    let soGhe = document.getElementById("soGhe");
    let titleGhe = document.getElementById("titleGhe");
    titleGhe.innerHTML = soGhe.innerText + " Ghế";
    for (let i = 1; i <= Math.round(Number(soGhe.innerText) / 2); i++) {
        let ghe = document.createElement("div");
        hang1.append(ghe);
        ghe.className = "ghe icon-bus col-md-5 btn m-1 choosed";
        ghe.id = idLoTrinh + Math.round(i);
        ghe.innerHTML = " "+ Math.round(i);
        ghe.setAttribute("onclick", "datGhe('"+ idLoTrinh.toString() + "'," + Math.round(i) + ")");
    }
    for (let i = (Number(soGhe.innerText) / 2 + 1); i <= Number(soGhe.innerText); i++) {
        let ghe = document.createElement("div");
        hang2.append(ghe);
        ghe.className = "ghe icon-bus col-md-5 btn m-1 choosed";
        ghe.id = idLoTrinh + Math.round(i);
        ghe.innerHTML = " "+ Math.round(i);
        ghe.setAttribute("onclick", "datGhe('"+ idLoTrinh.toString() + "'," + Math.round(i) + ")");
    }
    for (let idGheChon of listVe){
        let ghe = document.getElementById(idLoTrinh.concat(idGheChon.toString()));
        ghe.className = "ghe icon-bus col-md-5 btn m-1 choosing";
    }
    // for (let idGheTrong of listTrong){
    //     let ghe = document.getElementById(idLoTrinh.concat(idGheTrong.toString()));
    //     ghe.className = "ghe icon-bus col-md-5 btn m-1 empty";
    // }
    console.log(listTrong);
}

// Chọn ghế trống
function datGhe(idLoTrinh, idGhe) {
    let book = false;
    let ghe = document.getElementById(idLoTrinh.concat(idGhe.toString()));
    if (ghe.classList.contains("empty")) {
        book = true;
        setSoVe("add",idLoTrinh, idGhe);
        ghe.className = "ghe icon-bus col-md-5 btn m-1 choosing";
    } else {
        book = false;
        setSoVe("remove",idLoTrinh, idGhe);
        ghe.className = "ghe icon-bus col-md-5 btn m-1 empty";
        ghe.id = "" + Math.round(i);
        ghe.innerHTML = " "+ ghe.id;
        ghe.setAttribute("onclick", "datGhe(" + Math.round(i) + ")");
    }
}

// Cập nhật danh sách và số lượng vé đặt
function setSoVe(action,idLoTrinh, idGhe ){
    let soVeEle = document.getElementById("soVe".concat(idLoTrinh));
    let listVeEle = document.getElementById("listVe".concat(idLoTrinh));

    switch (action){
        case "add":
            listVe.push(idGhe);
            listVeEle.innerText = listVe.toString();
            soVeEle.innerText = listVe.length.toString();
            // listVeContent.concat(","+idGhe);
            break;
        case "remove":
            listVe = listVe.filter(function (item){
                return item != idGhe;
            });
            listVeEle.innerText = listVe.toString();
            soVeEle.innerText = listVe.length.toString();
            // listVeContent.remove(","+idGhe);
            break;
    }
}

function openTTCT(idLoTrinh) {
    closeSoDoGhe();
    let ttct = document.getElementById("ttct" + idLoTrinh);
    ttct.classList.add("open");
    document.getElementById("hinhanh").classList.add("open");
}

function openTtLoTrinh(idLoTrinh){
    let ttLoTrinh = document.getElementById("ttLoTrinh" + idLoTrinh);
    closeNhapThongTin();
    ttLoTrinh.classList.add("open");
}

function chonLoTrinh(idLoTrinh){
    closeSoDoGhe();
    openTtLoTrinh(idLoTrinh);
}

function openNhapThongTin(idLoTrinh){
    let nhapThongTin = document.getElementById("nhapThongTin" + idLoTrinh);
    nhapThongTin.classList.add("open");
}


function closeSoDoGhe() {
    for (let soDoGhe of soDoGhes){
        soDoGhe.classList.remove("open");
    }
}

function closeTTCT() {
    for (let ttct of ttcts){
        ttct.classList.remove("open");
    }
}

function closeTtLoTrinh(){
    for (let ttLoTrinh of ttLoTrinhs){
        ttLoTrinh.classList.remove("open");
    }
}

function nhapThongTin(idLoTrinh){
    closeTtLoTrinh();
    openNhapThongTin(idLoTrinh);
}

function closeNhapThongTin(){
    for (let nhapThongTin of nhapThongTins){
        nhapThongTin.classList.remove("open");
    }
}

// Hiển thị thông tin chuyến xe: Hình ảnh, Tiện ích, Điểm đón trả, Chính sách, Đánh giá
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


//Chọn ghế mua
function datGhe(idGhe) {
    let book = false;
    let ghe = document.getElementById(idGhe);
    if (ghe.classList.contains("empty")) {
        book = true;
        ghe.className = "ghe icon-bus col-md-5 btn m-1 choosing";
        ghe.setAttribute("target", "dadatve");
    } else {
        book = false;
        ghe.className = "ghe icon-bus col-md-5 btn m-1 empty";
        ghe.removeAttribute("target");
    }
}

function validateGhe() {
    let isCheck = true;
    let listGhe = document.querySelectorAll(".ghe[target]");
    if (listGhe.length === 0) {
        isCheck = false;
        tiepTheo.parentNode.querySelector("small").innerText = "Bạn chưa chọn ghế";
    } return isCheck;
}

function openTtLoTrinh(idLoTrinh){
    let ttLoTrinh = document.getElementById("ttLoTrinh" + idLoTrinh);
    closeNhapThongTin();
    ttLoTrinh.classList.add("open");
}
function closeTtLoTrinh(){
    for (let ttLoTrinh of ttLoTrinhs){
        ttLoTrinh.classList.remove("open");
    }
}
function openNhapThongTin(idLoTrinh){
    let nhapThongTin = document.getElementById("nhapThongTin" + idLoTrinh);
    nhapThongTin.classList.add("open");
}
function closeNhapThongTin(){
    for (let nhapThongTin of nhapThongTins){
        nhapThongTin.classList.remove("open");
    }
}

function chonLoTrinh(idLoTrinh){
    closeSoDoGhe();
    openTtLoTrinh(idLoTrinh);
}

function nhapThongTin(idLoTrinh){
    closeTtLoTrinh();
    openNhapThongTin(idLoTrinh);
}

