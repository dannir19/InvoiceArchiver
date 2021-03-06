<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #71d2fa">
    <a class="navbar-bran mr-2" href="https://github.com/honestit"></a>
    <div class="collapse navbar-collapse">
        <ul class="navbar-nav nav nav-pills nav-fill">


                <%-- Sekcje główne menu dostępne tylko dla zalogowanych użytkowników --%>
                <sec:authorize access="isAuthenticated()">
                <form class="form-inline mr-3 mt-3" method="get" action="/upload">
                    <button class="btn btn-primary" type="submit">Add Invoice</button>

                        <sec:csrfInput/>

                </form>
                    <form class="form-inline mr-3 mt-3" method="get" action="/show-all-invoices">
                        <button class="btn btn-info" type="submit">Show all your Invoices</button>
                        <sec:csrfInput/>
                    </form>

                    <form class="form-inline mr-3 mt-3" method="get" action="/">
                        <button class="btn btn-dark" type="submit">Home page</button>
                        <sec:csrfInput/>
                    </form>


            </sec:authorize>
        </ul>
    </div>
    <sec:authorize access="!isAuthenticated()">
        <div style="margin-center: 20px"><h2>Welcome, <strong>stranger.</strong> Please login,or register yourself</h2></div>
        <form class="form-inline mr-2 mt-3" method="get" action="/login">
            <button class="btn btn-primary" type="submit">Login</button>
            <sec:csrfInput/>
        </form>
    </sec:authorize>
    <sec:authorize access="isAuthenticated()">
        <div style="margin-right: 20px"><h2> Welcome <strong>${pageContext.request.userPrincipal.principal.username}</strong></h2></div>
        <form class="form-inline mt-3" method="post" action="/logout">
            <button class="btn btn-secondary" type="submit">Logout</button>


            </button>

            <sec:csrfInput/>
        </form>
    </sec:authorize>
    <form class="form-inline mt-3" method="get" action="/register">
        <button class="btn btn-primary" type="submit">Register</button>
        <sec:csrfInput/>
    </form>



</nav>