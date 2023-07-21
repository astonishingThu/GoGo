const ttcts = document.querySelectorAll(".ttct");
const ttLoTrinhs = document.querySelectorAll(".ttLoTrinh");
const soDoGhes = document.querySelectorAll(".soDoGhe");
const nhapThongTins = document.querySelectorAll(".nhapThongTin");
const tiepTheo = document.getElementById("tiepTheo");
function handleThanhToan (idKhachHang){
    const thanhToanBtn = document.getElementById("thanhToan-Btn");
    if (idKhachHang == null){
        alert("Vui lòng đăng ký để thực hiện thanh toán");
        thanhToanBtn.setAttribute("type", "button");
    } else {
        thanhToanBtn.setAttribute("type", "submit");
    }
}
// Vé đang chọn
let listVe = [];
let soTien = 0;

// Kết thúc đặt chỗ
function reset(idLoTrinh) {
    listVe = null;
    soTien = 0;
}

// Bắt đầu đặt chỗ, Hiển thị sơ đồ ghế
function openSoDo(idLoTrinh, listTrongStr, giaLoTrinh) {
    // Chuyển String thành mảng trong mảng
    console.log(listTrongStr);
    let listTrong = listTrongStr.split(",");
       for (i = 0; i < listTrong.length; i++){
        listTrong[i] = {
            idGhe: listTrong[i].split(":")[0],
            giaGhe: listTrong[i].split(":")[1]
        }
    }
    closeTTCT();
    closeTtLoTrinh();

    tiepTheo.parentNode.querySelector("small").innerText = "";

    // Tạo sơ đồ với ghế đã đặt
    let soDoGhe = document.getElementById("soDoGhe" + idLoTrinh);
    soDoGhe.classList.add("open");
    // console.log(array);
    var hang1 = document.getElementById("hang-1"+idLoTrinh);
    var hang2 = document.getElementById("hang-2"+idLoTrinh);
    hang1.innerHTML = "";
    hang2.innerHTML = "";
    let soGhe = document.getElementById("soGhe" + idLoTrinh);
    let titleGhe = document.getElementById("titleGhe"+ idLoTrinh);
    titleGhe.innerHTML = soGhe.innerText + " Ghế";
    for (let i = 1; i <= Math.round(Number(soGhe.innerText) / 2); i++) {
        let ghe = document.createElement("div");
        hang1.append(ghe);
        ghe.className = "ghe icon-bus col-md-5 btn m-1 choosed";
        ghe.id = idLoTrinh + Math.round(i);
        ghe.innerHTML = " " + Math.round(i);
        ghe.setAttribute("onclick", "disable");
    }
    for (let i = (Number(soGhe.innerText) / 2 + 1); i <= Number(soGhe.innerText); i++) {
        let ghe = document.createElement("div");
        hang2.append(ghe);
        ghe.className = "ghe icon-bus col-md-5 btn m-1 choosed";
        ghe.id = idLoTrinh + Math.round(i);
        ghe.innerHTML = " " + Math.round(i);
        ghe.setAttribute("onclick", "disable");
    }
    // Đổ màu ghế trống
    for (let gheTrong of listTrong){
        let ghe = document.getElementById(idLoTrinh + gheTrong.idGhe);
        ghe.className = "ghe icon-bus col-md-5 btn m-1 empty";
        ghe.setAttribute("onclick", "datGhe('" + idLoTrinh + "','" + gheTrong.idGhe + "','" + gheTrong.giaGhe + "','" + giaLoTrinh + "')");
    }

    // Đổ màu ghế chọn
    for (let idGheChon of listVe) {
        let ghe = document.getElementById(idLoTrinh + idGheChon);
        ghe.className = "ghe icon-bus col-md-5 btn m-1 choosing";
    }

}

// Chọn ghế trống
function datGhe(idLoTrinh, idGhe, giaGhe, giaLoTrinh) {
    let ghe = document.getElementById(idLoTrinh + idGhe);
    if (ghe.classList.contains("empty")) {
        setSoVe("add", idLoTrinh, idGhe, giaGhe, giaLoTrinh);
        ghe.className = "ghe icon-bus col-md-5 btn m-1 choosing";
        ghe.setAttribute("target", "dadatve");

    } else {
        setSoVe("remove", idLoTrinh, idGhe, giaGhe, giaLoTrinh);
        ghe.className = "ghe icon-bus col-md-5 btn m-1 empty";
        ghe.removeAttribute("target");
    }
}


