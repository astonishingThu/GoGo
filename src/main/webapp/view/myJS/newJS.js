
document.getElementById("ngayDi").min = new Date().toLocaleDateString('fr-CA');

// ------------notice----------
function notice(message){
    document.getElementById("notice").setAttribute("value", message);
    console.log("Ham Notice ne");
}