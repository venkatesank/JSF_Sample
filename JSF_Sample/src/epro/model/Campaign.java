package epro.model;

import java.io.Serializable;

public class Campaign implements Serializable  {

	private String campaignId;
	private String campaignName;
	private String channelName;
	private Integer noOfReceiver;
	
	public Campaign(){}

	/**
	 * @return the campaignId
	 */
	public String getCampaignId() {
		return campaignId;
	}

	/**
	 * @param campaignId the campaignId to set
	 */
	public void setCampaignId(String campaignId) {
		this.campaignId = campaignId;
	}

	/**
	 * @return the campaignName
	 */
	public String getCampaignName() {
		return campaignName;
	}

	/**
	 * @param campaignName the campaignName to set
	 */
	public void setCampaignName(String campaignName) {
		this.campaignName = campaignName;
	}

	/**
	 * @return the channelName
	 */
	public String getChannelName() {
		return channelName;
	}

	/**
	 * @param channelName the channelName to set
	 */
	public void setChannelName(String channelName) {
		this.channelName = channelName;
	}

	/**
	 * @return the noOfReceiver
	 */
	public Integer getNoOfReceiver() {
		return noOfReceiver;
	}

	/**
	 * @param noOfReceiver the noOfReceiver to set
	 */
	public void setNoOfReceiver(Integer noOfReceiver) {
		this.noOfReceiver = noOfReceiver;
	};
	
	
}
