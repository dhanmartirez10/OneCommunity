<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<script type="text/javascript">
	window.onmouseout = closeAllMenu;
	window.onmouseleave = closeAllMenu;

	function closeAllMenu() {
		closeNavMenu();
		closeAccountMenu();
	}

	function openNavMenu() {
		var ul = document.getElementById('wizgate-navContainer');
		ul.style.visibility = 'visible';
		ul.style.opacity = 1;
	}

	function closeNavMenu() {
		var ul = document.getElementById('wizgate-navContainer');
		ul.style.visibility = 'hidden';
		ul.style.opacity = 0;
	}

	function openAccountMenu() {
		var ul = document.getElementById('wizgate-accountContainer');
		ul.style.visibility = 'visible';
		ul.style.opacity = 1;
	}

	function closeAccountMenu() {
		var ul = document.getElementById('wizgate-accountContainer');
		ul.style.visibility = 'hidden';
		ul.style.opacity = 0;
	}
</script>

<div id="wizgate-container">
	<div id="wizgate-navbar" onmouseout="closeAllMenu()">
		<div id="wizgate-navMenu">
			<a href="${sessionScope.dashboardHomeUrl}"
				onmouseover="openNavMenu()" id=""><img id="onecom-logo"
				border=0
				src="${pageContext.request.contextPath}/common/images/onecom.png"
				alt="One Community" width="322" height="32"/></a>
		</div>
		<div id="wizgate-logout">
			Welcome <b>CompanyAdmin</b>!
			| <a href="#" onmouseover="openAccountMenu()"
				onmouseout="closeAccountMenu()"><i class="fa fa-user-circle"></i> Account</a>
		</div>
	</div>

	<div id="wizgate-navContainer" onmouseout="closeNavMenu()">
		<div id="wizgate-menuContainer">
			<ul onmouseover="openNavMenu()" onmouseout="closeNavMenu()">
				<c:forEach var="userFacility" items="${sessionScope.userFacilities}">
					<li><a href="${userFacility.url}"> <c:out
								value="${userFacility.description}" />
					</a></li>
				</c:forEach>
			</ul>
		</div>
	</div>

	<div id="wizgate-accountContainer">
		<ul onmouseover="openAccountMenu()" onmouseout="closeAccountMenu()">
			<li><a href="${sessionScope.changePasswordUrl}">Change
					Password</a></li>
			<li><hr class="wizgate-divider" /></li>
			<li><a href="${sessionScope.casLogoutUrl}">Logout</a></li>
		</ul>
	</div>
</div>
<div id="wizgate-spacer"></div>