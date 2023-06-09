var vipList = [];
const modal = document.querySelector(".js-modal");
const soDoGhe = document.querySelector(".js-soDoGhe");
const confirmDels = document.querySelectorAll(".js-del-cf");
const modal__closer = document.querySelector(".js-close");
const modal__opener = document.querySelector(".js-addXe");

function closeModal() {
    modal.classList.remove("open");
    getVipList();
}

function openModal() {
    modal.classList.add("open");
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
    vipList1.setAttribute("value", vipList);
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
