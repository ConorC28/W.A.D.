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

$("#showDatag1").click(function(){
       $(".moreg1").show();
   });
   
});
}

function hideg1(){
$(document).ready(function(){
   
   $("#hideDatag1").click(function(){
       $(".moreg1").hide();
   });
 
});
}

$("#showDatag2").click(function(){
       $(".moreg2").show();
   });
   
});
}
function hideg2(){
$(document).ready(function(){
   
   $("#hideDatag2").click(function(){
       $(".moreg2").hide();
   });
 
});
}

$("#showDatag3").click(function(){
       $(".moreg3").show();
   });
   
});
}
function hideg3(){
$(document).ready(function(){
   
   $("#hideDatag3").click(function(){
       $(".moreg3").hide();
   });
 
});
}

$("#showDatag4").click(function(){
       $(".moreg4").show();
   });
   
});
}
function hideg4(){
$(document).ready(function(){
   
   $("#hideDatag4").click(function(){
       $(".moreg4").hide();
   });
 
});
}

$("#showDatag5").click(function(){
       $(".moreg5").show();
   });
   
});
}
function hideg5(){
$(document).ready(function(){
   
   $("#hideDatag5").click(function(){
       $(".moreg5").hide();
   });
 
});
}

$("#showDatag6").click(function(){
       $(".moreg6").show();
   });
   
});
}
function hideg6(){
$(document).ready(function(){
   
   $("#hideDatag6").click(function(){
       $(".moreg6").hide();
   });
 
});
}