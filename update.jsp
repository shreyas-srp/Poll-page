<%@ page import ="java.sql.*" %>
<%
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/poll","root", "");
	//out.println(request.getParameter("opt"));
    Statement st = con.createStatement();
	ResultSet rs = st.executeQuery("select * from poll");
	if(rs.next())
	{
		int val = rs.getInt(request.getParameter("opt"));
		int total = rs.getInt("total");
		val = val + 1;
		total = total + 1;
		st.executeUpdate("UPDATE poll SET " +request.getParameter("opt") + " = " + val );
		st.executeUpdate("UPDATE poll SET total = " + total );
		request.getRequestDispatcher("result.jsp").forward(request,response);
	}
%>
