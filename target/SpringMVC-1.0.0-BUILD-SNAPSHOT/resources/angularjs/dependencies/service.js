angular.module("serviceModule", [])
    .service('TestService', function(){
        this.function1 = function(p) {
            alert("function1");
        };
        this.function2 = function(p) {
            alert("function2 from service.js");
        };
        this.function3 = function(p) {
            alert("function3 from service.js");
        };
        this.serviceMethod = function(p) {
            alert("serviceMethod from service.js");
        }
    }).controller("serviceDependency", function ($scope, TestService){
    TestService.function1();
}).controller("serviceController", function($scope, TestService) {
    TestService.function2();
    $scope.serviceMethod = function() {
        TestService.serviceMethod('');
    }
});