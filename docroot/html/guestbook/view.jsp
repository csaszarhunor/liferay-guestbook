<%@ include file="/html/guestbook/init.jsp" %>

<liferay-ui:search-container>
	<liferay-ui:search-container-results
		results="<%= entries %>"
		total="<%= entries.size() %>"
	/>

	<liferay-ui:search-container-row
		className="com.liferay.docs.guestbook.model.Entry"
		modelVar="entry"
	>
	
		<liferay-ui:search-container-column-text property="message" />

		<liferay-ui:search-container-column-text property="name" />

		
	</liferay-ui:search-container-row>

	<liferay-ui:search-iterator />
</liferay-ui:search-container>
<aui:button-row cssClass="guestbook-buttons">
	
	<portlet:renderURL var="addEntryURL">
		<portlet:param name="mvcPath" value="/html/guestbook/edit_entry.jsp"></portlet:param>
	</portlet:renderURL>
	
	<aui:button onClick="${ addEntryURL }" value="Add Entry"></aui:button>
	
</aui:button-row>