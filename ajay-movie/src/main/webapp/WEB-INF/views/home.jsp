<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%-- <%@taglib prefix="sec" --%>
<%-- 	uri="http://www.springframework.org/security/tags"%> --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isScriptingEnabled="true" isELIgnored="false" %> 

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

<h1>Message : ${movieList}</h1>
<c:forEach items="${movieList}" var="movie">     
    <c:out value="${movie.title}"/>
</c:forEach>

<!-- 	<div style="margin-top: 16px;" class="container"> -->
<!-- 		<div class="row"> -->
<!-- 			<div class="col-xs-12"> -->
<!-- 				<div class="page-header"> -->
<%-- 					<h1>Hello, ${userName}!</h1> --%>
<!-- 				</div> -->
<!-- 				<h2> -->
<!-- 					<div class="pull-right"> -->
<!-- 						<form action="/refresh?user=priya" method="post"> -->
<!-- 							<button class="btn btn-primary">Refresh</button> -->
<!-- 						</form> -->
<!-- 					</div> -->
<!-- 					Recommended Movies -->
<!-- 				</h2> -->
<!-- 				<div class="row"> -->
<!-- 				{for loop for coloumn} -->
<!-- 					<div class="col-sm-3"> -->
<!-- 						<div class="thumbnail"> -->
<!-- 							<img src={title}> -->
<!-- 							<div class="caption"> -->
<!-- 								<h4 -->
<!-- 									style="margin-bottom: 24px; text-overflow: ellipsis; white-space: nowrap; overflow: hidden;">{title}</h4> -->
<!-- 								<div class="row"> -->
<!-- 									<div class="col-xs-6"> -->
<!-- 										<form action="/like?movie={movie_id}&amp;user={user}" -->
<!-- 											method="post" class="text-center"> -->
<!-- 											<button class="btn btn-default"> -->
<!-- 												<span class="glyphicon glyphicon-thumbs-up"></span> -->
<!-- 											</button> -->
<!-- 										</form> -->
<!-- 									</div> -->
<!-- 									<div class="col-xs-6"> -->
<!-- 										<form action="/dislike?movie={movie_id}&amp;user={user}" -->
<!-- 											method="post" class="text-center"> -->
<!-- 											<button class="btn btn-default"> -->
<!-- 												<span class="glyphicon glyphicon-thumbs-down"></span> -->
<!-- 											</button> -->
<!-- 										</form> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 				<div class="row"> -->
<!-- 					<div class="col-xs-12"> -->
<!-- 						<h2>All Movies</h2> -->
<!-- 						{for loop for row} -->
<!-- 						<div class="row"> -->
<!-- 						{for loop for coloumn} -->
<!-- 							<div class="col-sm-3"> -->
<!-- 								<div class="thumbnail"> -->
<!-- 									<img src={title}> -->
<!-- 									<div class="caption"> -->
<!-- 										<h4 -->
<!-- 											style="margin-bottom: 24px; text-overflow: ellipsis; white-space: nowrap; overflow: hidden;">{title}</h4> -->
<!-- 										<div class="row"> -->
<!-- 											<div class="col-xs-6"> -->
<!-- 												<form action="/like?movie={movie_id}&amp;user={user}" -->
<!-- 													method="post" class="text-center"> -->
<!-- 													<button class="btn btn-default"> -->
<!-- 														<span class="glyphicon glyphicon-thumbs-up"></span> -->
<!-- 													</button> -->
<!-- 												</form> -->
<!-- 											</div> -->
<!-- 											<div class="col-xs-6"> -->
<!-- 												<form action="/dislike?movie={movie_id}&amp;user={user}" -->
<!-- 													method="post" class="text-center"> -->
<!-- 													<button class="btn btn-default"> -->
<!-- 														<span class="glyphicon glyphicon-thumbs-down"></span> -->
<!-- 													</button> -->
<!-- 												</form> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="row"> -->
<!-- 							<div class="col-sm-3"> -->
<!-- 								<div class="thumbnail"> -->
<!-- 									<img -->
<!-- 										src="//upload.wikimedia.org/wikipedia/en/0/0c/X-Men_Days_of_Future_Past_poster.jpg"> -->
<!-- 									<div class="caption"> -->
<!-- 										<h4 -->
<!-- 											style="margin-bottom: 24px; text-overflow: ellipsis; white-space: nowrap; overflow: hidden;">X-Men: -->
<!-- 											Days of Future Past</h4> -->
<!-- 										<div class="row"> -->
<!-- 											<div class="col-xs-6"> -->
<!-- 												<form action="/like?movie=5&amp;user=priya&amp;unset=yes" -->
<!-- 													method="post" class="text-center"> -->
<!-- 													<button class="btn btn-default active"> -->
<!-- 														<span class="glyphicon glyphicon-thumbs-up"></span> -->
<!-- 													</button> -->
<!-- 												</form> -->
<!-- 											</div> -->
<!-- 											<div class="col-xs-6"> -->
<!-- 												<form action="/dislike?movie=5&amp;user=priya" method="post" -->
<!-- 													class="text-center"> -->
<!-- 													<button class="btn btn-default"> -->
<!-- 														<span class="glyphicon glyphicon-thumbs-down"></span> -->
<!-- 													</button> -->
<!-- 												</form> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="col-sm-3"> -->
<!-- 								<div class="thumbnail"> -->
<!-- 									<img -->
<!-- 										src="http://upload.wikimedia.org/wikipedia/en/e/e8/Captain_America_The_Winter_Soldier.jpg"> -->
<!-- 									<div class="caption"> -->
<!-- 										<h4 -->
<!-- 											style="margin-bottom: 24px; text-overflow: ellipsis; white-space: nowrap; overflow: hidden;">Captain -->
<!-- 											America: The Winter Soldier</h4> -->
<!-- 										<div class="row"> -->
<!-- 											<div class="col-xs-6"> -->
<!-- 												<form action="/like?movie=6&amp;user=priya" method="post" -->
<!-- 													class="text-center"> -->
<!-- 													<button class="btn btn-default"> -->
<!-- 														<span class="glyphicon glyphicon-thumbs-up"></span> -->
<!-- 													</button> -->
<!-- 												</form> -->
<!-- 											</div> -->
<!-- 											<div class="col-xs-6"> -->
<!-- 												<form action="/dislike?movie=6&amp;user=priya" method="post" -->
<!-- 													class="text-center"> -->
<!-- 													<button class="btn btn-default"> -->
<!-- 														<span class="glyphicon glyphicon-thumbs-down"></span> -->
<!-- 													</button> -->
<!-- 												</form> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="col-sm-3"> -->
<!-- 								<div class="thumbnail"> -->
<!-- 									<img -->
<!-- 										src="http://upload.wikimedia.org/wikipedia/en/6/63/MockingjayPart1Poster3.jpg"> -->
<!-- 									<div class="caption"> -->
<!-- 										<h4 -->
<!-- 											style="margin-bottom: 24px; text-overflow: ellipsis; white-space: nowrap; overflow: hidden;">The -->
<!-- 											Hunger Games: Mockingjay - Part 1</h4> -->
<!-- 										<div class="row"> -->
<!-- 											<div class="col-xs-6"> -->
<!-- 												<form action="/like?movie=7&amp;user=priya&amp;unset=yes" -->
<!-- 													method="post" class="text-center"> -->
<!-- 													<button class="btn btn-default active"> -->
<!-- 														<span class="glyphicon glyphicon-thumbs-up"></span> -->
<!-- 													</button> -->
<!-- 												</form> -->
<!-- 											</div> -->
<!-- 											<div class="col-xs-6"> -->
<!-- 												<form action="/dislike?movie=7&amp;user=priya" method="post" -->
<!-- 													class="text-center"> -->
<!-- 													<button class="btn btn-default"> -->
<!-- 														<span class="glyphicon glyphicon-thumbs-down"></span> -->
<!-- 													</button> -->
<!-- 												</form> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="col-sm-3"> -->
<!-- 								<div class="thumbnail"> -->
<!-- 									<img -->
<!-- 										src="http://upload.wikimedia.org/wikipedia/en/0/02/The_Amazing_Spiderman_2_poster.jpg"> -->
<!-- 									<div class="caption"> -->
<!-- 										<h4 -->
<!-- 											style="margin-bottom: 24px; text-overflow: ellipsis; white-space: nowrap; overflow: hidden;">The -->
<!-- 											Amazing Spider-Man 2</h4> -->
<!-- 										<div class="row"> -->
<!-- 											<div class="col-xs-6"> -->
<!-- 												<form action="/like?movie=8&amp;user=priya" method="post" -->
<!-- 													class="text-center"> -->
<!-- 													<button class="btn btn-default"> -->
<!-- 														<span class="glyphicon glyphicon-thumbs-up"></span> -->
<!-- 													</button> -->
<!-- 												</form> -->
<!-- 											</div> -->
<!-- 											<div class="col-xs-6"> -->
<!-- 												<form action="/dislike?movie=8&amp;user=priya" method="post" -->
<!-- 													class="text-center"> -->
<!-- 													<button class="btn btn-default"> -->
<!-- 														<span class="glyphicon glyphicon-thumbs-down"></span> -->
<!-- 													</button> -->
<!-- 												</form> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 						<div class="row"> -->
<!-- 							<div class="col-sm-3"> -->
<!-- 								<div class="thumbnail"> -->
<!-- 									<img -->
<!-- 										src="http://upload.wikimedia.org/wikipedia/en/7/77/Dawn_of_the_Planet_of_the_Apes.jpg"> -->
<!-- 									<div class="caption"> -->
<!-- 										<h4 -->
<!-- 											style="margin-bottom: 24px; text-overflow: ellipsis; white-space: nowrap; overflow: hidden;">Dawn -->
<!-- 											of the Planet of the Apes</h4> -->
<!-- 										<div class="row"> -->
<!-- 											<div class="col-xs-6"> -->
<!-- 												<form action="/like?movie=9&amp;user=priya" method="post" -->
<!-- 													class="text-center"> -->
<!-- 													<button class="btn btn-default"> -->
<!-- 														<span class="glyphicon glyphicon-thumbs-up"></span> -->
<!-- 													</button> -->
<!-- 												</form> -->
<!-- 											</div> -->
<!-- 											<div class="col-xs-6"> -->
<!-- 												<form action="/dislike?movie=9&amp;user=priya" method="post" -->
<!-- 													class="text-center"> -->
<!-- 													<button class="btn btn-default"> -->
<!-- 														<span class="glyphicon glyphicon-thumbs-down"></span> -->
<!-- 													</button> -->
<!-- 												</form> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 							<div class="col-sm-3"> -->
<!-- 								<div class="thumbnail"> -->
<!-- 									<img -->
<!-- 										src="http://upload.wikimedia.org/wikipedia/en/b/bc/Interstellar_film_poster.jpg"> -->
<!-- 									<div class="caption"> -->
<!-- 										<h4 -->
<!-- 											style="margin-bottom: 24px; text-overflow: ellipsis; white-space: nowrap; overflow: hidden;">Interstellar</h4> -->
<!-- 										<div class="row"> -->
<!-- 											<div class="col-xs-6"> -->
<!-- 												<form action="/like?movie=10&amp;user=priya&amp;unset=yes" -->
<!-- 													method="post" class="text-center"> -->
<!-- 													<button class="btn btn-default active"> -->
<!-- 														<span class="glyphicon glyphicon-thumbs-up"></span> -->
<!-- 													</button> -->
<!-- 												</form> -->
<!-- 											</div> -->
<!-- 											<div class="col-xs-6"> -->
<!-- 												<form action="/dislike?movie=10&amp;user=priya" -->
<!-- 													method="post" class="text-center"> -->
<!-- 													<button class="btn btn-default"> -->
<!-- 														<span class="glyphicon glyphicon-thumbs-down"></span> -->
<!-- 													</button> -->
<!-- 												</form> -->
<!-- 											</div> -->
<!-- 										</div> -->
<!-- 									</div> -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->

</body>
</html>