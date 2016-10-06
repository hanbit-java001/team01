$(function(){
	$(".btnApply").on("click", function() {
		var title = $("#txtTitle").val().trim();
		var contents = $("#txtContents").val().trim();
		var createDt = $("#txtCreateDt").val();

		if (title == ""){
			alert("제목을 입력하세요");
			$("#txtTitle").focus();
			return;
		}
		else if (contents == "") {
			alert("내용을 입력하세요.");
			$("#txtContents").focus();
			return;
		}
		else if (createDt == "") {
			alert("등록일을 입력하세요.");
			$("#txtCreateDt").focus();
			return;
		}

		var data = new FormData();

		data.append("title", title);
		data.append("contents", contents);
		data.append("createDt", createDt);

		for (var i=0;i<imgProfile.files.length;i++) {
			var file = imgProfile.files[i];

			data.append("imgProfile", file);
		}

		$.ajax({
			url: "/api/article/upload",
			method: "POST",
			data: data,
			contentType: false,
			processData: false
		}).done(function (result) {
			var title = result.title;

			alert(title + " 등록 성공.");

			location.href = "/";
		});
	});
});