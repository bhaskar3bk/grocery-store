$(function(){
	
	var contextPath = window.location.pathname.substring(0, window.location.pathname.indexOf("/",2));
	
	$(document).ready(function(){
		$('#addToCartButton').click(function(){
			
			var detailProductId = OFFER_ID;
			var detailProductName = OFFER_NAME;
			var detailProductImage = OFFER_IMAGE;
			var detailProductCost = price;
			var quantityIntake = $("#quantityIntake").val();
			
			var discountCoupan = '';
			var discountPercentage = '';
						
			if (ADD_TO_CART_JSON != '') {
				
				var productItemsList = ADD_TO_CART_JSON.items;
				
				for (i = 0; i < productItemsList.length; i++) {
					if (productItemsList[i].id == detailProductId) {
						quantityIntake = parseFloat(quantityIntake) + parseFloat(productItemsList[i].quant);
					}
				}
				
				for (i = 0; i < productItemsList.length; i++) {
					if (productItemsList[i].id != detailProductId) {
						detailProductId = detailProductId + '||' + productItemsList[i].id;
						detailProductName = detailProductName + '||' + productItemsList[i].name;
						detailProductImage = detailProductImage + '||' + productItemsList[i].url;
						detailProductCost = detailProductCost + '||' + productItemsList[i].cost;
						quantityIntake = quantityIntake + '||' + productItemsList[i].quant;
					}
				}
				
			}
			addProductToAddToCartSessionJson(detailProductId, detailProductName, detailProductImage, detailProductCost, quantityIntake, discountCoupan, discountPercentage);
		});
	});
	
	var addProductToAddToCartSessionJson = function(detailProductId, detailProductName, detailProductImage, detailProductCost, quantityIntake, discountCoupan, discountPercentage) {
		$.ajax({
			url: contextPath + '/db/dyn/addToCartSession?productId=' + detailProductId +'&productName=' + detailProductName +'&productImageUrl=' + detailProductImage + '&perCost=' + detailProductCost + '&quantity=' + quantityIntake,
			method: 'GET',
			dataType: 'json',
			success: function(response) {
				ADD_TO_CART_JSON = response;
			}
		});
	}
	
});