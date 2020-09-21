
var app = angular.module('myApp', []).controller('externalController', function($scope) {
    $scope.externalControllerMethod = function () {
        $scope.externalControllerMethodCalled = true;
    }
});