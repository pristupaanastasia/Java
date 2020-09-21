<%--
  Created by IntelliJ IDEA.
  User: Анастасия
  Date: 11.09.2020
  Time: 15:15
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="page" tagdir="/WEB-INF/tags" %>

<page:template>
  <jsp:body>
  <head>
    <title>Title</title>
  </head>
  <body>
  <!-- AngularJS myApp -->
  <spring:url value="/resources/angularjs/dependencies/root.js" var="myApp" />
  <script src="${myApp}"></script>

  <!-- AngularJS service -->
  <spring:url value="/resources/angularjs/dependencies/service.js" var="service" />
  <script src="${service}"></script>

  <!-- AngularJS factory -->
  <spring:url value="/resources/angularjs/dependencies/factory.js" var="factory" />
  <script src="${factory}"></script>

  <!-- AngularJS provider -->
  <spring:url value="/resources/angularjs/dependencies/provider.js" var="provider" />
  <script src="${provider}"></script>

  <div ng-app="myApp">
    <h3>Пример внедрения зависимостей AngularJS</h3>

    <h4>AngularJS Factory:</h4>
    <div ng-controller="factoryController">
      {{ angularVersion }}
    </div>

    <h4>Service controller:</h4>
    <div ng-controller="serviceController">
      <button ng-click="serviceMethod()">service controller call</button>
    </div>

    <h4>AngularJS provider:</h4>
    <div  ng-controller="providerController">
      {{ rootName }}
    </div>

    <h4>AngularJS value:</h4>
    <div ng-controller="valueController">
      someObject value module: {{ rootObject }}
    </div>
  </div>
  </body>
  </jsp:body>
</page:template>
