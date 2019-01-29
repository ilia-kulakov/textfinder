<%@include file="/libs/foundation/global.jsp"%>
<%@page import="edu.aem.training.textfinder.TextFinderService, org.apache.commons.lang.StringUtils"%>
<h1>PDF Text Finder Component</h1>
<%
    String[] findWhatList = properties.get("findWhatList", new String[] {});
    String[] findWhereList = properties.get("findWhereList", new String[] {});
    String queryApi = properties.get("queryApi", "Query Builder");

 	TextFinderService finderService = sling.getService(TextFinderService.class);
	String[] list = finderService.find(findWhatList, findWhereList, queryApi);
	String result = StringUtils.join(list, "<br>");
%>
<h2>The result of search:</h2>
<p><%=result%></p>