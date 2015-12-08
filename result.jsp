<!DOCTYPE html>
<%@ page import ="java.sql.*" %>
<% if(session.getAttribute("username")==null)
		response.sendRedirect("Index.jsp");
	%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Results</title>
	<link rel="stylesheet" href="https://bootswatch.com/darkly/bootstrap.min.css">    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	
		function like(btn)
			{
				//alert("dfgf");
				btn.disabled = true;
				var index = btn.parentNode.parentNode.rowIndex;
				//alert(index);
				var xmlHttp = new XMLHttpRequest();
				xmlHttp.open( "GET", "http://localhost:8080/Poll-page/getlinks.jsp?row="+index, false );
				xmlHttp.send( null );
				alert("Like Succesful");
			
			}
			
	
	</script>
</head>
<!--body style="background-color:#3B3738"-->
<body>
    <div class = "jumbotron" style="background-color:#4dd100;max-height:180px"> 
        <h1 class="text-center"> Results</h1>
    </div>
    <div class = "container" >
    
	<br>
    <div class = "text-center"> 
            
			<%! int values[] = new int[7]; %>
			
			<%
	Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/poll","root", "");
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from poll");
    if (rs.next()) {
		values[0] = rs.getInt("agra");
		values[1] = rs.getInt("varanasi");
		values[2] = rs.getInt("lek");
		values[3] = rs.getInt("hampi");
		values[4] = rs.getInt("darjeeling");
		values[5] = rs.getInt("goa");
        //session.setAttribute("userid", userid);
        //out.println("welcome " + userid);
        //out.println("<a href='logout.jsp'>Log out</a>");
        //response.sendRedirect("poll.html");
    } else {
        out.println("try again");
    }
	
	
			%>

            <canvas id="polling_chart" width="400" height="400" class = "center" style="color:#4dd100"></canvas>

            <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/1.0.2/Chart.min.js"></script>

            <script type="text/javascript" >
            var val = new Array(6);
			val[0] = <%= values[0]%>;
			val[1] = <%= values[1]%>;
			val[2] = <%= values[2]%>;
			val[3] = <%= values[3]%>;
			val[4] = <%= values[4]%>;
			val[5] = <%= values[5]%>;
			//alert("val[0] =");
			//alert("dhfhg");
			
                var ctx = document.getElementById("polling_chart").getContext("2d");
                var data =  {
                                labels: ["Agra", "Varanasi", "Ladakh", "Hampi", "Darjeeling", "Goa"],
                                datasets: [
                                    {
                                        label: "My First dataset",
                                        fillColor: "rgba(20,220,20,0.5)",
                                        strokeColor: "rgba(20,220,20,0.8)",
                                        highlightFill: "rgba(20,220,20,0.75)",
                                        highlightStroke: "rgba(20,20,20,1)",
                                        data: [ val[0],val[1],val[2],val[3],val[4],val[5] ]
                                    }
                                ]
                            };

                var pollingChart = new Chart(ctx).Bar(data);
			
            </script>

        </div>
		
		<br><br>
		
		<div class="container"> <h1> A bit about your choice </h1> </div>
		<br><br>
		<div class="container" >
			
			
			
			
			<div id="hampi" >
				<h2> Hampi </h2>
				
				<br><br>
				
				<p>
				Hampi is one of the UNESCO World Heritage Sites in India located near Hospet town in the Karnataka state .
Hampi is charismatic even in its ruined state, attracting thousands of visitors every year. Vast stretches of boulder-strewn hills make the backdrop of Hampi unique. Dotted around the hills and valleys are 500 plus monuments.
Among them are beautiful temples, ruins of palaces, remains of aquatic structures, ancient market streets, royal pavilions, bastions, royal platforms, treasury buildings... the list is practically endless. Hampi is a backpacker's paradise, the same way a pilgrim's delight.
In Hampi at every turn there is a surprise. Every monument hides more than what they reveal.
As an open museum, Hampi has numerous popular (100 plus!) locations visitors throng.
				
				</p>
				
				<br><br>
				
				<div>
				<img class="center-block img-responsive" src="img/humpi.jpg" alt="Hampi" >
				</div>
			
			
			
			
			<br><br><br>
			
			<h2> Read More </h2>
			
			<br><br>
			
			
		</div>
		
		</div>
		
		<div class="container" >
			
			
			
			<div id="agra" >
				<h2> Agra </h2>
				
				<p>
				Agra, a city in northern India’s Uttar Pradesh state, is home to the iconic Taj Mahal, 
				a mausoleum built for the Mughal ruler Shah Jahan’s wife, Mumtaz Mahal, who died in childbirth 
				in 1631. Set behind a reflecting pool inside a courtyard defined by 4 minarets, the imposing main 
				building features a massive dome 
				and intricately carved white marble inlaid with precious stones.
				
				</p>
				
				<br><br>
				
				<p>
				
				
				</p>
				
				<br><br>
				
				<div>
				<img class="center-block img-responsive" src="img/agra.jpg" alt="Agra" >
				</div>
			
			
			
			
			<br><br><br>
			
			<h2> Read More </h2>
			
			<br><br>
			
			</div>
			
			</div>
			
			
			
			<div class="container" >
			
			
			<div id="darjeeling" >
				<h2> Darjeeling </h2>
				
				<p>
				Darjeeling is a town in India's West Bengal state, in the Himalayan foothills. Once a summer resort for the British Raj elite, 
				it remains the terminus of the narrow-gauge Darjeeling Himalayan Railway, or “Toy Train,” completed in 1881. It's famed for the distinctive black tea grown on 
				plantations that dot its surrounding slopes. Its backdrop is Mt. Kanchenjunga, among the world’s highest peaks.
				
				</p>
				
				<br><br>
				
				<p>
				
				
				</p>
				
				<br><br>
				
				<div>
				<img class="center-block img-responsive" src="img/darjeling.jpg" alt="Agra" >
				</div>
			
			
			
			
			<br><br><br>
			
			<h2> Read More </h2>
			
			<br><br>
			
			</div>
			
			</div>
			
			
			<div class="container" >
			
			
			<div id="lek" >
				<h2> Ladakh </h2>
				
				<p>
				District Leh is situated roughly between 32 to 36 degree north Latitude and 75 to 80 degree East longitude and altitude ranging from 2300 mtrs to 5000 mtrs above sea level. District Leh with and area of 45100 Sq. Kms. makes it one of the largest District in the country.The District is bounded by Pakistan occupied Kashmir in the west and China in the North and eastern part and Lahul Spiti of Himachal Pardesh in the south east. It is at a distance of 434 Kms from State capital ( Summer) Srinagar and 474 Kms from Manali (HP).

