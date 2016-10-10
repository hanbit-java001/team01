$(function() {
	var year = $(this).attr("year");


	$("#btnAddSchedule").on("click", function() {
		location.href = "/upload/uploadForm"
    });

	$("#myScrollspy a").on("click", function() {

		getListArticles(year);
	});
	$("#y2016").on("click", function() {


		location.href = "/article/list"
	});
	$("#y2015").on("click", function() {


		location.href = "/article/list"
	});
	$("#y2014").on("click", function() {


		location.href = "/article/list"
	});
	$("#y2013").on("click", function() {


		location.href = "/article/list"
	});
	$("#y2012").on("click", function() {


		location.href = "/article/list"
	});
	$("#y2011").on("click", function() {


		location.href = "/article/list"
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


