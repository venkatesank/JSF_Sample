package epro.bean;

import epro.model.Campaign;


public class CampaignBean 
{
		private String campaignId;
		private String password;
		private Campaign campaign;
		
		public CampaignBean()
		{
			campaign = new Campaign(); 
		}

		public String getCampaignId() 
		{
			return(campaignId);
		}
		
		public void setCampaignId(String campaignId) 
		{
			this.campaignId = campaignId.trim();
			if (this.campaignId.isEmpty())
			{
				this.campaignId = "(none entered)";
			}
		}
		
		public String getPassword() 
		{
			return(password);
		}
		public void setPassword(String password) 
		{
		 this.password = password; 
		}
		
	
		public Campaign getCampaign() {
			return campaign;
		}


		public void setCampaign(Campaign campaign) {
			this.campaign = campaign;
		}		
		

		public String saveCampaignDetails()
		{
			System.out.println("Campaign:"+campaign);
			if( campaign != null )
			{
				System.out.println("Campaign ID:"+campaign.getCampaignId());
				System.out.println("Campaign Name:"+campaign.getCampaignName());
				System.out.println("Campaign Channel Name:"+campaign.getChannelName());
				System.out.println("Campaign No of Receiver:"+campaign.getNoOfReceiver());
			}
			//Need to store this value in Campaign Table using CampaignDAO.save(campaign)
			
			return "success"; //Now its forwarding to Campaign display screen
		}
		
		public String getCampaignDetails() 
		{
			System.out.println("campaignId:"+campaignId);
			System.out.println("password:"+password);
			System.out.println("campaign:"+campaign);
			
			if (!password.equalsIgnoreCase("angel"))
			{
				System.out.println("wrong-password");
				return("wrong-password");
			}
			
			//Actually need to get this value from database using campaignDAO.getCampaign
			campaign = getCampaignDetails(campaignId);
			
			System.out.println("Campaign:"+campaign);
			System.out.println("Campaign ID:"+campaign.getCampaignId());
			System.out.println("Campaign Name:"+campaign.getCampaignName());
			System.out.println("Campaign Channel Name:"+campaign.getChannelName());
			System.out.println("Campaign No of Receiver:"+campaign.getNoOfReceiver());
			if( campaign != null ) 
			{
				return "success";
			}else{
				return "notfound";
			}
		}
		
		private Campaign getCampaignDetails(String campaignId) 
		{
			//Need to get value from database using campaignDAO.getCampaign.
			Campaign campaign = new Campaign();
			campaign.setCampaignId(campaignId);
			campaign.setCampaignName("New Year Offer");
			campaign.setChannelName("VOICE");
			campaign.setNoOfReceiver(100);
			return campaign;
		}
		
		public String addCampaign()
		{
			System.out.println("addCampaign invoked");
			return "addCampaign";
		}
		
	}