function updateStar(){

}
function openRating(idVe) {
    let modal = document.getElementById("rating-form" +idVe);
    modal.classList.add("open");
}
function closeRating(idVe) {
    let modal = document.getElementById("rating-form" +idVe);
    modal.classList.remove("open");
}

function handleRating(idVe){
    document.getElementById("ratingStar" + idVe).value = document.getElementById("selected-rating" + idVe).innerText;
    document.getElementById("ratingComment" + idVe).value = document.getElementById("comment" + idVe).value;
}
jQuery(document).ready(function($){
    $(".btnrating").on('click',(function(e) {

        var previous_value = $("#selected_rating").val();

        var selected_value = $(this).attr("data-attr");
        $("#selected_rating").val(selected_value);

        $(".selected-rating").empty();
        $(".selected-rating").html(selected_value);

        for (i = 1; i <= selected_value; ++i) {
            $("#rating-star-"+i).toggleClass('btn-warning');
            $("#rating-star-"+i).toggleClass('btn-default');
        }

        for (ix = 1; ix <= previous_value; ++ix) {
            $("#rating-star-"+ix).toggleClass('btn-warning');
            $("#rating-star-"+ix).toggleClass('btn-default');
        }

    }));


});
