<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
   <title>Title</title>
</head>
<body>
  <form method="post" action="LoginServletByDB">
    <table>
      <tr>
       <td>用户名：</td>
       <td><input type="text" name="username"/></td>
      </tr>
      <tr>
       <td>密码：</td>
       <td><input type="password" name="userpass"/></td>
      </tr>
      <tr>
       <td colspan="2">
       <input type="submit" value="确定"/>
       <input type="button" value="取消"/>
       </td>
      </tr>
    </table>
  </form>
</body>
</html>