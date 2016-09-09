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

// <section id="buttons">
//             <button id="orange-button">Change the background color to orange</button>
//             <button id="red-button">Change the background color to red</button>
//             <button id="white-button">Change the background color to white</button>
//             <button id="purple-button">Change the background color to purple</button>
//             <button id="green-button">Change the background color to green</button>
//         </section>

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