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
		<legend> <h:outputText value="#{msg.add_campaign_details}"/></legend>
		<h:form>
		<table>
			<tr>
				<td><h:outputText value="#{msg.enter_campaign_id}"/></td>
				<td><h:inputText value="#{campaignBean.campaign.campaignId}"/><br/></td>
			</tr>
			<tr>
				<td><h:outputText value="#{msg.enter_campaign_name}"/></td>
				<td><h:inputText value="#{campaignBean.campaign.campaignName}"/><br/></td>
			</tr>
			<tr>
				<td><h:outputText value="#{msg.enter_channel_name}"/> </td>
				<td><h:inputText value="#{campaignBean.campaign.channelName}"/><br/></td>
			</tr>
			
			<tr>
				<td><h:outputText value="#{msg.enter_noof_receiver}"/></td>
				<td><h:inputText value="#{campaignBean.campaign.noOfReceiver}"/><br/></td>
			</tr>
			<tr>
				<td></td> 
				<td>	<h:commandButton value="#{msg.save}" action="#{campaignBean.saveCampaignDetails}"/> </td>
			</tr>
		</table>
		</h:form>
		</fieldset>
   </f:view>
 </body>
</html>  