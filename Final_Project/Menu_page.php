<!--                CGS-3066 , Final project.       By: Andres Candido               -->
<!DOCTYPE html>

<html>
    <head>
        <link rel="stylesheet" href="Restaurant_style.css">
        <script type="text/javascript" rel="script" src="Restaurant_code.js" defer></script>
    </head>

    <body>
        <header>
            <h1>Table 3066</h1>

            <ul>

                <li><a class="active" href="Menu_page.php">Menu</a></li>
                <li><a href="Open_Hours.html">Hours</a></li>
                <li><a href="Home_page.html">Home</a></li>
               
              </ul>

        </header>

        <div>
            <div class="slideshow-container">

                <div class="mySlides fade">
                  <img src="Food_Pictures/Pasta.png" style="width:100%">
                </div>
                
                <div class="mySlides fade">
                  <img src="Food_Pictures/Salad.png" style="width:100%">
                </div>
                
                <div class="mySlides fade">
                  <img src="Food_Pictures/Steak.png" style="width:100%">
                </div>
    
                <div class="mySlides fade">
                    <img src="Food_Pictures/Dessert.png" style="width:100%">
                </div>
                
                </div>
    
                <br>
    
                <div style="text-align:center"> <!-- 1 dot for each slide, dots are used in a script to make the slideshow work -->
                    <span class="dot"></span> 
                    <span class="dot"></span> 
                    <span class="dot"></span> 
                    <span class="dot"></span> 
                </div>
    
                <div class="sticky">
                    <h2> <span>&#8595;</span> See our Menu <span>&#8595;</span> </h2>
                </div>

        </div>

        <div class="content">
            <h1>Appetizers:</h1>
            <?php 
            //db connection
            require_once('db_connect.php');

            //write the query
            $q = "SELECT * FROM menu WHERE Type = 'Appetizer'";

            //run query
            $r = @mysqli_query($dbc, $q);

            $num = mysqli_num_rows($r);

            if($num > 0){
                //display menu 1 row at a time
                while($row = mysqli_fetch_array($r)){
                    echo "<h3>" . $row['Name'] . "</h3>";
                    echo "<p>" . $row['Description'] . "</p>";
                    echo "<p>" . $row['Price'] . "</p> <br>";
                }

            }
            else{
                echo "<p> No records were returned </p>";
            }
            ?>

            <h1>Entrees:</h1>
            <?php 

            //write the query
            $q = "SELECT * FROM menu WHERE Type = 'Entree'";

            //run query
            $r = @mysqli_query($dbc, $q);

            $num = mysqli_num_rows($r);

            if($num > 0){
                //display menu 1 row at a time
                while($row = mysqli_fetch_array($r)){
                    echo "<h3>" . $row['Name'] . "</h3>";
                    echo "<p>" . $row['Description'] . "</p>";
                    echo "<p>" . $row['Price'] . "</p> <br>";
                }

            }
            else{
                echo "<p> No records were returned </p>";
            }
            ?>

            <h1>Desserts:</h1>
            <?php 

            //write the query
            $q = "SELECT * FROM menu WHERE Type = 'Dessert'";

            //run query
            $r = @mysqli_query($dbc, $q);

            $num = mysqli_num_rows($r);

            if($num > 0){
                //display menu 1 row at a time
                while($row = mysqli_fetch_array($r)){
                    echo "<h3>" . $row['Name'] . "</h3>";
                    echo "<p>" . $row['Description'] . "</p>";
                    echo "<p>" . $row['Price'] . "</p> <br>";
                }

            }
            else{
                echo "<p> No records were returned </p>";
            }
            ?>

            <h1>Beverages:</h1>
            <?php 

            //write the query
            $q = "SELECT * FROM menu WHERE Type = 'Beverage'";

            //run query
            $r = @mysqli_query($dbc, $q);

            $num = mysqli_num_rows($r);

            if($num > 0){
                //display menu 1 row at a time
                while($row = mysqli_fetch_array($r)){
                    echo "<h3>" . $row['Name'] . "</h3>";
                    echo "<p>" . $row['Description'] . "</p>";
                    echo "<p>" . $row['Price'] . "</p> <br>";
                }

            }
            else{
                echo "<p> No records were returned </p>";
            }
            ?>

            <h1>Wines:</h1>
            <?php 

            //write the query
            $q = "SELECT * FROM menu WHERE Type = 'Wine'";

            //run query
            $r = @mysqli_query($dbc, $q);

            $num = mysqli_num_rows($r);

            if($num > 0){
                //display menu 1 row at a time
                while($row = mysqli_fetch_array($r)){
                    echo "<h3>" . $row['Name'] . "</h3>";
                    echo "<p>" . $row['Description'] . "</p>";
                    echo "<p>" . $row['Price'] . "</p> <br>";
                }

            }
            else{
                echo "<p> No records were returned </p>";
            }
            ?>
            
        </div>

        <br>

        <div class="content">
            <h1>Want new items on the menu?</h1>
            <h3>Submit them here!</h3>
            
            <form action="process_form.php" method="post">
                <label for="Type">Item type: </label>
                <select id="Type" name="Type">
                    <option>Appetizer</option>
                    <option>Entree</option>
                    <option>Dessert</option>
                    <option>Beverage</option>
                    <option>Wine</option>
                </select>

                <label for="Name">Name: </label>
                <input type="text" id="Name" name="Name">

                <label for="Description">Description: </label>
                <textarea id="Description" name="Description"></textarea>

                <label for="Price">Price: </label>
                <input type="number" id="Price" name="Price" min="0" step=".01">

                <br><br>

                <button>Sumbit Item</button>

                <br><br>

            </form>

        </div>

        <br>
 
    </body>

    <footer>
        <P>
            Our only location: PSC 769 Box 700 APO AP 96599-9998 <br> 
            <b> Copyright &copy by Andres Candido </b> <br> All Rights Reserved.
        </P>
    </footer>