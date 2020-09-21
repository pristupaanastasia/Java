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
  <div ng-app>
    <h3>Пример ng-init AngularJS</h3>
    <div ng-init="properties=[ {value: 'value1'}, {value: 'value2'}, {value: 'value3'}]">
      <table>
        <tr ng-repeat="property in properties">
          <td><b>Property [ {{ $index }} ]: {{ property.value }}</b></td>
        </tr>
      </table>

    </div>
    <h3>Еще один способ инициализации объекта </h3>
    <div ng-init="userName = 'Some User' ; userPass = 333444; email = 'mail@example.com'">
      <table>
        <tr>
          <td><b>Имя пользователя:</b></td>
          <td><input type="text" ng-model="userName"/></td>
        </tr>
        <tr>
          <td><b>Пароль:</b></td>
          <td><input type="number" ng-model="userPass"/></td>
        </tr>
        <tr>
          <td><b>Email:</b></td>
          <td><input type="text" ng-model="email"/></td>
        </tr>
      </table>
    </div>

  </div>
  </body>
</jsp:body>
</page:angular-temaplate>
