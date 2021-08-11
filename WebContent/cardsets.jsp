<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
	<title>Flashcards | Sheridan Study</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	
	<!-- Popper JS -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<!-- Latest compiled and minified CSS -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<!-- jQuery library -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<!-- Latest compiled JavaScript -->
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
	
	<link href="css/style.css" rel="stylesheet" type="text/css">
</head>

<body>
	<!-- menu bar / banner -->
	<jsp:include page="header.jsp"></jsp:include>
	
	<div class="container pad-top">
		<h1 class="display-1 text-center pad-top">Flashcards</h1>
	</div>

	<div class="container pad-top pb-5 mb-5">
		<table class="table table-hover">
			<thead>
				<tr>
					<th scope="col">Name</th>
					<th scope="col"># of Cards</th>
					<th scope="col">Date Created</th>
					<th class="text-center"><a href="FlashcardController?action=newset" class="btn btn-primary">New Set</a></th>
					<!-- leave empty for buttons -->
				</tr>
			</thead>
			
			<tbody>
				<c:forEach items="${csList }" var="cs">
					<tr>
						<td>${cs.setName }</td>
						<td>${fn:length(cs.cards) }</td>
						<td>${cs.date }</td>
						<td class="text-center">
							<a href="FlashcardController?setid=${cs.setId}&action=viewset" class="btn btn-outline-primary">View</a>
							<a href="FlashcardController?action=deleteset&setid=${cs.setId}" class="btn btn-danger">Delete</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<!-- footer -->
	<jsp:include page="footer.jsp"></jsp:include>
</body>

</html>
