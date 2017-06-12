(function () {

    $(window).ready(function () {
        $(".index-menu").stick_in_parent();


        // add indicator.
        $("body").on("click.active", ".index-menu li", function (ev) {
            $(this).addClass("active");
            $(this).siblings("li").removeClass("active");
        });

        // scroll spy plugin.
        // spy on each title.
        $(".class-title").each(function (ind) {
            // get the position of the "title".
            var offset = $(this).offset();
            // and the other elements that follows, until it hits another "anchor"
            var $followUps = $(this).nextUntil("a[id]");

            // get the height of those follows.
            var followUpsHeight = 0;
            $followUps.each(function (index, ele) {
                followUpsHeight += $(this).outerHeight();
            });

            $(this).scrollspy({
                min: offset.top,
                max: offset.top + followUpsHeight,
                onEnter: function (element, position) {
                    // find the anchor for the title.
                    var $anchor = $(element).prev("a[id]");
                    var anchorID = false || $anchor.attr("id");

                    if (!anchorID) {
                        if (console) console.log("anchor's Id not found! scroll spy aborted.");
                        return false;
                    }
                    // get the index menu's li.'
                    var $indexMenuItem = $(".index-menu").find("a[href='#" + anchorID + "']").closest("li");
                    if ($indexMenuItem) {
                        $indexMenuItem.addClass("active").siblings().removeClass("active");
                    }
                },
                onLeave: function () {
                    $(".index-menu").find("li").removeClass("active");
                }
            });
        });




    });

})();