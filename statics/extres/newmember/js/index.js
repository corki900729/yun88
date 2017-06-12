(function () {
    var pageEffects = {
        "setHoverDisplay": function () {
            $("body").on("mouseover.hdp", ".bLogo-1 img", function (ev) {
                var which = $(this).data("number");
                var $text = $(this).parents(".layer").first().find(".text");
                $text.find("p.active").hide();
                $text.find("p." + which).show().addClass("active");
            });
            // set the default display.
            $(".bLogo-1 img").first().trigger("mouseover");
        },
        "go": function () {
            this.setHoverDisplay();
        }
    }


    $(document).ready(function () {
        pageEffects.go();
    });
})();