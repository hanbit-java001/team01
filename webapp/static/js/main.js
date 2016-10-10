$(function() {
	$("#btnAddSchedule").on("click", function() {
		location.href = "/upload/uploadForm"
    });

	$("#myScrollspy a").on("click", function() {
		var year = $(this).attr("year");

		getListArticles(year);
	});

	function getListArticles(createYear) {
		jQuery.ajax({
			url: "/api/article/list",
			method:"GET",
			data: {
				createYear: createYear
			}
		}).done(function(result){
			for(var i = 0;i<result.length;i++){
				var article = result[i];

				$("#y" + article.title + " .img").attr("background", "/file/" + article.articleProfile);
			}
		}).fail(function() {
			alert("사용자가 폭주하여 잠시 후 사용해주세요.");
		});

	}
});


