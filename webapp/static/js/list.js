$(function() {
	function addArticle(createYear, title, profileUrl) {
		var articleHTML = "";

		articleHTML += "<h2>" + createYear + "</h2>";
		articleHTML += "<div class='row'>";
		articleHTML += "<div class='col-md-4'>"
		articleHTML += "<a href='" + profileUrl + "' class='thumbnail'>";
		articleHTML += "<p>" + title + "</p>";
		articleHTML += "<img src='" + profileUrl + "' alt='10' style='width:150px;height:150px'>";
		articleHTML += "</a>"
		articleHTML += "</div>"
    	articleHTML += "</div>"

    	$(".main-container").append(articleHTML);
	}

	function getArticles(pageNumber) {
		$.ajax({
			url: "/api/article/list",
			method: "POST",
			data: {
				page: pageNumber
			}
		}).done(function(pagingArticles) {
			$(".main-container").empty();

			for(var i=0; i<pagingArticles.articles.length;i++){
				var article = pagingArticles.articles[i];

				var title = article.title;
				var createYear = article.createYear;

				var profileUrl = "";

				if (article.profileFileId !== undefined && article.profileFileId != null ){
					profileUrl = "/file/" + member.profileFileId;
				}

				addArticle(createYear, title, profileUrl);

			}

			var totalCount = pagingArticles.totalCount;

			drawPaging(totalCount);

		});
	}

	function drawPaging(totalCount) {
		firstPage = parseInt((currentPage - 1) / pagingRange) * pagingRange + 1;
		lastPage = firstPage + pagingRange - 1;
		totalPages = parseInt(totalCount / itemsPerPage)
			+ (totalCount % itemsPerPage > 0 ? 1 : 0);

		$(".member-paging").empty();

		var pagingNumberHTML = "<div class='member-paging-number'>";
		pagingNumberHTML += "이전";
		pagingNumberHTML += "</div>";

		$(".member-paging").append(pagingNumberHTML);

		for (var i=firstPage;i<=lastPage;i++) {
			if (i > totalPages) {
				break;
			}

			pagingNumberHTML = "<div class='member-paging-number";

			if (i == currentPage) {
				pagingNumberHTML += " current-page";
			}

			pagingNumberHTML += "'>";
			pagingNumberHTML += i;
			pagingNumberHTML += "</div>";

			$(".member-paging").append(pagingNumberHTML);
		}

		pagingNumberHTML = "<div class='member-paging-number'>";
		pagingNumberHTML += "다음";
		pagingNumberHTML += "</div>";

		$(".member-paging").append(pagingNumberHTML);

		$(".member-paging-number").on("click", function() {
			var pageText = $(this).text();
			var pageNumber = 0;

			if (pageText == "이전") {
				pageNumber = firstPage - 1;

				if (pageNumber < 1) {
					return;
				}
			}
			else if (pageText == "다음") {
				pageNumber = lastPage + 1;

				if (pageNumber > totalPages) {
					return;
				}
			}
			else {
				pageNumber = Number(pageText);
			}

			currentPage = pageNumber;

			getMembers(pageNumber);
		});
	}

	var itemsPerPage = 3;
	var pagingRange = 5;
	var currentPage = 1;
	var firstPage;
	var lastPage;
	var totalPages;

	getMembers(currentPage);

});