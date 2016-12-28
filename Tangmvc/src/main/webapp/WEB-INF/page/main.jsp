<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>全唐诗主页面</title>
<link rel="stylesheet" type="text/css"
	href="http://localhost:8080/Tangmvc/css/style.css" />
<link rel="stylesheet" type="text/css"
	href="http://localhost:8080/Tangmvc/css/bootstrap.min.css">
</head>
<body>
	<div class="content">
		<div class="container">
			<a href="main.html"> <img alt="图片"
				src="http://localhost:8080/Tangmvc/image/main_top_bg.png">
			</a>
			<div class="row">
				<div class="col-sm-6 col-sm-offset-3">
					<form role="form" action="query.html" method="post">
						<div class="form-group">
							<div class="col-sm-3">
								<select class="form-control" name="query_method">
									<option value="poet">作者</option>
									<option value="title">诗词名称</option>
									<option value="content">诗词名句</option>
								</select>
							</div>
							<div class="input-group">
								<input type="text" name="query_context" required="required"
									class="form-control" placeholder="请输入搜索内容"></input> <span
									class="input-group-btn">
									<button class="btn btn-default" type="submit">搜索</button>
								</span>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</body>
</html>