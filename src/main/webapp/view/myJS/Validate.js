function setError(ele, message) {
    ele.classList.add('alert-danger');
    ele.parentNode.querySelector('small').innerText = message;
}
function setSuccess(ele) {
    ele.classList.remove('alert-danger');
    ele.classList.add('alert-success');
    ele.parentNode.querySelector('small').innerText = "";
}