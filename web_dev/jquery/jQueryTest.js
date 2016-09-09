// $(document).ready(function(){
//     $("#main-page-header").mouseenter(function(){
//         $(this).fadeOut(4000);
//     });
// });
// $(document).ready(function(){
//     $("#main-page-header").mouseleave(function(){
//         $(this).fadeIn(4000);
//     });
// });

$(document).ready(function(){
    $("span").on({
        mouseenter: function(){
            $(this).css("font-size", "1.5em");
        },
        mouseleave: function(){
            $(this).css("font-size", "1em");
        }
    });
});

$(function(){
	$("img").on({
		mouseenter: function(){
			$(this).css({"height": "200px", "width": "300px"});
		},
		mouseleave: function(){
			$(this).css({"height": "100px", "width": "150px"});
		}
	});
});

$(function(){
    $(".elements").click(function(){
        $("ul").slideToggle("slow");
    });
});