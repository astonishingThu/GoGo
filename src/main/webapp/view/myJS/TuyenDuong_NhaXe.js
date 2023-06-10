function openModal(){
    const modal = document.querySelector(".js-modal");
    modal.classList.add("open");
}
function closeModal(){
    const modal = document.querySelector(".js-modal");
    modal.classList.remove("open");
}

function getThu(){
    console.log("hi");
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
    return ngayChay;
}
