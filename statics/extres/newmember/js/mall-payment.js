(function ($, window) {

    // cache all the spinner
    var $spinnerInps = [];
    // cache the price display.
    var $thePriceTag = $(".pricing .price.actual ");

    var pageEffects = {
        // when shit happens and the price shouldn't be there anymore.
        clearPrice: function () {
            $form = $("form").first();

            // clear hidden field.
            $form.find(":input[name=price]").val(null);

            // clear display values.
            $thePriceTag.html("");
            // clear spec from the last selection.
            $form.find(":input[name=spec]").val(null);            
        },
        setClassSection: function () {
            var that = this;
            // hide all the specs for now.
            $(".spec-selection").hide();

            $(".class-selection").first().on("click.class-selection", ".spec-block", function (ev) {

                var $theRow = $(ev.delegateTarget),
                    $theBlock = $(this);

                $theRow.find(".spec-block").removeClass("active");
                $theBlock.addClass("active");

                var ClassValue = $theBlock.data("value");

                if (!ClassValue) {
                    return;
                }

                // change the value of the hidden field.
                $theBlock.parents("form").find(":input[name=class]").val(ClassValue);

                $(".spec-selection")
                    .hide()
                    .removeClass("active");

                var $correspondingSpecs = $(".spec-selection[data-class=" + ClassValue + "]");
                if (!$correspondingSpecs.length) {
                    // clear all the price when shit happends.
                    that.clearPrice();
                    return false;
                }
                $correspondingSpecs.show()
                    .addClass("active")
                    .find(".spec-block").first().trigger("click");
            });

            $(".class-selection").find(".spec-block").first().trigger("click");
        },
        setSpecSection: function () {
            $(".spec-selection").on("click.spec-block", ".spec-block", function (ev) {

                var $theRow = $(ev.delegateTarget),
                    $theBlock = $(this);

                $theBlock.addClass('active');
                $theRow.find(".spec-block").not($theBlock).removeClass('active');

                // change the value of the hidden field.
                $theBlock.parents("form").find(":input[name=spec]").val($theBlock.data("value"));

                // change the bottom value.
                $(".pricing .price.actual ").html(parseFloat($theBlock.data("price")).toFixed(2));

                // re-set the spinner.
                if (!$spinnerInps.length) {
                    return;
                }

                $spinnerInps.val("1");
            });
        },
        setSpinner: function () {
            var $theInp = $(".input-spinner>input");
            var minVal = 1,
                maxVal = 999;
            if (!$theInp.length) {
                return;
            }

            // cach those thingy.
            $spinnerInps = $theInp;

            // bind events
            $theInp.on("change", function (ev) {
                // re-check and reset the values.
                if ($(this).val() <= minVal) {
                    $(this).val(minVal);
                }
                if ($(this).val() >= maxVal) {
                    $(this).val(maxVal);
                }
                
                // get the curren selected spec.
                var sepcNumb = $(":input[name=spec]").val();
                // if specs havn't selected.
                if (!sepcNumb) {
                    return false;
                }

                // get the display price element and price fixer.
                var a_fixers = [];


                var $ActiveRow = $(".spec-selection.active");
                // when there is no row actived.
                if (!$ActiveRow.length) {
                    return false;
                }
                // get the base value from the block.
                var basePrice = $ActiveRow.find(".spec-block[data-value=" + sepcNumb + "]").data("price");

                // extract fixer values from the spinners.
                $spinnerInps.each(function (index, ele) {
                    a_fixers.push($(ele).val());
                });

                var newPrice = basePrice * a_fixers[0] * a_fixers[1];
                // change display price.
                $thePriceTag.html(parseFloat(newPrice).toFixed(2));
                // change hidden field.
                $(this).parents("form").find(":input[name=price]").val(parseFloat(newPrice).toFixed(2));

            });
            // Input only numeric
            $theInp.keydown(function (e) {
                // Allow: backspace, delete, tab, escape, enter and .
                if ($.inArray(e.keyCode, [46, 8, 9, 27, 13, 110, 190]) !== -1 ||
                    // Allow: Ctrl+A
                    (e.keyCode == 65 && e.ctrlKey === true) ||
                    // Allow: Ctrl+C
                    (e.keyCode == 67 && e.ctrlKey === true) ||
                    // Allow: Ctrl+X
                    (e.keyCode == 88 && e.ctrlKey === true) ||
                    // Allow: home, end, left, right
                    (e.keyCode >= 35 && e.keyCode <= 39)) {
                    // let it happen, don't do anything
                    return;
                }
                // Ensure that it is a number and stop the keypress
                if ((e.shiftKey || (e.keyCode < 48 || e.keyCode > 57)) && (e.keyCode < 96 || e.keyCode > 105)) {
                    e.preventDefault();
                }
            });

            // spinner buttons.
            $(".input-spinner").on("click.spin", "i", function (ev) {
                ev.preventDefault();
                var $theBtn = $(ev.currentTarget),
                    className = $theBtn.attr("class"),
                    $thisInp = $(this).siblings(":input").first();

                // min butt                
                if (className === "min") {
                    if ($thisInp.val() == minVal) {
                        return false;
                    }                    
                    $thisInp.val(window.parseInt($thisInp.val(), 10) - 1);
                }

                // plus butt
                if (className === "plus") {
                    if ($thisInp.val() == maxVal) {
                        return false;
                    }
                    $thisInp.val(window.parseInt($thisInp.val(), 10) + 1);
                }

                // notice the input.
                $theInp.trigger('change');
            });
            // the default value
            $theInp.val("1");
        },
        GO: function () {
            this.setClassSection();
            this.setSpecSection();
            this.setSpinner();
        }
    };
    $(document).ready(function () {
        // And Awayyyyyyyyyy we go.
        pageEffects.GO();
    });
})(jQuery, window);
