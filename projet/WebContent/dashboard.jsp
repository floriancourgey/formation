 <%@page import="java.util.*"%>
 <%@page import="com.floriancourgey.java.cours1.models.Computer"%>
 
<jsp:include page="include/header.jsp" />

<% ArrayList<Computer> computers = (ArrayList<Computer>) request.getAttribute("computers"); %>

<div class="container-fluid">
  <div class="row">
  	<div class="col-md-12">
	<h1 id="homeTitle"><%= computers.size() %> Computers found</h1>
	</div>
  </div>
	<div class="row" id="actions">
		<div class="col-md-10">
		<form action="" method="GET" class="form-inline" role="form">
			<input type="search" id="searchbox" name="search" class="form-control"
				value="" placeholder="Search name">
			<input type="submit" id="searchsubmit"
				value="Filter by name"
				class="btn btn-primary">
		</form>
		</div>
		<div>
		</div>
		<div class="col-md-2">
		<a id="add" href="addComputer.jsp" role="button" class="btn btn-success pull-right">Add Computer</a>
		</div>
	</div>
	<div class="row">
		<div class="col-md-12">
		<table class="computers table table-striped table-bordered">
			<thead>
				<tr>
					<!-- Variable declarations for passing labels as parameters -->
					<!-- Table header for Computer Name -->
					<th>Computer Name</th>
					<th>Introduced Date</th>
					<!-- Table header for Discontinued Date -->
					<th>Discontinued Date</th>
					<!-- Table header for Company -->
					<th>Company</th>
				</tr>
			</thead>
			<tbody>
				<% for(Computer c : computers) { %>
				<tr>
					<td><a href="#" onclick=""><%= c.getName() %></a></td>
					<td><%= c.getIntroduced() %></td>
					<td><%= c.getDiscontinued() %></td>
					<td><%= c.getCompany() %></td>
				</tr>
				<% } %>
				<tr>
					<td><a href="#">Precision 3500</a></td>
					<td>2010-05-07</td>
					<td>2012-06-01</td>
					<td>Dell</td>
				</tr>
				<tr>
					<td><a href="#">Macbook Air</a></td>
					<td>2005-05-09</td>
					<td>2008-06-06</td>
					<td>Apple</td>
				</tr>
			</tbody>
		</table>
		</div>
		</div>
</div>

<jsp:include page="include/footer.jsp" />
