$(function () {
	var oldParam = {};
	// 点击增加
	$(document).on("click.plus", ".plus", function (e) {
		var _this = $(this);
		var _tr = _this.parent().parent().parent();
		var txt = parseInt(_this.siblings("input[type='text']").val()||0);
		if(txt <= 1){
			_this.siblings(".disable").removeClass("disable");
		}
		txt++;
		_this.siblings("input[type='text']").val(txt);
		setNums(_tr);
		return getTotalSums();
	});

	// 点击减少
	$(document).on("click.min", ".minus", function (e) {
		var _this = $(this);
		var _tr = _this.parent().parent().parent();
		if(_this.hasClass("disable")){
			return false;
		}
		var txt = parseInt(_this.siblings("input[type='text']").val()||0);
		txt--;
		if(txt <= 1){
			_this.addClass("disable");
		}
		_this.siblings("input[type='text']").val(txt);
		setNums(_tr);
		return getTotalSums();
	});
	
	$(document).ready(function(ev){
		
		$(".minus.disable").each(function(index,ele){
			
			var inputVal = $(ele).siblings("input[type='text']").val();
			if(inputVal>=2)
				$(ele).removeClass("disable");
		});
	});

	// 手动输入
	// $(document).on("onkeyup", ".num-box input", function (e) {
	// 	var keyCode = e.keyCode;    
	// 	if ((keyCode >= 48 && keyCode <= 57)){    
	// 		e.returnValue = true;
	// 	} else {    
	// 		e.returnValue = false;
	// 	}
	// 	var _this = $(this);
	// 	var _tr = _this.parent().parent().parent();
	// 	var txt = parseInt(_this.val()||0);
	// 	if(txt <= 1){
	// 		_this.val(1);
	// 		_this.siblings(".minus").addClass("disable");
	// 	} else {
	// 		_this.val(txt);
	// 		_this.siblings(".minus").removeClass("disable");
	// 	}
	// });

	// 勾选结算
	$(document).on("click", ".table td input[name='check']", function () {
		getTotalSums();
	});
	// 全选
	$("#checkAll").click(function () {
		var c = $(this).prop("checked");
		if(c)
			$(this).parents(".shopping-cart").find("td input[name='check']").prop("checked", true);
		else
			$(this).parents(".shopping-cart").find("td input[name='check']").prop("checked", false);
		getTotalSums();
	});
});

function setNums (_tr) {
	var price = _tr.find(".price").find("span").text();
	var num = _tr.find(".number").find("input").val();
	var month = _tr.find(".month").find("input").val();
	var p = parseFloat(price);
	var n = parseFloat(num);
	var m = parseFloat(month);
	var sums = p*n*m;
	sums = sums.toFixed(2);
	_tr.find(".sums span").html(sums);
}

function RepNumber(obj) {
	var reg = /^[\d]+$/g;
	if (!reg.test(obj.value)) {
		var txt = obj.value;
		txt.replace(/[^0-9]+/,
		function(char, index, val) { //匹配第一次非数字字符
			obj.value = val.replace(/\D/g, ""); //将非数字字符替换成""
			var rtextRange = null;
			if (obj.setSelectionRange) {
				obj.setSelectionRange(index, index);
			} else { //支持ie
				rtextRange = obj.createTextRange();
				rtextRange.moveStart('character', index);
				rtextRange.collapse(true);
				rtextRange.select();
			}
		})
	}
}

function checkNumber (obj) {
	var txt = obj.value;
	if(txt == 0){
		obj.value = 1;
	}
	var _tr = $(obj).parent().parent().parent();
	setNums(_tr);
	return getTotalSums();
}

function getTotalSums () {
	var sums = 0;	// 合计
	var s = 0;	// 订单个数
	$(".shopping-cart .table").find("input[name=check]:checked").each(function () {
		s++;
		var t = $(this).parent().siblings(".sums").find("span").html();
		var tt = parseFloat(t);
		sums += tt;
	});
	sums = sums.toFixed(2);
	$(".total-sums").find("span").html(sums);
	$("#submit").val("结算("+s+")");
}