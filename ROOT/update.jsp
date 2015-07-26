<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>

<html>

<body background ="387452.jpg">

<center><p><h1> Updation Succesful</h1></p></center>
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
String pmarks = request.getParameter("pmarks");
String tmartks = request.getParameter("tmarks");
String subject = request.getParameter("phno");
String query = "insert into assessment(pmarks,tmarks,subject) values(?,?,?)where sid=?;";

PreparedStatement stmnt = conn.prepareStatement(query);
stmnt.setString(1,pmarks);
stmnt.setString(2,tmarks);
stmnt.setString(3,subject);
stmnt.setString(4,sid);

stmnt.execute();

conn.close();
%>

</body>
</html>
