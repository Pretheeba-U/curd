<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%	String uname = (String) session.getAttribute("username");
 %>
         <form action="controller" method = "post">

       username :  <input type="text" name="username" required><br><br>
       gender :
                 <input type="radio" name="gender" value="male">male
                 <input type="radio" name="gender" value="female">female<br><br>
              
       phoneno :  <input type="tel" name="phoneno"><br><br>
       email :  <input type="email" name="email" required ><br><br>
       password :  <input type="password" name="password" required><br><br>
       <input type="submit" value="submit">
              <input type="hidden" name="action" value="update">
       
   </form>
      
</body>
</html>