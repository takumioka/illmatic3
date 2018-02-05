(function(documet){
    
    $(document).ready(function(){
    	 $("#edit-table > tbody > tr > td").click(edit_toggle());
    });


    function edit_toggle(){
        var edit_flag=false;
        return function(){
            if(edit_flag) return;
            var $input = $("<input>").attr("type","text").val($(this).text());
            $(this).html($input); 
            
            $("input", this).focus().blur(function(){
                $(this).after($(this).val()).unbind().remove();
                edit_flag = false;
            });
            edit_flag = true;
        }
    }    
    
})(document);

$(function($) {
	$("#test").click(function() {
		var tblTbody = document.getElementById('tbody');
		document.getElementById("edit-table").value = "";
		// td内のtrをループ。rowsコレクションで,行位置取得。
		for (var i=0, rowLen=tblTbody.rows.length; i<rowLen; i++) {
			// tr内のtdをループ。cellsコレクションで行内セル位置取得。
			for (var j=0, colLen=tblTbody.rows[i].cells.length ; j<colLen; j++) {
				//i行目のj列目のセルを取得
				var cells = tblTbody.rows[i].cells[j];
				//取得した値をテキストエリアへ表示
				document.getElementById("txtArea").value += i + "行目" + j + "列目の値は「" + cells.innerHTML + "」です。\n";
			}
		}
	});
});