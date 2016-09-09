$(function(){
    $("#orange-button").click(function(){
        $("body").css("background", "orange");
    });
});

$(function(){
    $("#red-button").click(function(){
        $("body").css("background", "red");
    });
});

$(function(){
    $("#white-button").click(function(){
        $("body").css("background", "white");
    });
});

$(function(){
    $("#purple-button").click(function(){
        $("body").css("background", "purple");
    });
});

$(function(){
    $("#green-button").click(function(){
        $("body").css("background", "green");
    });
});

$(function(){
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