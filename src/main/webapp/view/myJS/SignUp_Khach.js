email = document.getElementById("email");
password = document.getElementById("password");
phoneNumber = document.getElementById("phoneNumber");

function validateSignUp() {
    let isCheck = true;
    let hoVaTen = document.getElementById("hoVaTen");
    if (hoVaTen.value === "") {
        setError(hoVaTen,"Vui lòng nhập họ và tên!");
        isCheck = false;
    } else if (email.value === "") {
        setError(email, "Vui lòng nhập email!");
        isCheck = false;
    } else if (!validateEmail()) {
        isCheck = false;
    } else if (password.value === "") {
        setError(password,"Vui lòng nhập password!");
        isCheck = false;
    } else if (!validatePassword()) {
        isCheck = false;
    } else if (phoneNumber.value === "") {
        setError(phoneNumber, "Vui lòng nhập số điện thoại!");
        isCheck = false;
    } else if (!validateSoDienThoai()) {
        isCheck = false;
    } else {
        setSuccess(hoVaTen);
        setSuccess(email);
        setSuccess(password);
        setSuccess(phoneNumber);
    }
    return isCheck;
}

function validateEmail() {
    let isCheck = true;
    let format = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|.(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    if (!format.test(email.value)) {
        isCheck = false;
        setError(email,"Vui lòng nhập đúng định dạng!");
    }
    return isCheck;
}

function validatePassword() {
    let isCheck = true;
    if (password.value.length < 8) {
        setError(password, "Vui lòng nhập ít nhất 8 kí tự!");
        isCheck = false;
    } else if (password.value.length > 15) {
        setError(password, "Vui lòng không nhập quá 15 kí tự!");
        isCheck = false;
    }
    return isCheck;
}

function validateSoDienThoai() {
    let isCheck = true;
    let format = /(((\+|)84)|0)(3|5|7|8|9)+([0-9]{8})\b/;
    if (!format.test(phoneNumber.value)) {
        isCheck = false;
        setError(phoneNumber, "Vui lòng nhập đúng định dạng!");
    }
    return isCheck;
}

