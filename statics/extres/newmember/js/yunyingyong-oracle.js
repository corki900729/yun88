(function($, window) {
    var pageEffects;

    pageEffects = {
        // hover to show the corresponding description
        bindBlockyDesc: function() {
            var $descs = $(".feature-desc"),
                heightestDesc = 0;
            $descs.each(function(ind, ele) {
                var height = $(ele).height();
                if (height > heightestDesc) {
                    heightestDesc = height;
                }
            });
            if (heightestDesc) {
                $descs.each(function(ind, ele) {
                    $(ele).height(heightestDesc);
                });
            }
            // hide all desc
            $descs.hide();

            // show the first one by default.
            // bind hover to show behavior.

            $(document).on("mouseover.blocky", ".blocky", function() {
                var classList = $(this).attr('class').split(/\s+/);
                $(".blocky").removeClass('active');
                $descs.hide();
                $(".feature-desc." + classList[1]).show();
                $(this).addClass('active');
            });

        },
        GO: function() {
            this.bindBlockyDesc();
        }
    };
    // And Awayyyyyyyyyy we go.
    pageEffects.GO();
})(jQuery, window)