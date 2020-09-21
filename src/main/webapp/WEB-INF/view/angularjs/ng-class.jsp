<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 11.09.2020
  Time: 13:43
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
  <style type="text/css">
    .errorClass {
      text-decoration: underline;
      color: red;
    }
    .boldClass {
      font-weight: bold;
      background: #dfdfdf;
    }
  </style>

  <script>

    var app = angular.module('myApp', []);
    app.controller('myClassController', function($scope) {
      $scope.hasSomeError = true;
//                            $scope.hasSomeError = false;
    });

  </script>

  <div ng-app="myApp" ng-controller="myClassController">
    <h3>Пример класса AngularJS</h3>
    <p ng-class="{errorClass: true, boldClass: hasSomeError}">Какое-нибудь сообщение</p>
    В примере у тега < p > указан атрибут ng-class с перечислением классов стилей css, у которых атрибут
    $scope.hasSomeError = true или просто напротив имени класса стоит: true <br />
    '< p ng-class="{errorClass: true, boldClass: hasSomeError} > < /p>" '

  </div>
  </body>
  </jsp:body>
</page:angular-temaplate>
