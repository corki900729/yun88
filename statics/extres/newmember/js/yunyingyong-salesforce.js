(function ($, window) {
    var pageEffects = {
        adjustColumns: function () {
            var $columns = $(".floor.pricing .pricing-column .column-inner");
            var heightest = 0;
            $columns.each(function (index, ele) {
                var height = $(ele).height();
                if (height > heightest) {
                    heightest = height;
                }
            });
            if (heightest) {
                $columns.height(heightest);
            }
        },
        adjustSideBar: function () {
            $(".floor.pricing .index").height($(".floor.pricing .table").height());
        },
        GO: function () {
            this.adjustColumns();
            this.adjustSideBar();
        }
    };
    // And Awayyyyyyyyyy we go.
    $(document).ready(function () {
        pageEffects.GO();
    });
})(jQuery, window);
