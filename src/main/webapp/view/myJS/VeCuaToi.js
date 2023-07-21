function openCancel(idVe){
    let cancel = document.getElementById("cancel" + idVe);
    cancel.classList.add("open");
}
function closeCancel(){
    console.log("heeeee");
    let cancels = document.getElementsByClassName("cancel-cf");
    for (let cancel of cancels){
        cancel.classList.remove("open");
    }
}
function setStatus(idVe, ngayKHstr, gioKHstr){
    let status = document.getElementById("status"+idVe);
    let rating_btn = document.getElementById("rating"+idVe+"btn");
    if(Date.parse(ngayKHstr) < Date.now()){
        status.innerText = "Đã hoàn thành";
        rating_btn.setAttribute("disabled", "disabled");
    } else {
        status.innerHTML = "Chưa thanh toán";
    }
}

function openDetail(idVe) {
    let modal = document.getElementById("detail" +idVe);
    modal.classList.add("open");
}
function closeDetail(idVe) {
    let modal = document.getElementById("detail" +idVe);
    modal.classList.remove("open");
}