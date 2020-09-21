<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 11.09.2020
  Time: 13:44
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:angular-temaplate>
  <jsp:body>
  <head>
    <title>Title</title>
  </head>
  <body>
  <script>
    var app = angular.module('myAppModule', []);
    app.controller('myController', function($scope) {
      $scope.someArray = {
        name: "Some Name in Array var",
        developer: "javastudy.ru",
        link: "https://javastudy.ru"
      }
    })
  </script>

  <div ng-app="myAppModule" ng-controller="myController">
                        <pre>
                            <code>
                                var app = angular.module('myAppModule', []);
                                app.controller('myController', function($scope) {
                                        $scope.someArray = {
                                            name: "Some Name in Array var",
                                            developer: "javastudy.ru",
                                            link: "https://javastudy.ru"
                                        }
                                })
                            </code>
                        </pre>
    <h3>Пример if (ng-if) в AngularJS</h3>
    <div class="bg-success" ng-if="someArray.name == 'Some Name in Array var'">
      <p>ng-if == someArray.name == 'Some Name in Array var'</p>
    </div>
    <div class="bg-warning" ng-if="someArray.developer != 'yandex.ru'">
      <p>ng-if == someArray.developer != 'yandex.ru'</p>
    </div>
    <h3>Пример switch (ng-switch)</h3>
    <div ng-switch on="someArray.link">
      <div class="bg-success" ng-switch-when="https://javastudy.ru">
        <p>ng-switch when="https://javastudy.ru"</p>
      </div>
      <div class="bg-success" ng-switch-when="yandex.ru">
        <p>ng-switch when="yandex.ru"</p>
      </div>
      <div class="bg-warning" ng-switch-default>
        <p>ng-switch-default</p>
      </div>

    </div>

  </div>
  </body>
</jsp:body>
</page:angular-temaplate>
