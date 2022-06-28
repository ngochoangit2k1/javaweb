<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">

        <a class="navbar-brand" href="index.jsp" >
            <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-house-heart" viewBox="0 0 16 16">
                <path d="M8 6.982C9.664 5.309 13.825 8.236 8 12 2.175 8.236 6.336 5.309 8 6.982Z"/>
                <path d="M8.707 1.5a1 1 0 0 0-1.414 0L.646 8.146a.5.5 0 0 0 .708.707L2 8.207V13.5A1.5 1.5 0 0 0 3.5 15h9a1.5 1.5 0 0 0 1.5-1.5V8.207l.646.646a.5.5 0 0 0 .708-.707L13 5.793V2.5a.5.5 0 0 0-.5-.5h-1a.5.5 0 0 0-.5.5v1.293L8.707 1.5ZM13 7.207V13.5a.5.5 0 0 1-.5.5h-9a.5.5 0 0 1-.5-.5V7.207l5-5 5 5Z"/>
            </svg>
            <p data-item='E-Commerce Furniture'>E-Commerce Furniture</p>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        
        <div class="search">
  <input type="text" name="" id="" placeholder="Search iteam" class="search__input" >
  <button type="submit" class="search__button" tabIndex="-1">Search</button>
</div>
        <section>	
            <div>
                <ul class=" menuItems">
                    <li ><a  href="index.jsp"  data-item='Home'>Home</a></li>
                    <li ><a  href="cart.jsp"  data-item='Cart'>Cart <span class="badge badge-danger">${cart_list.size()}</span> </a></li>
                        <%
                            if (auth != null) {
                        %>
                    <li ><a  href="orders.jsp" data-item='Orders'>Orders</a></li>
                    <li ><a  href="log-out" data-item='Logout'>Logout</a></li>
                        <%
                        } else {
                        %>
                    <li ><a  href="login.jsp" data-item='Login'>Login</a></li>
                        <%
                            }
                        %>
                </ul>
            </div>

        </section>


    </div>
</nav>