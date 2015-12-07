// JavaScript File

function gamesData(){
    $.ajax({
        url: "games.php"
    }).done(function(data) {
        $('#here').html(data);
    });
}
function gamesMoreData(){
    $.ajax({
        url: "moredata.php"
    }).done(function(data) {
        $('#more').html(data);
    });
}
//$(window).load(function() {
//    $(".loader").fadeOut("slow");
//})