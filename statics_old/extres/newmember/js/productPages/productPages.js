; (function ($, window) {
    "use strict";

    // sales force
    // .sales-force-showcase
    var SalesForce = {
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

    // oracle
    // .oracle-showcase
    var Oracle = {

        // hover to show the corresponding description
        bindBlockyDesc: function () {
            var $descs = $(".feature-desc"),
                heightestDesc = 0;
            $descs.each(function (ind, ele) {
                var height = $(ele).height();
                if (height > heightestDesc) {
                    heightestDesc = height;
                }
            });
            if (heightestDesc) {
                $descs.each(function (ind, ele) {
                    $(ele).height(heightestDesc);
                });
            }
            // hide all desc
            $descs.hide();

            // show the first one by default.
            // bind hover to show behavior.

            $(document).on("mouseover.blocky", ".blocky", function () {
                var classList = $(this).attr('class').split(/\s+/);
                $(".blocky").removeClass('active');
                $descs.hide();
                $(".feature-desc." + classList[1]).show();
                $(this).addClass('active');
            });

        },
        GO: function () {
            this.bindBlockyDesc();
        }
    };

    // 国灵
    // .guoling-showcase
    var Guoling = {

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

    // entry
    $(document).ready(function () {
        if ($(".sales-force-showcase"))
            SalesForce.GO();
        if ($(".oracle-showcase"))
            Oracle.GO();
        if ($(".guoling-showcase"))
            Guoling.GO();
    });


})(jQuery, window);