<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
<!DOCTYPE html>  
<html>  
<head>  
    <meta charset="UTF-8">  
    <title>比较字符串</title>  
</head>  
<body>  
    <h2>请输入两个字符串:</h2>  
    <%  
        String str1 = request.getParameter("str1");  
        String str2 = request.getParameter("str2");  
        if (str1 == null || str2 == null) {  
            out.println("请输入两个字符串！");  
            return;  
        }  
        if (str1.compareTo(str2) > 0) {  
            out.println("较大的字符串是: " + str1);  
        } else if (str1.compareTo(str2) < 0) {  
            out.println("较大的字符串是: " + str2);  
        } else {  
            out.println("两个字符串相等！");  
        }  
    %>  
</body>  
</html>