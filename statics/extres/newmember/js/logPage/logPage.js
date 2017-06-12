// Log pages.
// check the strength of the password.
; (function () {
    "use strict";

    // singleton function.
    // validate password strength.
    var passStrength = {
        "scorePassword": function (pass) {
            var score = 0;
            if (!pass)
                return score;

            // award every unique letter until 5 repetitions
            var letters = {};
            for (var i = 0; i < pass.length; i++) {
                letters[pass[i]] = (letters[pass[i]] || 0) + 1;
                score += 5.0 / letters[pass[i]];
            }

            // bonus points for mixing it up
            var variations = {
                digits: /\d/.test(pass),
                lower: /[a-z]/.test(pass),
                upper: /[A-Z]/.test(pass),
                nonWords: /\W/.test(pass)
            };

            var variationCount = 0;
            for (var check in variations) {
                variationCount += (variations[check] === true) ? 1 : 0;
            }
            score += (variationCount - 1) * 10;

            return parseInt(score);
        },
        "translateScore": function (pass) {
            var score = this.scorePassword(pass);
            if (score >= 80)
                return "strong";
            if (score >= 60)
                return "middle";
            if (score >= 30)
                return "weak";

            return false;
        },
        "go": function () {
            $(document).ready(function () {
                $(".reg-sheet").on("keyup.passStr", ":password", function (ev) {
                    var $levelMeter = $(".security-level");

                    if (!$levelMeter.length)
                        return false;

                    $levelMeter.children("div").removeClass("active");

                    var $inpPass = $(ev.currentTarget);
                    var result = this.translateScore($inpPass.val());

                    if (result === "strong")
                        $levelMeter.find(".strong").first().addClass("active");
                    if (result === "middle")
                        $levelMeter.find(".middle").first().addClass("active");
                    if (result === "weak")
                        $levelMeter.find(".weak").first().addClass("active");
                    if (!result) {
                        $levelMeter.find(".too-weak").first().addClass("active");
                    }

                }.bind(this));

            }.bind(this));
        }
    };

    passStrength.go();

})();