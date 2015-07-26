<%@ page import="java.sql.*" %> 
<%@ page import="java.io.*" %> 
<html> 
<head> 
<title>Connection with mysql database</title>
</head> 
<body>
<h1>Connection status</h1>
<% 

Connection connection = null;try{
    //String connectionURL = "jdbc:mysql://ec2-54-169-128-170.ap-southeast-1.compute.amazonaws.com:3306/pratham3";
    String connectionURL = "jdbc:mysql://localhost:3306/pratham3";
    
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
    connection = DriverManager.getConnection(connectionURL, "root", "code4good");
    if(!connection.isClosed())
         out.println("Successfully connected to " + "MySQL server using TCP/IP...");
 
}catch(Exception ex){
    out.println("Unable to connect to database.");
	ex.printStackTrace(new PrintWriter(out));
	}

String name = request.getParameter("u");
String cnumber = request.getParameter("p");

String query = "insert into registration values(?,?);";


	PreparedStatement stmnt = connection.prepareStatement(query);
	stmnt.setString(1,name);
	stmnt.setString(2,cnumber);
        stmnt.execute();
    
connection.close();
%>
</font>
</body> 
</html>
