$(function(){

	var contextPath = window.location.pathname.substring(0, window.location.pathname.indexOf("/",2));
	var readBrowseOfferJson = function() {
		$.ajax({
			url: contextPath + '/db/dyn/offerInventoryJson',
			method: 'GET',
			dataType: 'json',
			success: function(response) {
				var offerInventoryData = response;
				readInventoryJson(offerInventoryData);
			}
		});
	}
	
	var readInventoryJson = function(offerInventoryData) {
		$.ajax({
			url: contextPath + '/db/stat/browseOffersJson',
			method: 'GET',
			dataType: 'json',
			success: function(response) {
				var browseOfferData = response;
				displayOffers(offerInventoryData, browseOfferData);
			}
		});
	}

	var displayOffers = function(offerInventoryData, browseOfferData) {
		var defaultOfferList = offerInventoryData.defaultList;
		var inventoryList = offerInventoryData.offerInventory;
		var browseOfferList = browseOfferData.browseOffers;
		var offersList = defaultOfferList, i;
		for (i of defaultOfferList) {
			var div = document.createElement('div');
			var mainOfferId = inventoryList[i].map;
			var price = inventoryList[i].cost;
			var discount = inventoryList[i].disc;
			var discountText = '';
			var discountPercentage = '';
			
			if (discount != 0) {
				var discountedPrice = '' + price*100/(100-discount);
				var decimal = discountedPrice.indexOf('.');
				if (decimal < 0) {
					discountText = '<span>Rs.' + discountedPrice + '</span> ';
				} else {
					decimal = decimal + 3;
					discountedPrice = discountedPrice.substring(0, decimal);
					discountText = '<span>Rs.' + discountedPrice + '</span> ';
				}
				discountPercentage = '<div class="product-sale">' + discount + '% <br> off</div>';
			}
			
			var productName = browseOfferList[mainOfferId].name;
			productName = productName.replace(/[&\/\\#, +()$~%.'":*?<>{}]/g,'-');
			productName = productName.toLowerCase();
			var detailUrl = contextPath + '/detail/' + i + '/' + productName + '.html';
			
			div.innerHTML = '<div class="col-xs-12 col-sm-6 col-md-4 text-center mb-25">\
					<article class="product light">\
						<figure class="figure-hover-overlay"> \
							<a href="' + detailUrl + '"  class="figure-href"></a>\
							<div class="product-new">new</div>'
							+ discountPercentage +
							'<a href="#" class="product-compare"><i class="fa fa-random"></i></a>\
							<a href="#" class="product-wishlist"><i class="fa fa-heart-o"></i></a>\
							<img src="' + contextPath + browseOfferList[mainOfferId].img1 + '" class="img-overlay img-responsive" alt="' + browseOfferList[mainOfferId].name + '">\
							<img src="' + contextPath + browseOfferList[mainOfferId].img2 + '" class="img-responsive" alt="' + browseOfferList[mainOfferId].name + '">\
						</figure>\
						<div class="product-caption">\
							<div class="block-name">\
								<a href="#" class="product-name">' + browseOfferList[mainOfferId].name + '</a>\
								<p class="product-price">' + discountText + 'Rs.' + price + '</p>\
							</div>\
							<div class="product-cart">\
								<a href="#"><i class="fa fa-shopping-cart"></i> </a>\
							</div>\
							<p class="description">'
								+ browseOfferList[mainOfferId].desc +
							'</p>\
						</div>\
					</article>\
				</div>';
			document.getElementById("offer-grid").appendChild(div);
		}
	}
	
	readBrowseOfferJson();

});