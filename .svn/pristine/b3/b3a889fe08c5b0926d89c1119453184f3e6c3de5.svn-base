(function ($, window) {
    var pageEffects = {
        // automatically set the height of bottom columns to the heightest one among them.
        adjustColumn: function () {
            var $midDescs = $(".column .mid").find(".type-indi+div"), $btmDescs = $(".column .btm").find("h3+div");
            var midHeightest = 0, btmHeightest = 0;
            // the middle row
            $midDescs.each(function (index, ele) {
                var $ele = $(ele);
                if ($ele.height() > midHeightest) {
                    midHeightest = $ele.height();
                }
            });
            // the bottom row
            $btmDescs.height();
            $btmDescs.each(function (index, ele) {
                var $ele = $(ele);
                if ($ele.height() > btmHeightest) {
                    btmHeightest = $ele.height();
                }
            });
            $btmDescs.height(btmHeightest);
            $midDescs.height(midHeightest);
        },
        GO: function () {
            this.adjustColumn();
        }
    };
    $(document).ready(function () {
        // And Awayyyyyyyyyy we go.
        pageEffects.GO();
    });
})(jQuery, window);
