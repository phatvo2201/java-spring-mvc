<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


<form:form action="processForm" modelAttribute="student">


Firstname: <form:input path="firstName"/>

<br><br>
Lastname: <form:input path="lastName"/>
<br><br>

<form:select path="country" >
<form:options  items="${student.countryOptions }"/>

</form:select>


<br><br>
favorite language
java <form:radiobutton  path="favoriteLanguage" value="java"  />
php <form:radiobutton  path="favoriteLanguage" value="php"  />

c# <form:radiobutton  path="favoriteLanguage" value="c#"  />

ruby <form:radiobutton  path="favoriteLanguage" value="ruby"  />

<br><br>

<input type="submit" value="Submit"/>





</form:form>

</body>
</html>