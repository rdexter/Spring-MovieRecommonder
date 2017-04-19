<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <%@taglib prefix="sec" --%>
<%-- 	uri="http://www.springframework.org/security/tags"%> --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
<meta charset="utf-8">
<title>Recommendation Engine</title>
<link rel="stylesheet" href="//fonts.googleapis.com/css?family=Asap">
<link rel="stylesheet"
	href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.2/css/bootstrap.min.css">
<style type="text/css">
* {
	font-family: 'Asap';
}
</style>
</head>
<body>
	<div style="margin-top: 16px;" class="container">
		<div class="row">
			<div class="col-xs-12">
				<div class="page-header">
					<h1>Hello, ${msg}!</h1>
				</div>
				<h2>
					<div class="pull-right">
						<form action="/refresh?user=priya" method="post">
							<button class="btn btn-primary">Refresh</button>
						</form>
					</div>
					Recommended Movies
				</h2>
				<div class="row">
					<c:set var="i" value="0" scope="page"></c:set>
					<c:forEach items="${movieList}" var="movie">
						<c:set var="i" value="${i+1 }" scope="page"></c:set>
						<c:if test="${i<=4 }">
							<div class="col-sm-3">
								<div class="thumbnail">
									<img src={title}>
									<div class="caption">
										<h4
											style="margin-bottom: 24px; text-overflow: ellipsis; white-space: nowrap; overflow: hidden;">
											<c:out value="${movie.title}" />
										</h4>
										<div class="row">
											<div class="col-xs-6">
												<form
													action="/like?movie=<c:out value="${movie.id}"/>&amp;user=<c:out value="${msg}"/>"
													method="post" class="text-center">
													<button class="btn btn-default">
														<span class="glyphicon glyphicon-thumbs-up"></span>
													</button>
												</form>
											</div>
											<div class="col-xs-6">
												<form
													action="/dislike?movie=<c:out value="${movie.id}"/>&amp;user=<c:out value="${msg}"/>"
													method="post" class="text-center">
													<button class="btn btn-default">
														<span class="glyphicon glyphicon-thumbs-down"></span>
													</button>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</c:if>

					</c:forEach>

				</div>
				<div class="row">
					<div class="col-xs-12">
						<h2>All Movies</h2>
					</div>
					<div class="row">
					<c:forEach items="${movieList}" var="movie">
							<div class="col-sm-3">
								<div class="thumbnail">
									<img src={title}>
									<div class="caption">
										<h4
											style="margin-bottom: 24px; text-overflow: ellipsis; white-space: nowrap; overflow: hidden;">
											<c:out value="${movie.title}" />
										</h4>
										<div class="row">
											<div class="col-xs-6">
												<form
													action="/like?movie=<c:out value="${movie.id}"/>&amp;user=<c:out value="${msg}"/>"
													method="post" class="text-center">
													<button class="btn btn-default">
														<span class="glyphicon glyphicon-thumbs-up"></span>
													</button>
												</form>
											</div>
											<div class="col-xs-6">
												<form
													action="/dislike?movie=<c:out value="${movie.id}"/>&amp;user=<c:out value="${msg}"/>"
													method="post" class="text-center">
													<button class="btn btn-default">
														<span class="glyphicon glyphicon-thumbs-down"></span>
													</button>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>

					</c:forEach>

				</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>