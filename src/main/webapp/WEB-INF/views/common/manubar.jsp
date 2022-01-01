<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 .header {
        position: fixed;
        height: 100px;
        width: 100%;
        /* background-color: rgba(0, 0, 0, 0.363); */
        z-index: 100000;
      }
      .nav {
        width: 90%;
      }

      .nav > ul {
        display: flex;

        list-style: none;
        justify-content: flex-end;
      }
      .nav > ul > li {
        font-size: 1rem;
        font-weight: bold;
        color: black;
        text-decoration: none;
        cursor: pointer;
        padding: 1rem;
      }

</style>
</head>
<body>
      <div class="header">
        <div class="nav">
          <ul>
          	<li>세탁 서비스</li>
          	<li>구독 서비스</li>
            <li>로그인</li>
          </ul>
        </div>
      </div>
</body>
</html>