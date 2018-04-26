<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Add news</title>
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
            overflow: hidden;
            text-overflow: ellipsis;
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
        <h1 >WWWWWWWWWWWWWWWWWWWW</h1>
    </div>




    <div class="menu">
        <a href="../../index.jsp">Back to main menu</a>
        <p>
            <a href="<c:url value="/news"/>">Back to news list</a>
        </p>
    </div>









    <div class="content">

        <h1>WWWWWWWWWWWWWWWs</h1>

        <c:url var="addAction" value="/news/add"/>

        <form:form action="${addAction}" commandName="news">
            <table>
                <c:if test="${!empty news.newstitle}">
                    <tr>
                        <td>
                            <form:label path="id">
                                <spring:message text="ID"/>
                            </form:label>
                        </td>
                        <td>
                            <form:input path="id" readonly="true" size="8" disabled="true"/>
                            <form:hidden path="id"/>
                        </td>
                    </tr>
                </c:if>
                <tr>
                    <td>
                        <form:label path="newstitle">
                            <spring:message text="Title"/>
                        </form:label>
                    </td>
                    <td>
                        <form:input path="newstitle"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <form:label path="newstext">
                            <spring:message text="Text"/>
                        </form:label>
                    </td>
                    <td>
                        <form:input path="newstext"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <form:label path="newsdate">
                            <spring:message text="Date"/>
                        </form:label>
                    </td>
                    <td>
                        <form:input path="newsdate"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <c:if test="${!empty news.newstitle}">
                            <input type="submit"
                                   value="<spring:message text="Edit News"/>"/>
                        </c:if>
                        <c:if test="${empty news.newstitle}">
                            <input type="submit"
                                   value="<spring:message text="Add News"/>"/>
                        </c:if>
                    </td>
                </tr>
            </table>
        </form:form>


    </div>














    <div class="footer">
        Copyright Rubakhin V. S.
    </div>
</div>

</body>
</html>
