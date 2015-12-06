function loadConsoles (){
$.ajax({
url: "index.php"
}).done(function (data){
$('#testDiv').html(data);
})
}