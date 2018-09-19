<?php 
$mysqli = new mysqli("localhost", "root", "toor", "Giftit");
require_once 'Include/mainpageconnect.php';
include 'Include/head.php';
include 'Include/navigation.php';
include 'Include/headerfull.php';
if($cart_id!=''){
	$cartQ=$mysqli->query("SELECT * FROM cart WHERE Id='{$cart_id}'");
	$result=mysqli_fetch_assoc($cartQ);
	$items=json_decode($result['items'],true);var_dump($items);
	$i=1;
	$sub_total=0;
	$item_count=0;
}

 ?>
<!-- <div class="col-md-12">
	<div class="row">
		<h2 class="text-center">My Shopping Cart</h2><hr>
		
		<table class="table table-condensed table-striped">
			<thead><th>#</th><th>Item</th><th>Price</th><th>Quantity</th><th>Size</th><th>SubTotal</th></thead>
			<tbody>
				
					<tr>
						<td>1</td>
						<td>Womens Plush Robe</td>
						<td>Ksh 2000</td>
						<td>2</td>
						<td>M/L</td>
						<td><script>
							var x=2000;
							var y=2;
							product=x*y;
							document.write(product);
						</script>
						
						</td>

					</tr>
					<tr>
						<td>2</td>
						<td>Think Big Novel</td>
						<td>Ksh 1200</td>
						<td>1</td>
						<td>OneSize</td>
						<td><script>
							var x=1200;
							var y=1;
							product=x*y;
							document.write(product);
						</script>
						
						</td>

					</tr>
					
			</tbody>
			
		</table>
		<table class="table table-condensed table-striped text-right">
			<legend>Totals</legend>
			<thead class="totals-table-header"><th>Total Items</th><th>Sub Total</th></thead>
			<tbody>
				<tr>
					<td>
						<script>
							var x=2;
							var y=1;
							sum=x+y;
							document.write(sum);
						</script>
					</td>
					<td class="bg-success">
						<script>
						var x=4000;
							var y=1200;
							sum=x+y;
							document.write(sum);
					</script>	
				</td>
				</tr>
			</tbody>
			
		</table> -->
		<!-- checkout button -->
<!-- <button type="button" class="btn btn-primary pull-right" data-toggle="modal" data-target="#checkoutModal">
 <span class="glyphicon glyphicon-shopping-cart"></span>  Checkout
</button> -->
<div class="modal fade" id="checkoutModal" tabindex="-1" role="dialog" aria-labelledby="checkoutModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="checkoutModalLabel">CHECK OUT</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <h3>Shipping Address</h3><br><h4>P.O.Box 104255 NAIROBI.</h4>
        <h3>Physical Address</h3><br><h4>Strathmore University</h4>
        <h3>Phone Number:</h3><br><h4>0719194390</h4>
        <h3>Lipa Na Mpesa</h3>
        <p>
        	<ol>
        		<li>Select payment services</li>
        		<li>Go to pay Bill option</li>
        		<li>Enter Business Number:<b>999000</b></li>
        		<li>Enter Account Number:<b>5yubnj87</b></li>
        		<li>Enter Amount:<b>Ksh 5200</b></li>
        	</ol>
        </p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Back to Cart</button>
       <a href="cart.php"> <button type="button" class="btn btn-primary">I have Paid</button></a>
      </div>
    </div>
  </div>
</div>




	</div>
</div>
 <?php
 include 'Include/footer.php';
 ?>