<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add notes</title>
 <%@ include file="all_js_css.jsp" %>
</head>
<body>
<div class="container">
   <%@ include file="navbar.jsp" %>
  <h1>please Fill your note details</h1>
  <br>
  </div>
  <form action="SaveNoteServlet" method="post">
  
  <div class="form-group">
    <label for="title" class="form-label">Note Title</label>
    
    <input name="title"
      type="text" class="form-control" id="t
    itle" aria-describedby="emailHelp" required
    placeholder="Enter here" >
  </div>
  
  <div class="form-group">
    <label for="content">Note content</label>
<textarea name="content" id="content"  class="form-control" style="height: 300px" required></textarea></div>
  
  <div class="container text-center">
    <button type="submit" class="btn btn-primary">ADD</button>
  
  </div>
    
 
</form>
  
  
   
    <br>
    


</body>
</html>