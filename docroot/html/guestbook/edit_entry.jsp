<%@ include file="/html/guestbook/init.jsp" %>

<portlet:renderURL var="viewURL">
	<portlet:param name="mvcPath" value="/html/guestbook/view.jsp"></portlet:param>
</portlet:renderURL>

<portlet:actionURL name="addEntry" var="addEntryURL"></portlet:actionURL>

<aui:form action="${addEntryURL}" name="<portlet:namespace />fm">
	<aui:fieldset>
		<aui:input name="name" type="text"></aui:input>
		<aui:input name="message" type="textarea"></aui:input>
	</aui:fieldset>
	
	<aui:button-row>
		<aui:button type="submit"></aui:button>
		<aui:button type="cancel" onClick="${ viewURL }"></aui:button>
	</aui:button-row>
</aui:form>