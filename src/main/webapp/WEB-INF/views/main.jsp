<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />

    <title>Insert title here</title>
    <style>
      html,
      body {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
      }
      ul {
        padding: 0;
      }
      .outer {
        position: relative;
      }

      .main1 {
        background-image: url("./resources/image/laundry.jpg");
        background-size: cover;
      }
      .main2 {
        background-image: url("./resources/image/laundry2.jpg");
        background-size: cover;
      }
      .main3 {
        background-image: url("./resources/image/laundry3.jpg");
        background-size: cover;
      }
      .main4 {
        background-image: url("./resources/image/laundry4.jpg");
        background-size: cover;
      }

      #fullpage {
        visibility: visible;
      }
      #word {
        font-size: 3rem;
        text-align: end;
        width: 500px;
        float: right;
        font-weight: bold;
        padding: 3rem;
        z-index: 100;
      }
      .ani_fadeIn {
        animation: fade_in 2s;
      }
      @keyframes fade_in {
        0% {
          opacity: 0;
          transform: translateY(150px);
        }

        100% {
          opacity: 1;
          transform: translateY(0px);
        }
      }

      .slide-container {
        font-size: 3rem;
        background-color: rgba(245, 245, 245, 0.24);
        width: 80%;
        height: 80%;
        margin: auto;
      }
      .slide-title {
        text-align: center;
      }
    </style>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script
      type="text/javascript"
      src="<c:url value='/resources/fullpage.js'/>"
    ></script>
    <script type="text/javascript" src="<c:url value='/resources/scrolloverflow.min.js'/>"></script>
    <link
      rel="stylesheet"
      type="text/css"
      href="<c:url value='/resources/fullpage.css'/>"
    />
    
  </head>
  <body>
    <div class="outer">
      <jsp:include page="./common/manubar.jsp"></jsp:include>

      <div id="fullpage">
        <div class="section main1">
          <div id="word">?????? ?????? ??????????????? ????????? ???????????????</div>
        </div>
        <div class="section main2">
          <div id="word" style="color: whitesmoke">
            ???, 20?????? ???????????? ??? ????????? ????????????
          </div>
        </div>
        <div class="section main3">
          <div id="word">
            ?????? ????????? ???????????? ????????? ?????? ????????????????????????.
          </div>
        </div>
        <div class="section main4">
          <div class="slide">
            <div class="slide-container">
              <div class="slide-title">?????? ?????? ?????????</div>
              <button>????????? ??????????????????</button>
            </div>
          </div>
          <div class="slide">
            <div class="slide-title">?????? ?????? ?????????</div>
          </div>
          <div class="slide">Slide 3</div>
        </div>
      </div>
    </div>
    <script>
      $(document).ready(function () {
        $("#fullpage").fullpage({
          //options here
          licenseKey: "OPEN-SOURCE-GPLV3-LICENSE",
          autoScrolling: true,
          scrollHorizontally: true,
          scrollOverflow: true,
        });

     

        $(window).on("scroll", function () {
          console.log("scrolling!");
        });
      });
    </script>
  </body>
</html>
