var app=angular.module('app1',[]);

app.controller('ProductController',['$scope','$http',function($scope,$http){	
	$scope.addToCart=function(productId){		
		$http.put('http://localhost:8080/MyProject/cart/addCartItem/'+productId).success(function(){
			window.alert('Product successfully added to the cart');
		})
	}
	$scope.getCart=
		function(cartId){
		$scope.cartId=cartId;
		console.log('cartId is'+cartId);
		$http.get('http://localhost:8080/MyProject/cart/getCartId/'+cartId).success(function(data){
			$scope.cart=data;
		})
		
	}
	$scope.removeFromCart=
		function(cartItemId){
		console.log('cartItem is to be removed'+cartItemId);
		$http.put('http://localhost:8080/MyProject/cart/removeCartItem/'+cartItemId).success(function(){
			$scope.getCart($scope.cartId);
		})
	}	
	$scope.clearCart=
		function(){
		$http.put('http://localhost:8080/MyProject/cart/removeAllCartItems/'+$scope.cartId).success(function(){
			$scope.getCartId(cartId);
		})
	}
	$scope.calculateGrandTotal=
			function(){
			var grandTotal=0.0;
			for(var i=0;i<($scope.cart.cartItem.length);i++){
				grandTotal=grandTotal+($scope.cart.cartItem[i].totalPrice);
			}
		return grandTotal;
		}
		}]);