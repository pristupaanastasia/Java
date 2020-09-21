<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 14.09.2020
  Time: 13:02
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

    var app = angular.module('myApp', []);
    app.controller('myController', function($scope) {
      $scope.companies = [
        {name: "Alphabet inc.", browser: 'Chrome', link: 'https://google.com'},
        {name: "Mozilla Corporation", browser: 'Firefox', link: 'https://www.mozilla.org/ru/'},
        {name: "Yandex co", browser: 'Yandex', link: 'https://yandex.ru'},
        {name: "Opera Software", browser: 'Opera' , link: 'http://www.opera.com/ru'},
        {name: "Mail.Ru Group", browser: 'Mail', link: 'https://mail.ru'}
      ];

      $scope.browser = {name: 'Netscape' , email: 'itisagooddayto@die.com'};
      $scope.currentDate = new Date();
    });

    //custom filter declaration
    app.filter('newFilter', function() {
      //first parameter is filter input
      //other parameters are optional parameters
      return function(filterInput, optional1, optional2, optional3) {
        var filterResult;
        //filter function start here
        filterResult = "filter result: " + filterInput + " " + optional1 + " " + optional2;
        //filter function ends
        return filterResult;

      }
    });

  </script>

  1
  2
  3
  4
  5
  6
  7
  8
  9
  10
  11
  12
  13
  14
  15
  16
  17
  18
  19
  20
  21
  22
  23
  24
  25
  26
  27
  28
  29
  30
  31
  32
  33
  34
  35
  <h3>AngularJS filter</h3>

  <div ng-app="myApp" ng-controller="myController">
    <h3>Filter order with pipe " expression | filter1 | filter2 | ... "</h3>

    <h3>Лимит определяет кол-во строк | limitTo: 3</h3>
    <table class="table table-striped">
      <tr ng-repeat="company in companies | limitTo:3">
        <td>{{ company.name }}</td>
        <td>{{ company.browser }}</td>
        <td>{{ company.link }}</td>
      </tr>
    </table>

    <h3>AngularJS встроенные фильтры (верхний\нижний регистр)</h3>
    <table class="table table-striped">
      <tr>
        <td>Uppercase filter : {{ browser.name | uppercase }}</td>
        <td>Lowercase filter : {{ browser.name | lowercase }} </td>
      </tr>
    </table>

    <h3>AngularJS json фильтр</h3>
    <pre>{{ companies[0] | json }}</pre>

    <h3>AngularJS фильтр даты</h3>
    <span>{{currentDate| date:"MM/dd/yyyy"}}</span><br/>

    <h3>AngularJS собственный фильтр</h3>
    {{ "test" | newFilter }} <br/>
    {{ "test" | newFilter:"parameter1":"parameter2" }}
    <br/><br/>
    <br/><br/>

  </div>
  </body>
  </jsp:body>
</page:angular-temaplate>
