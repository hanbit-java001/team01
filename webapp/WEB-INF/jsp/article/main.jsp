<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>블로그 아이디어</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="/static/plugins/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="/static/plugins/material/iconfont/material-icons.css">
  <link rel="shortcut icon" href="/static/img/ico_checkmal.ico">
  <link rel="stylesheet" href="/static/plugins/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" type="text/css" href="/static/css/main.css" />
  <style>

  </style>
</head>

<header class="hanbit-header">
		<div id="btnGroupMain">
			<div id="btnMenu" class="hanbit-top-button">
				<i class="material-icons hanbit-abs-center">menu</i>
			</div>
		</div>

		<div id="btnGroupSub">
			<div class="btnBack hanbit-top-button">
				<i class="material-icons hanbit-abs-center">navigate_before</i>
			</div>
		</div>

		<div id="btnGroupRight">
			<div id="btnGroupCalendar">

				<div id="btnAddSchedule" class="hanbit-top-button right">
					<i class="material-icons hanbit-abs-center">add</i>
				</div>
			</div>

			<div id="btnGroupUpdateSchedule">
				<div class="btnApplySchedule hanbit-top-button right">
					<i class="material-icons hanbit-abs-center">done</i>
				</div>
			</div>
		</div>
	</header>



<body data-spy="scroll" data-target="#myScrollspy" data-offset="15">

<div class="container-fluid" style="background-color:#283593
;color:#fff;height:220px;">
  <div class="top-text">Blog Idea</div>
</div>
<br>
<div class="container">
  <div class="row">
    <nav class="col-sm-3" id="myScrollspy">
      <ul class="nav nav-pills nav-stacked" data-spy="affix" data-offset-top="205">
        <li><a href="#y2016">2016</a></li>
        <li><a href="#y2015">2015</a></li>
        <li><a href="#y2014">2014</a></li>
        <li><a href="#y2013">2013</a></li>
        <li><a href="#y2012">2012</a></li>
        <li><a href="#y2011">2011</a></li>
      </ul>
    </nav>
    <div class="col-sm-9">
      <div class="yearDetailFont" id="y2016">
      <table width=850 height=250 background="/static/img/20.jpg">
        <tr>
        <td>
        2016<br>
          상세보기
        </td>
        </tr>
        </table>
      </div>
      <div class="yearDetailFont" id="y2015">
        <h1>2015</h1>
        <em>상세보기</em>
      </div>
      <div class="yearDetailFont" id="y2014">
        <h1>2014</h1>
        <em>상세보기</em>
      </div>
      <div class="yearDetailFont" id="y2013">
        <h1>2013</h1>
        <em>상세보기</em>
      </div>
      <div class="yearDetailFont" id="y2012">
        <h1>2012</h1>
        <em>상세보기</em>
      </div>
      <div class="yearDetailFont" id="y2011">
        <h1>2011</h1>
        <em>상세보기</em>
      </div>
    </div>
  </div>
</div>
<footer class="container-footer">
  <div class="footer-text">COPYRIGHT ⒞ 2016 BY BOOTSTRAP.COM. ALL RIGHTS RESERVED. design by bootstrap.</div>
</footer>

  <script src="/static/plugins/jquery/jquery-3.1.0.min.js"></script>
  <script src="/static/plugins/bootstrap/js/bootstrap.min.js"></script>
  <script src="/static/js/main.js"></script>
</body>
</html>