// Cập nhật danh sách và số lượng vé đặt
function setSoVe(action, idLoTrinh, idGhe, giaGhe, giaLoTrinh) {
    let soVeEle = document.getElementById("soVe".concat(idLoTrinh));
    let listVeEle = document.getElementById("listVe".concat(idLoTrinh));
    let soTienEle = document.getElementById("soTien".concat(idLoTrinh));
    let giaVe = Number(giaLoTrinh) + Number(giaGhe);
    switch (action) {
        case "add":
            soTien = soTien + giaVe;
            listVe.push(idGhe);
            listVeEle.innerText = listVe.toString()
            document.getElementById("listVeXe" +idLoTrinh).value = listVe.toString();
            soVeEle.innerText = listVe.length.toString();
            soTienEle.innerText = soTien.toString();
            break;
        case "remove":
            listVe = listVe.filter(function (item) {
                return item != idGhe;
            });
            soTien = soTien - giaVe;
            document.getElementById("listVeXe" +idLoTrinh).value = listVe.toString();
            listVeEle.innerText = listVe.toString();
            soVeEle.innerText = listVe.length.toString();
            soTienEle.innerText = soTien.toString();
            break;
    }
}

function openTTCT(idLoTrinh) {
    closeSoDoGhe();
    let ttct = document.getElementById("ttct" + idLoTrinh);
    ttct.classList.add("open");
    document.getElementById("hinhanh"+idLoTrinh).classList.add("open");
}

function openTtLoTrinh(idLoTrinh) {
    let ttLoTrinh = document.getElementById("ttLoTrinh" + idLoTrinh);
    closeNhapThongTin();
    ttLoTrinh.classList.add("open");
}

function chonLoTrinh(idLoTrinh) {
    let isValid = validateGhe();
    if (isValid) {
        closeSoDoGhe();
        openTtLoTrinh(idLoTrinh);
    }
}

function openNhapThongTin(idLoTrinh) {
    let nhapThongTin = document.getElementById("nhapThongTin" + idLoTrinh);
    nhapThongTin.classList.add("open");
}


function closeSoDoGhe() {
    for (let soDoGhe of soDoGhes) {
        soDoGhe.classList.remove("open");
    }
}

function closeTTCT() {
    for (let ttct of ttcts) {
        ttct.classList.remove("open");
    }
}

function closeTtLoTrinh() {
    for (let ttLoTrinh of ttLoTrinhs) {
        ttLoTrinh.classList.remove("open");
    }
}

function nhapThongTin(idLoTrinh) {
    closeTtLoTrinh();
    openNhapThongTin(idLoTrinh);
}

function closeNhapThongTin() {
    for (let nhapThongTin of nhapThongTins) {
        nhapThongTin.classList.remove("open");
    }
}

// Hiển thị thông tin chuyến xe: Hình ảnh, Tiện ích, Điểm đón trả, Chính sách, Đánh giá
function hienthi(field,idLoTrinh) {
    allFields = document.querySelectorAll(".field");
    for (let one of allFields) {
        one.classList.remove("open");
    }
    switch (field) {
        case "hinhanh":
            document.getElementById("hinhanh"+idLoTrinh).classList.add("open");
            break;
        case "tienich":
            document.getElementById("tienich"+idLoTrinh).classList.add("open");
            break;
        case "diemdontra":
            document.getElementById("diemdontra"+idLoTrinh).classList.add("open");
            break;
        case "danhgia":
            document.getElementById("danhgia"+idLoTrinh).classList.add("open");
            break;
        default:
            ttct.classList.remove("open");
            break;
    }
}

function validateGhe() {
    let isCheck = true;
    let listGhe = document.querySelectorAll(".ghe[target]");
    if (listGhe.length === 0) {
        isCheck = false;
        tiepTheo.parentNode.querySelector("small").innerText = "Bạn chưa chọn ghế";
    }
    return isCheck;
}

function openTtLoTrinh(idLoTrinh) {
    let ttLoTrinh = document.getElementById("ttLoTrinh" + idLoTrinh);
    closeNhapThongTin();
    ttLoTrinh.classList.add("open");
}

function closeTtLoTrinh() {
    for (let ttLoTrinh of ttLoTrinhs) {
        ttLoTrinh.classList.remove("open");
    }
}

function openNhapThongTin(idLoTrinh) {
    let nhapThongTin = document.getElementById("nhapThongTin" + idLoTrinh);
    nhapThongTin.classList.add("open");
}

function closeNhapThongTin() {
    for (let nhapThongTin of nhapThongTins) {
        nhapThongTin.classList.remove("open");
    }
}

function chonLoTrinh(idLoTrinh) {
    closeSoDoGhe();
    openTtLoTrinh(idLoTrinh);
}

function nhapThongTin(idLoTrinh) {
    closeTtLoTrinh();
    openNhapThongTin(idLoTrinh)
}

