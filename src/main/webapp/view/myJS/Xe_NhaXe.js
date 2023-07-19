var vipList = [];
const modal = document.querySelector(".js-modal");
const soDoGhe = document.querySelector(".js-soDoGhe");
const confirmDels = document.querySelectorAll(".js-del-cf");
const modal__closer = document.querySelector(".js-close");
const modal__opener = document.querySelector(".js-addXe");
const xemSoDo = document.getElementById("xemSoDo");
const themXe = document.getElementById("themXe");

function openModal() {
    modal.classList.add("open");
}
function closeModal() {
    modal.classList.remove("open");
    getVipList();
}


function openSoDo() {
    soDoGhe.classList.add("open");
    let titleGhe = document.getElementById("titleGhe");
    let soGhe = document.getElementById("soGhe");
    var hang1 = document.getElementById("hang-1");
    var hang2 = document.getElementById("hang-2");
    hang1.innerHTML = "";
    hang2.innerHTML = "";
    titleGhe.innerHTML = soGhe.value + " Ghế";
    for (let i = 1; i <= Math.round(soGhe.value / 2); i++) {
        let ghe = document.createElement("div");
        hang1.append(ghe);
        ghe.className = "ghe icon-bus col-md-5 btn btn-secondary m-1";
        ghe.id = "" + Math.round(i);
        ghe.innerHTML = ghe.id;
        ghe.setAttribute("onclick", "setGheVip(" + Math.round(i) + ")");
    }
    for (let i = (soGhe.value / 2 + 1); i <= soGhe.value; i++) {
        let ghe = document.createElement("div");
        hang2.append(ghe);
        ghe.className = "ghe icon-bus col-md-5 btn btn-secondary m-1";
        ghe.id = "" + Math.round(i);
        ghe.innerHTML = ghe.id;
        ghe.setAttribute("onclick", "setGheVip(" + Math.round(i) + ")");
    }
}

function setGheVip(id) {
    let vip = false;
    let ghe = document.getElementById(id);
    if (ghe.classList.contains("btn-secondary")) {
        vip = true;
        ghe.className = "ghe icon-bus col-md-5 btn btn-primary m-1";
    } else {
        vip = false;
        ghe.className = "ghe icon-bus col-md-5 btn btn-secondary m-1";
    }
}

function getVipList() {
    let vipList = [];
    let gheList = document.querySelectorAll(".ghe");
    for (let i = 0; i < gheList.length; i++) {
        if (gheList[i].classList.contains("btn-primary")) {
            vipList.push(gheList[i].id);
        }
    }
    let vipList1 = document.getElementById("vipList");
    $("#vipList").val(vipList);
    // vipList1.value(vipList);
}

modal__closer.addEventListener("click", closeModal);
modal__opener.addEventListener("click", openModal);

// --------------- Tắt bật Overlay ------------------------
$(document).ready(function () {
    $(".js-del").click(function () {
        $(".js-del-cf").hide();
        $(".xe-overlay").hide();
    });
    $(".js-cancel").click(function () {
        $(".js-del-cf").hide();
        $(".xe-overlay").hide();
    });
    $(".js-del-cf-btn").click(function () {
        $(".js-del-cf").show();
        $(".xe-overlay").show();
    });
});
xemSoDo.addEventListener("click", function () {
    let isValid = validateSoGhe();
    if (isValid) {
        openSoDo();
    }
});
themXe.addEventListener("click", function () {
    let isValid = validateThemXe();
    if (isValid) {
        closeModal();
    }
});

// ----------------- VALIDATE DỮ LIỆU -------------------

function validateSoGhe() {
    let isCheck = true;
    let soGhe = document.getElementById("soGhe");
    soGhe.classList.remove("alert-danger");
    soGhe.classList.remove("alert-success");
    if (soGhe.value < 1) {
        setError(soGhe, "Số ghế không được âm hoặc bằng 0");
        isCheck = false;
    } else if (soGhe.value > 50) {
        setError(soGhe, "Số ghế không được quá 50");
        isCheck = false;
    } else {
        setSuccess(soGhe);
    }
    return isCheck;
}
function validateThemXe() {
    let isCheck = true;
    let bienSoXe = document.getElementById("bienSoXe");
    let phuThu = document.getElementById("phuThu");
    bienSoXe.classList.remove("alert-danger");
    bienSoXe.classList.remove("alert-success");
    phuThu.classList.remove("alert-danger");
    phuThu.classList.remove("alert-success");
    if (bienSoXe.value === "") {
        setError(bienSoXe, "Biển số xe không được bỏ trống");
        isCheck = false;
    } else if (phuThu.value === "") {
        setError(phuThu, "Phụ thu không được bỏ trống");
        isCheck = false;
    }
    return isCheck;
}


