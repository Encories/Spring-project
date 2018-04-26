<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>News text</title>
  <style type="text/css">
    body {
      background: #f3f2f3;
      color: #000000;
      font-family: Trebuchet MS, Arial, Times New Roman;
      font-size: 12px;
    }
    .container {
      background: #FFFFFF;
      margin: 30px auto;
      width: 1000px;
      height: 1000px;
    }
    .header {
      background: #FFDEAD;
      height: 100px;
      width: 1000px;
      box-sizing: border-box;
      padding: 20px;

    }

    .menu {
      background: #DEB887;
      float: left;
      width: 300px;
      height: 100%;
      box-sizing: border-box;
      padding: 20px;
    }
    .content {
      background: #FAEBD7;
      float: right;
      width: 700px;
      height: 100%;
      box-sizing: border-box;
      padding: 20px;


    }
    .footer {
      background: #838283;
      height: 180px;
      width: 900px;
      box-sizing: border-box;
      padding: 20px;
    }



    .tg {
      border-collapse: collapse;
      border-spacing: 0;
      border-color: #ccc;
      max-width: 10%;
      overflow: hidden;




    }

    .tg td {
      font-family: Arial, sans-serif;
      font-size: 14px;
      padding: 10px 5px;
      border-style: solid;
      border-width: 0px;

      white-space: nowrap;
      border-color: #ccc;
      color: #333;
      background-color: #fff;
    }

    .tg th {
      font-family: Arial, sans-serif;
      font-size: 14px;
      font-weight: normal;
      padding: 10px 5px;
      border-style: solid;
      border-width: 1px;
      overflow: hidden;
      word-break: normal;
      border-color: #ccc;
      color: #333;
      background-color: #f0f0f0;
    }

    .tg .tg-4eph {
      background-color: #f9f9f9
    }

  </style>

</head>

<body>

<div class="container">
  <div class="header">
    <h1 > ${news.newstitle}</h1>
  </div>




  <div class="menu">
    <a href="../../index.jsp">Back to main menu</a>
    <p>
      <a href="<c:url value="/news"/>">Back to news list</a>
    </p>
  </div>









  <div class="content">


    <br/>
    <br/>




    <table  width="660px" >
      <tr>
      <td>${news.newsdate}</td>

      </tr>
      <tr>
        <td>${news.newstext}</td>

      </tr>
    </table>

  </div>














  <div class="footer">
    Copyright Rubakhin V. S.
  </div>
</div>

</body>
</html>
