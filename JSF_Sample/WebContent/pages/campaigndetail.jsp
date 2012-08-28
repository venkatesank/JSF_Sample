<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f" %>
<f:loadBundle basename="epro.bundle.messages" var="msg"/>

<html>
 <head>
  <title>Campaign Details</title>
 </head>
 <body>
   <f:view>
     <h1>
      <h:outputText value="#{msg.inputname_header}"/>
     </h1>
      <fieldset>
		<legend><h:outputText value="#{msg.display_campaign_details}"/></legend>
		<h:form>
		<table>
			<tr>
				<td><h:outputText value="#{msg.campaign_id}"/></td>
				<td><h:inputText value="#{campaignBean.campaign.campaignId}" readonly="true"/><br/></td>
			</tr>
			<tr>
				<td><h:outputText value="#{msg.campaign_name}"/></td>
				<td><h:inputText value="#{campaignBean.campaign.campaignName}" readonly="true"/><br/></td>
			</tr>
			<tr>
				<td><h:outputText value="#{msg.channel_name}"/> </td>
				<td><h:inputText value="#{campaignBean.campaign.channelName}" readonly="true"/><br/></td>
			</tr>
			
			<tr>
				<td><h:outputText value="#{msg.no_of_receiver}"/></td>
				<td><h:inputText value="#{campaignBean.campaign.noOfReceiver}" readonly="true"/><br/></td>
			</tr>
			<tr> <td colspan="2">	<h:commandButton value="#{msg.add_another_campaign}" action="#{campaignBean.addCampaign}"/> </td>	</tr>
		</table>
		</h:form>
		</fieldset>
   </f:view>
 </body>
</html>  