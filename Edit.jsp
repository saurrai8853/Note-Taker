<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.helper.*,org.hibernate.*,com.entities.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update:title&content</title>
<%@ include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
   <%@ include file="navbar.jsp" %>
   <h1>Edit your notes</h1>
   <br>
   <%
   int noteId=Integer.parseInt(request.getParameter("note_id"));
   Session s=FactoryProvider.getFactory().openSession();
	
	 Note note=s.get(Note.class, noteId);
   %>
   <form action="updateservlet" method="post">
   <input value="<%= note.getId()%>" name="noteId" type="hidden">
  
  <div class="form-group">
    <label for="title" class="form-label">Note Title</label>
    
    <input name="title"
      type="text" class="form-control" id="t
    itle" aria-describedby="emailHelp" required
    placeholder="Enter here" 
    value="<%=note.getTitle() %>"
    >
  </div>
  
  <div class="form-group">
    <label for="content">Note content</label>
<textarea name="content" id="content"  class="form-control" style="height: 300px" required
><%= note.getContent()%>
</textarea></div>
  
  <div class="container text-center">
    <button type="submit" class="btn btn-success">Update</button>
  
  </div>
    
 
</form>
   </div>
</body>
</html>