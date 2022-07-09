$(".link_menu").on("click",function(){
      
   $(".wrap_menu").css("display","block");
   $(".dimmed_menu").css("display","block");

   
}); 

 $(".dimmed_menu").on("click", function() {
   $(".wrap_menu").css("display", "none");
   $(".dimmed_menu").css("display","none");
   
}); 