Topographically, the whole of the district is mountainous with three parallel ranges of the Himalayas, the Zanskar, the Ladakh and the Karakoram. Between these ranges, the Shayok, Indus and Zanskar rivers flow and most of the population lives in valleys of these rivers.    
				
				</p>
				
				<br><br>
				
				<p>
				
				
				</p>
				
				<br><br>
				
				<div>
				<img class="center-block img-responsive" src="img/lek.jpg" alt="Agra" >
				</div>
			
			
			
			
			<br><br><br>
			
			<h2> Read More </h2>
			
			<br><br>
			
			</div>
			
			</div>
			
			
			<div class="container" >
			
			
			<div id="goa" >
				<h2> Goa </h2>
				
				<p>
				Goa is a state in western India with coastlines stretching along the Arabian Sea. 
				Its long history as a Portuguese colony prior to 1961 is evident in its preserved 
				16th-century churches and the area’s tropical spice plantations. Goa is also known for its beaches, ranging from 
				popular stretches at Baga and Palolem to laid-back fishing villages such as Agonda.
				
				</p>
				
				<br><br>
				
				<p>
				
				
				</p>
				
				<br><br>
				
				<div>
				<img class="center-block img-responsive" src="img/goa.jpg" alt="Agra" >
				</div>
			
			
			
			
			<br><br><br>
			
			<h2> Read More </h2>
			
			
			</div>
			
			</div>
			
			
			
			
			<div class="container">
			
			<table class="table table-bordered table-striped" id = "ptable">
				<thead>
					<tr>
						<th>Index</th>
						<th>Link</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody>
			
			
			<%
	String placeChosen = request.getParameter("opt");
	Statement st1 = con.createStatement();
    ResultSet rs1;
	rs1 = st1.executeQuery("select * from link where place = '"+ placeChosen +"' order by likes"   );
	int i  = 1;
	while(rs1.next())
	{
		//out.print("<script type="text/javascript"> alert(1)</script>");
		 %>
		 
		 <tr>
						<td ><%= i %></td>
						<td style="width:500px" ><a href="<%= rs1.getString("link") %>"><%= rs1.getString("link") %></a> </td>
						<td><button class="center-block btn btn-default" style="padding-left:30px;padding-right:30px;" onClick="like(this)" > Like </button> </td>
					</tr>
			
		<% 
		i++;
	} %>
			
				</tbody>
				
			</table>
			
			</div>
			
			<script type="text/javascript">
				
				var url = window.location.href;
				document.getElementById('agra').style.display = "none";
				document.getElementById('goa').style.display = "none";
				document.getElementById('darjeeling').style.display = "none";
				document.getElementById('lek').style.display = "none";
				document.getElementById('hampi').style.display = "none";
				// Check if URL contains the keyword
				if( url.search( 'agra' ) > 0 ) {
					// Display the message
					//alert("agra");
				document.getElementById('agra').style.display = "block";
				}
				else if( url.search( 'goa' ) > 0 ) {
					// Display the message
					//alert("goa");
				document.getElementById('goa').style.display = "block";
				}
				else if( url.search( 'lek' ) > 0 ) {
					// Display the message
					//alert("lek");
				document.getElementById('lek').style.display = "block";
				}
				else if( url.search( 'darjeeling' ) > 0 ) {
					// Display the message
					//alert("darjeeling");
				document.getElementById('darjeeling').style.display = "block";
				}
				else if( url.search( 'hampi' ) > 0 ) {
					// Display the message
					//alert("hampi");
				document.getElementById('hampi').style.display = "block";
				}
			
			</script>
			
			<br><br>
			
			<div class=" container center-block">
			<form   action="logout.jsp">
			<input class = " col-md-offset-4 btn btn-primary col-md-4" type="submit" value="Logout"/>
				</form>
			</div>
		
		<br><br>
		
	
</body>
</html>
