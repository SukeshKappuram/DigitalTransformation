				$scope.names = ${data};
				angular.module('myApp', []).controller('namesCtrl', function($scope) {
    				
    				$scope.orderByMe = function(x) {
        				$scope.myOrderBy = x;
    				}
				})