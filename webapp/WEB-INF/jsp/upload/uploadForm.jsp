<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no" />
<meta name="msapplication-tap-highlight" content="no" />
<title>업로드</title>
<link rel="stylesheet" href="/static/plugins/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="/static/plugins/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="/static/plugins/material/iconfont/material-icons.css">
<link rel="stylesheet" href="/static/css/uploadForm.css" />
</head>
<body>

	<div class="upload-top">
		등록
	</div>

	<div class="hanbit-container">
		<div class="form-group">
		<form action="form-group">
  				등록일: <br>
			<input type="date" name="bday" id="txtCreateDt">
		</form>
		</div>
		<div class="form-group">
   			<label for="txtName" class="input-required">제목</label>
   			<input type="text" class="form-control" id="txtTitle" placeholder="제목">
		</div>
		<div class="form-group">
   			<label for="txtContents" class="input-required">내용</label>
   			<textarea class="form-control" rows="15" id="txtContents" placeholder="내용"></textarea>
		</div>
		<div class="form-group">
   			<label for="imgProfile">대표사진</label>
   			<input type="file" class="form-control" id="imgProfile" placeholder="프로필사진">
		</div>
		<div class="bottom-buttons">
			<button class="btnApply btn btn-success">등록</button>
			<button class="btnCancle btn btn-default">취소</button>
		</div>
	</div>





<script src="/static/plugins/jquery/jquery-3.1.0.min.js"></script>
<script src="/static/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="/static/js/uploadForm.js"></script>
</body>
</html>