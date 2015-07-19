$(function(){

	var contextPath = window.location.pathname.substring(0, window.location.pathname.indexOf("/",2));

	var readofferDetailInventoryJson = function() {
		$.ajax({
			url: contextPath + '/db/dyn/offerDetailInventoryJson?productId=' + OFFER_ID,
			method: 'GET',
			dataType: 'json',
			success: function(response) {
				var offerInventoryData = response;
				displayDetail(offerInventoryData);
			}
		});
	}
	
	var displayDetail = function(offerInventoryData) {

			var inventoryObj = offerInventoryData.inventory;
			var discount = inventoryObj.disc;
			price = inventoryObj.cost;
			var discountText = '';
			
			if (discount != 0) {
				var discountedPrice = '' + price*100/(100-discount);
				var decimal = discountedPrice.indexOf('.');
				if (decimal >= 0) {
					decimal = decimal + 3;
					discountedPrice = discountedPrice.substring(0, decimal);
				}
				discountText = '<span>Rs.' + discountedPrice + '</span> ';
			}
			
			var invTag = document.createElement('p');
			var costTag = document.createElement('p');
			var totalCostTag = document.createElement('div');
			
			invTag.innerHTML = inventoryObj.inv;
			costTag.innerHTML = discountText + 'Rs. ' + price;	
			totalCostTag.innerHTML = price;
			
			document.getElementById("product-inventory").appendChild(invTag);
			document.getElementById("product-cost").appendChild(costTag);
			document.getElementById("product-total-cost").appendChild(totalCostTag);
			
			readAddToCartSessionJson();
	}
	
	var readAddToCartSessionJson = function() {
		$.ajax({
			url: contextPath + '/db/dyn/addToCartSession',
			method: 'GET',
			dataType: 'json',
			success: function(response) {
				ADD_TO_CART_JSON = response;
			}
		});
	}

	readofferDetailInventoryJson();
	
	jQuery('.form-control').keyup(function () { 
		this.value = this.value.replace(/[^0-9\.]/g,'');
	});
	
	$('input.form-control').on('input',function(e){
		var inputQuantiry = $(this).val()
		var totalPrice = '' + price*inputQuantiry;
		
		var decimal = totalPrice.indexOf('.');
		if (decimal >= 0) {
			decimal = decimal + 3;
			totalPrice = totalPrice.substring(0, decimal);
		}
		
		document.getElementById("product-total-cost").innerHTML = "Rs. " + totalPrice;
	});
	
});