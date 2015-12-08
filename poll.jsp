<!DOCTYPE html>
<% if(session.getAttribute("username")==null)
		response.sendRedirect("Index.jsp");
	%>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Top Tourist Sites</title>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="https://bootswatch.com/darkly/bootstrap.min.css">
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.min.js"></script>
        <script src = "poll_jquery.js"></script>
		<link rel="stylesheet" href="animate.css">
	
    
</head>
<!--body style="background-color:#3B3738"-->
<body >
    
    <div class = "jumbotron" style="background-color:#4dd100;max-height:">
		<h1 class="text-center">Top Tourist Spots in India</h1>
		<h4 class="text-center">A Poll </h4>
	</div>

	<!--div class = "container lead" style="color:#FDF3E7" -->
	<div class = "container lead"  >

	<h3>Choose your favourite Tourist Spot from the list below </h3><br>

		<form method = "get" action="update.jsp">
            <div class = "row">
                <div class = "col-md-5">

                    <div class = "radio" name="opt" id = "agra" >
                        <label > <input type="radio" name = "opt" value = "agra">Agra</label>
                    </div>
                    <div class = "radio" name="opt" id="varanasi">
                        <label> <input type = "radio" name = "opt" value = "varanasi">Varanasi</label>
                    </div>
                    <div class = "radio" name="opt" id="lek">
                        <label> <input type = "radio" name = "opt" value = "lek">Ladakh</label>
                    </div>
                    <div class = "radio"  name="opt" id="humpi">
                        <label> <input type = "radio" name = "opt" value = "hampi">Hampi</label>
                    </div>
                    <div class = "radio" name="opt" id="daj">
                        <label> <input type = "radio" name = "opt" value = "darjeeling">Darjeeling</label>
                    </div>
                    <div class = "radio" name="opt" id="goa">
                        <label> <input type = "radio" name = "opt" value = "goa">Goa</label>
                    </div>
					<br>
                    <div class="text-center"> 
                        <input type = "submit" class="btn btn-primary col-md-5 col-md-offset-5" value="Submit">
                    </div>
                
                </div>
				
                <div class = " image col-md-5 col-md-offset-1" id = "body"></div>
                
            </div>
		</form>
	</div>
    

    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

</body>
</html>
