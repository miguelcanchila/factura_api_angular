"use babel";
let app = angular.module('app', []);

app.controller('ctrlMain', function($scope, rest){
	// $scope.saluda = "Hola mundo";
	$scope.myFuncion = function(){
		console.log("this ");
		rest.absData().then(function(res){
			$scope.informacion = res;
		})
	}
})

.service('rest', function($http){
	var obj = {};

	obj.absData = function(){
        return $http.get('http://localhost:3000/api/v1/products/').then(function(res){ return res.data})
    }

    return obj;

});