<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<f:loadBundle basename="epro.bundle.messages" var="msg"/>

<html>
 <head>
  <title>Campaign Not Found</title>
 </head>
 <body>
   <f:view>
     <h1>
      <h:outputText value="#{msg.inputname_header}"/>
     </h1>
      <fieldset>
			<legend>Campaign Not Found</legend>
		<h:form>
			<h2>No Campaign found with id "#{campaignBean.campaignId}"</h2>
			<p>Please <a href="campaign.jsf">try again</a>.</p>
		</h:form>
		</fieldset>
   </f:view>
 </body>
</html>  