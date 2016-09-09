// Corbin Via: DBC Week 9.3 assignment

// These functions apply to my GitHub website: https://corbin1987.github.io/. I've included this file in my GitHub website repository to show these effects.

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
    $("#carbon-description").click(function(){
        $("#carbon-list").slideToggle("slow");
    });
});

$(function(){
    $("#gold-description").click(function(){
        $("#gold-list").slideToggle("slow");
    });
});

$(function(){
    $("#titanium-description").click(function(){
        $("#titanium-list").slideToggle("slow");
    });
});

$(function(){
    $("#oxygen-description").click(function(){
        $("#oxygen-list").slideToggle("slow");
    });
});