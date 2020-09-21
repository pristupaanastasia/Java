<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 11.09.2020
  Time: 12:06
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

    var app = angular.module('myModule', []);
    app.controller('myController', function($scope) {
      $scope.siteName = 'javastudy.ru';
      $scope.clickMethod = function() {
        var toggleMe = document.getElementById('toggleId');
        toggleMe.style.color = toggleMe.style.color === 'red' ? 'green' : 'red';
      };

      $scope.changeSiteName = function(value) {
        $scope.siteName = value;
        alert($scope.siteName);
      }
    });

  </script>
  <p id="toggleId" style="color:red;">ПЕРКЛЮЧАЮЩИЙСЯ ТЕКСТ</p>

  <div ng-app="myModule" ng-controller="myController">
    <h3>Пример связывания и использование модели AngularJS</h3>

    <strong>Связанный параметр bindingValue: </strong> {{ bindingValue }} <br />
    <strong>Пример: </strong> <span ng-bind="siteName"> </span> <br />
    <br />
    <label>Связать с параметром bindingValue: </label>

    <input type="text" ng-model="bindingValue" ng-change="clickMethod()"/> <br />

    <label>Поменять параметр siteName через вызов js метода: </label>
    <input type="text" ng-model="newSiteName" /> <br />


    <button ng-click='clickMethod()'>Вызвать clickMethod</button>
    <button ng-click='changeSiteName(newSiteName)'>Вызвать changeSiteName</button>

    <br /><br />

    <select ng-model="selectedValue">
      <option value="test1">test1</option>
      <option value="test2">test2</option>
      <option value="test3">test3</option>
    </select> {{selectedValue}}<br/><br/>

    <input type="radio" name="selectedColor" value="Red" ng-model="selectedColor">Red</input>
    <input type="radio" name="selectedColor" value="Green" ng-model="selectedColor">Green</input>
    <span style="color:{{selectedColor}}">{{selectedColor}}</span>

    <br/><br/>
    CheckBox1 <span ng-bind="checkBox1"></span><input type="checkbox" value="testCheckBox1" ng-model="checkBox1"><br/>
    CheckBox2 <span ng-bind="checkBox2"></span><input  type="checkbox" value="testCheckBox2" ng-model="checkBox2"><br/>
  </div>
  </body>
  </jsp:body>
</page:angular-temaplate>
