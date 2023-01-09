class Campaign < ApplicationRecord
  has_many :campaign_states

  def self.find_last_completed_campaign
    campaign = CampaignState.where(state: 4).last.campaign
    return campaign
  end

  def self.list_campaigns_by_state(state)
    all_campaigns = Campaign.all
    campaign_states = all_campaigns.map {|campaign| campaign.campaign_states.last}
    states = campaign_states.select {|campaign_state| campaign_state.state == state.to_s}
    campaigns = { state: state,campaigns: Campaign.find(states.pluck(:campaign_id)) }
    return campaigns
  end

  def self.total_campaigns_by_state
    campaigns = Campaign.all
    campaign_states = campaigns.map {|campaign| campaign.campaign_states.last}.group_by(&:state)
    states_count = campaign_states.map { |key,value| { campaigns: value.size, state: key } }
    return states_count
  end
end