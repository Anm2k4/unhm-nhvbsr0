$(document).ready(function () {

       $("input[type=button],input[type=submit], button").button();

       $(".radio").buttonset();

       $(".selectmenu").selectmenu();

       $("#towns, #waterbodies")
            .selectmenu()
            .selectmenu("menuWidget")
                .addClass("overflow"); 
    
    $("#navigation").find("li").hover(
        function() {
            $(this).stop(true,true).animate({backgroundColor: "#058"},150);
            $(this).children("a").stop(true,true).animate({color: "#FFF"}, 150); 
        },function() {
            $(this).stop(true,true).animate({backgroundColor: "#FFF"},150);
            $(this).children("a").stop(true,true).animate({color: "#000"}, 150); 
        }
    );
                
    $("#header-title").hover(
        function() {
            //$(this).parent("li").stop(true,true).animate({backgroundColor: "#058"},150);
            $(this).stop(true,true).animate({color: "#FFF"}, 150); 
        },function() {
            //$(this).parent("li").stop(true,true).animate({backgroundColor: "#FFF"},150);
            $(this).stop(true,true).animate({color: "#000"}, 150); 
        }         
    );
    
    $(document).ready(function() { 
        $("#data-table").tablesorter(); 
    });
    
    
    $("#boatRampForm").validate({
       rules: {
           "ramp\[Name\]" : {
               required: true
            }
       },
       messages : {
                "ramp\[Name\]": "Ramp Name is required!"
            }
    });
  
});