<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>

<html>

<body background ="387452.jpg">

<center><p><h1> Thank you for registration</h1></p></center>
<%
Connection conn = null;
try{
String connectionURL = "jdbc:mysql://localhost:3306/pratham3";
Class.forName("com.mysql.jdbc.Driver").newInstance();
conn = DriverManager.getConnection(connectionURL,"root","code4good");
if(!conn.isClosed()){
	out.println("connected");
}
}catch(Exception ex){
	out.println("unable to connect");
	}

String sid = request.getParameter("sid");
String name = request.getParameter("fname");

String query = "insert into student(sid,name)values(?,?);";

PreparedStatement stmnt = conn.prepareStatement(query);
stmnt.setString(1,sid);
stmnt.setString(2,name);

stmnt.execute();

conn.close();
%>

</body>
</html>
