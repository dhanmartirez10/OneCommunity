<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<p>Application has encountered an error. Please contact support team.</p>
<br/>
<textarea rows="20" style="width:100%">
 ${exception}
 <%-- <c:forEach items="${exception.stackTrace}" var="element">
    <c:out value="${element}"></c:out>
</c:forEach> --%>
</textarea>