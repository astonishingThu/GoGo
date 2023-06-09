function setError(ele, message) {
    ele.classList.add('alert-danger');
    ele.parentNode.querySelector('small').innerText = message;
}
function setSuccess(ele) {
    ele.classList.add('alert-success');
    ele.parentNode.querySelector('small').innerText = "";
}
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
    let phuThu = document.getElementById("phuThu");
    let bienSoXe = document.getElementById("bienSoXe");
    phuThu.classList.remove("alert-danger");
    phuThu.classList.remove("alert-success");
    bienSoXe.classList.remove("alert-danger");
    bienSoXe.classList.remove("alert-success");
    if (phuThu.value < 1) {
        setError(phuThu, "Phụ thu không được âm hoặc bằng 0");
        isCheck = false;
    } else if (phuThu > 1000000) {
        setError(phuThu, "Phụ thu không được quá 1,000,000VNĐ");
        isCheck = false;
    } else if (bienSoXe.value === "") {
        setError(bienSoXe, "Biển số xe không được bỏ trống");
        isCheck = false;
    } return isCheck;
}