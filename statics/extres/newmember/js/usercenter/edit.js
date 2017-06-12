$(function () {
	var oldParam = {};
	// 点击编辑
	$(".edit").on("click", function () {
		var _this = $(this);
		var _table = _this.parent().parent().parent();
		_table.find("tr.hidden").show();
		_this.addClass("hidden");
		_table.find("input[type='text']").addClass("active");
		_table.find("textarea").addClass("active");
		oldParam["phone"] = $("input[name='phone']").val();
		oldParam["email"] = $("input[name='email']").val();
		oldParam["address"] = $("textarea[name='address']").val();
	});

	// 点击取消
	$(".cancel").on("click", function () {
		var _this = $(this);
		var _table = _this.parent().parent().parent();
		_table.find(".edit").removeClass("hidden");
		_this.parent().parent().hide();
		_table.find("input[type='text']").removeClass("active");
		_table.find("textarea").removeClass("active");
		$("input[name='phone']").val(oldParam["phone"]);
		$("input[name='email']").val(oldParam["email"]);
		$("textarea[name='address']").val(oldParam["address"]);
	});
});