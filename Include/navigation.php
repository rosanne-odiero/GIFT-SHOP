<?php
$mysqli = new mysqli("localhost", "root", "toor", "Giftit");
$sql= "SELECT * FROM categories WHERE Parent = 0";
$pquery=$mysqli->query($sql);
?>

<header>
<nav class="navbar navbar fixed-top navbar-light bg-light">
	<a href="mainpage.php" class="navbar-brand"><img src="images/download.jpg" width="50"></a>
			<ul class="nav navbar-nav navbar-right">
				<?php while($Parent =mysqli_fetch_assoc($pquery)):?>
					<?php 
					$Parent_ID=$Parent['Id'];
					$sql2="SELECT * FROM categories WHERE Parent = '$Parent_ID'";
					$cquery=$mysqli->query($sql2);
					?>
				<li><a href="" class="dropdown-toggle" data-toggle="dropdown"><?php echo $Parent['CategoryName'] ?><span class="caret"></span></a>
     				<ul>
     					 <?php
     					 while($child = mysqli_fetch_assoc($cquery)): ?>
     					<li><a href="category.php?cate=<?=$child['Id'];?>"><?php echo $child['CategoryName'];?> </a></li>
     				<?php endwhile; ?>
     				</ul>
				</li>
 				<?php endwhile;?>
 				<li>
 					<a href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a>
 				</li>
				<li><a href="register.html"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                <li><a href="LoginForm.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul> 
		</nav>
	</header>
	