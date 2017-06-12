"use strictd";
// 公有云
(function ($, window) {

    var submitDemands = {
        // option button click events.
        "formFiller": function () {
            $(".demands-selection").on("click.options", ".btn-option", function (ev) {
                ev.preventDefault();
                $theBtn = $(ev.currentTarget);
                var $parent = $theBtn.parent(".option-btns");
                var relatedOption = $parent.attr("class").split(" ")[1];
                $("#p-" + relatedOption).html($theBtn.text());
                $(":input[name=" + relatedOption + "]").val($theBtn.data('value'));
                // add Active.
                $parent.find(".btn-option.active").removeClass("active");
                $theBtn.addClass("active");
            });
        },
        // set up the range slider.
        "setRangeSlider": function () {
            if (!$(".blk-option").length || !$(".range-block").length) {
                return;
            }

            var $lastOption = $(".blk-option").last();
            var maxiumOffsetLeft = $lastOption.position().left + $lastOption.outerWidth();

            // init the slider to the end of the first block,cach in the value;
            var $firstBlk = $(".blk-option").first();
            var firstBlockEnd = $firstBlk.outerWidth();
            $firstBlk.addClass('active');
            $(".range-block").css("left", firstBlockEnd);
            $("#p-length").html($firstBlk.text());
            $(":input[name=length]").val($firstBlk.data("value"));


            // bind the drag events.
            $(".range-container>.range-block").drag(function (ev, dd) {
                // No "over dragging".
                if (dd.offsetX < 0 || dd.offsetX > maxiumOffsetLeft)
                    return;
                $(this).css({ left: dd.offsetX });

                // toggle the active class
                var $below = $(dd.drop);
                if (!$below.length)
                    return;
                if (dd.offsetX >= ($below.position().left + $below.outerWidth() * 0.65)) {
                    $below.addClass('active');
                }
                if ($below.hasClass('active') && dd.offsetX <= ($below.position().left) - 10) {
                    // debugger;
                    $below.removeClass('active');
                }


            }, { relative: true });


            $('.range-container>.blk-option')
                .drop(function () {
                    var leftOffset = $(this).position().left;
                    $(".range-container>.range-block").css("left", leftOffset + $(this).outerWidth());
                    if (!$(this).hasClass('active')) {
                        $(this).addClass('active');
                    }
                    $("#p-length").html($(this).text());
                    $(":input[name=length]").val($(this).data("value"));
                });
        },
        "setSpinner": function () {
            var $theInp = $(".input-spinner>input");
            var minVal = 1,
                maxVal = 99;
            if (!$theInp.length) {
                return;
            }


            // bind events
            $theInp.on("change", function (ev) {
                // re-check and reset the values.
                if ($(this).val() <= minVal) {
                    $(this).val(minVal);
                }
                if ($(this).val() >= maxVal) {
                    $(this).val(maxVal);
                }
                // set the display value and "insider" value.
                $("#p-quantity").html($(this).val());
                $(":input[name=quantity]").val($(this).val());

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

            // spinner button.
            $(".input-spinner").on("click.spin", "a", function (ev) {
                ev.preventDefault();
                var $theBtn = $(ev.currentTarget);
                var className = $theBtn.attr("class");

                if (className === "min") {
                    if ($theInp.val() == minVal) {
                        return false;
                    }
                    // debugger;
                    $theInp.val(window.parseInt($theInp.val(), 10) - 1);
                }
                if (className === "plus") {
                    if ($theInp.val() == maxVal) {
                        return false;
                    }
                    $theInp.val(window.parseInt($theInp.val(), 10) + 1);
                }
                // fire up the change event on the input.
                $theInp.trigger('change');
            });
            // the default value
            $theInp.val("1");
            $theInp.trigger('change');
        },
        GO: function () {

            // 云应用界面提交需求
            // load when needed.
            if ($(".demands-selection").length) {
                this.formFiller();
                this.setRangeSlider();
                this.setSpinner();
            }

        }
    };
    $(document).ready(function () {
        // And Awayyyyyyyyyy we go.
        submitDemands.GO();
    });
})(jQuery, window);

// 云应用
