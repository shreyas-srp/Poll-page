<%@ page import ="java.sql.*" %>
<% 
	String username = request.getParameter("s_username");    
    String password = request.getParameter("s_password");
	String name = request.getParameter("s_name");    
    String dob = request.getParameter("s_dob");
	String phone = request.getParameter("s_phone");
	//out.println(username);
	//out.println(password);
	//out.println(name);
	//out.println(dob);
	//out.println(phone);
	//password = name = dob = phone = Null;
    Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/poll","root", "");
    Statement st = con.createStatement();
	try{
		session.setAttribute("username", username);
	String sql = "Insert into users (username,name,dob,password,phone) values('"+ username +"','" + name +"','" + dob +"','" + password +"','" + phone +"')";
		st.executeUpdate(sql);
		response.sendRedirect("poll.html");
	}
	catch(Exception e)
	{
		out.println(e);
	}
	
	

%>