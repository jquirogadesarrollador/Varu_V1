$(document).ready(function () {

    if (VerificarScroll)
        VerificarScroll();

    $("[data-toggle]").click(function () {
        var toggle_el = $(this).data("toggle");
        $(toggle_el).toggleClass("open-sidebar");
        if ($("#sidebar-toggle").hasClass("icon-mostrarmenu")) {
            $("#sidebar-toggle").addClass("icon-ocultarmenu");
            $("#sidebar-toggle").removeClass("icon-mostrarmenu");
            if (AcomodarBarraBotones)
                setTimeout('AcomodarBarraBotones(false,false)', 100);
        }
        else {
            $("#sidebar-toggle").addClass("icon-mostrarmenu");
            $("#sidebar-toggle").removeClass("icon-ocultarmenu");
            if (AcomodarBarraBotones)
                setTimeout('AcomodarBarraBotones(true,false)', 100);
        };

        
    });
});

$(".swipe-area").swipe({
    swipeStatus: function (event, phase, direction, distance, duration, fingers) {
        if (phase == "move" && direction == "right") {
            $(".containerSW").addClass("open-sidebar");
            return false;
        }
        if (phase == "move" && direction == "left") {
            $(".containerSW").removeClass("open-sidebar");
            return false;
        }
    }
});