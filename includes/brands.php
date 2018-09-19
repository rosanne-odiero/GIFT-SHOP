<?php  
$mysqli = new mysqli("localhost", "root", "toor ", "Giftit");
include 'includes/head.php';
include'includes/navigation.php';
?>
Brands
<table class="table table-boardered table-striped">
	<thead>
		<th></th><th>Brands</th><th></th>


	</thead>
	<tbody>
		<tr>
			<td></td>
			<td>BrandName</td>
			<td></td>
		</tr>
	</tbody>
</table>
<?php include 'includes/footer.php'; ?>
