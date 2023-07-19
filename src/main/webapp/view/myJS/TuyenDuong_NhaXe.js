const ngayBatDau = document.getElementById("ngayBatDau");
const ngayKetThuc = document.getElementById("ngayKetThuc");
const today = new Date().toLocaleDateString('fr-CA');
const themTuyenSubmit = document.getElementById("themTuyenSubmit");
ngayKetThuc.min = today;
ngayBatDau.min = today;
themTuyenSubmit.addEventListener("click", function () {
    let isValid = validateTuyenDuong();
    if (isValid) {
        closeModal();
    }
});
function openModal(){
    const modal = document.querySelector(".js-modal");
    modal.classList.add("open");
}
function closeModal(){
    const modal = document.querySelector(".js-modal");
    modal.classList.remove("open");
}

function getThu(){
    let days = document.querySelectorAll(".choice");
    let lap = [];
    for (let day of days){
        if (day.checked){
            console.log(day.value)
            switch (day.value){
                case "CN":
                    lap.push(0);
                    break;
                case "T2":
                    lap.push(1);
                    break;
                case "T3":
                    lap.push(2);
                    break;
                case "T4":
                    lap.push(3);
                    break;
                case "T5":
                    lap.push(4);
                    break;
                case "T6":
                    lap.push(5);
                    break;
                case "T7":
                    lap.push(6);
                    break;
            }
        }
    }
    return lap;
}
function getNgay(){
    var lap = getThu();
    let stngaybd = document.getElementById("ngayBatDau").value;
    let stngaykt = document.getElementById("ngayKetThuc").value;
    let ngaybd = new Date(stngaybd);
    let ngaykt = new Date(stngaykt);
    var ngayChay = [];
    while (ngaybd <= ngaykt) {
        if (lap.includes(ngaybd.getDay())){
            console.log(ngaybd.toLocaleDateString());
            ngayChay.push(ngaybd.toLocaleDateString());
        }
        ngaybd.setDate(ngaybd.getDate()+1);
    }
    $("#ngayList").val(ngayChay);
    return ngayChay;
}
function validateTuyenDuong() {
    let diemDon = document.getElementById("diemDon");
    let diemTra = document.getElementById("diemTra");
    let gioKhoiHanh = document.getElementById("gioKhoiHanh");
    let thoiGianDiChuyen = document.getElementById("thoiGianDiChuyen");
    let giaVe = document.getElementById("giaVe");
    let isCheck = true;
    if (diemDon.value === "") {
        setError(diemDon, "Điểm đón không được bỏ trống");
        isCheck = false;
    } else if (diemTra.value === "") {
        setError(diemTra, "Điểm trả không được bỏ trống");
        isCheck = false
    } else if (thoiGianDiChuyen.value === "") {
        setError(thoiGianDiChuyen, "Thời gian di chuyển không được bỏ trống");
        isCheck = false;
    } else if (giaVe.value === "") {
        setError(giaVe, "Giá vé không được bỏ trống");
        isCheck = false;
    }
    return isCheck;
}
