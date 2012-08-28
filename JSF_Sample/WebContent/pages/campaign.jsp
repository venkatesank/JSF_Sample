<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<f:loadBundle basename="epro.bundle.messages" var="msg"/>

<html>
 <head>
  <title>Enter Campaign ID</title>
 </head>
 <body>
   <f:view>
     <h1>
      <h:outputText value="#{msg.inputname_header}"/>
     </h1>
      <fieldset>
		<legend><h:outputText value="#{msg.get_campaign_details}"/></legend>
		<h:form>
		<table>
		<tr>
			<td><h:outputText value="#{msg.campaign_id}"/></td>
			<td><h:inputText value="#{campaignBean.campaignId}"/><br/> </td>
		</tr>
		<tr> 
			<td><h:outputText value="#{msg.password}"/></td>
			<td><h:inputSecret value="#{campaignBean.password}"/><br/>
			</td>
		</tr>
		<tr> <td colspan="2">	<h:commandButton value="#{msg.get_campaign_details}" action="#{campaignBean.getCampaignDetails}"/>  
		  </td>	</tr>
		</table>
		</h:form>
		</fieldset>
   </f:view>
 </body>
</html>  