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
  <div ng-app ng-init="visible=false">
    <h3>Пример директив ng-click, ng-show, ng-hide AngularJS</h3>
    <div ng-show="visible">ng-show Visible is: {{ visible }} </div> <br />
    <div ng-hide="visible">ng-hide Visible is: {{ visible }} </div> <br />

    <div ng-show="someValue">ng-show someValue is: {{ someValue }} </div> <br />
    <div ng-hide="someValue">ng-hide someValue is: {{ someValue }} </div> <br />
    <br />
    <a href="#" ng-click="visible=true">ng-click visible=true</a> <br />
    <a href="#" ng-click="visible=false">ng-click visible=false</a> <br />
    <br />
    <a href="#" ng-click="someValue=true">ng-click someValue=true</a> <br />
    <a href="#" ng-click="someValue=false">ng-click someValue=false</a> <br />
  </div>
  </body>
</jsp:body>
</page:angular-temaplate>