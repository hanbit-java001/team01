$(function(){
	$("btnApply").on("click", function() {
		var title = $("#txtTitle").val().trim();
		var contents = $("#txtContents").val().trim();

		if(title=""){
			alert("제목을 입력하세요");
			$("#txtTitle").focus();
			return;
		}
		else if (contents == "") {
			alert("내용을 입력하세요.");
			$("#txtContents").focus();
			return;
		}
	});
});