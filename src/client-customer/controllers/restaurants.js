var app = angular.module('client-customer');

app.controller('RestaurantsController', ['$scope', '$http', '$location', '$routeParams',
                function($scope, $http, $location, $routeParams){

	console.log('RestaurantsController loaded...');

	$scope.getRestaurants = function(){
		$http.get('/api/restaurants').then(function(response){
			$scope.restaurants = response;
		}, function(err){
		  if(err){
		    throw err;
		  }
		});
	}

}]);