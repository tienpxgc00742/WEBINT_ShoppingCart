<%-- 
    Document   : login
    Created on : Apr 11, 2015, 2:30:48 PM
    Author     : MrT
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <div id="maincontainer" style="display: flex;margin-left: 110px;">
        <div class="span9">
          <h1 class="heading1"><span class="maintext"> <i class="fa fa-lock"></i> Login</span></h1>
          <section class="newcustomer">
            <h2 class="heading2">New Customer </h2>
            <div class="loginbox">
              <h4 class="heading4"> Register Account</h4>
              <p>Not have account yet.</p>
              <p>Click button below to register new customer account.</p>
              <br>
              <a href="#" class="btn btn-orange">Continue</a>
            </div>
          </section>
          <section class="returncustomer">
            <h2 class="heading2">Already Customer </h2>
            <div class="loginbox">
              <form class="form-vertical">
                <fieldset>
                  <div class="control-group">
                    <label class="control-label">E-Mail Address:</label>
                    <div class="controls">
                      <input type="text" class="span3">
                    </div>
                  </div>
                  <div class="control-group">
                    <label class="control-label">Password:</label>
                    <div class="controls">
                      <input type="text" class="span3">
                    </div>
                  </div>
                  <a class="" href="#">Forgotten Password</a>
                  <br>
                  <br>
                  <a href="#" class="btn btn-orange">Login</a>
                </fieldset>
              </form>
            </div>
          </section>
        </div>
        </div>
        <jsp:include page="footer.jsp"/>
    </body>
</html>
