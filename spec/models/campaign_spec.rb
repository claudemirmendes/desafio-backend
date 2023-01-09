require 'rails_helper'

RSpec.describe Campaign, type: :model do
  describe "campaign" do
    it "return last campaign completed" do
      campaign1 = Campaign.create(name:"campaign A")
      campaign_state1 = CampaignState.create(state:"draft",campaign_id: campaign1.id)
      campaign2 = Campaign.create(name: "campaign B")
      campaign_state2 = CampaignState.create(state:"completed",campaign_id: campaign2.id)
      search = Campaign.find_last_completed_campaign
      expect(search.id).to eql(campaign2.id )
    end

    it "return campaigns by state" do
      campaign1 = Campaign.create(name:"campaign A")
      campaign_state1 = CampaignState.create(state:"draft",campaign_id: campaign1.id)
      campaign2 = Campaign.create(name: "campaign B")
      campaign_state2 = CampaignState.create(state:"draft",campaign_id: campaign2.id)
      search = Campaign.list_campaigns_by_state(:draft)
      expect(search[:campaigns].size).to eql(2)
    end

    it "return total campaigns by state" do
      response = {:campaigns=>2, :state=>"draft"}, {:campaigns=>2, :state=>"completed"}
      campaign1 = Campaign.create(name:"campaign A")
      campaign_state1 = CampaignState.create(state:"draft",campaign_id: campaign1.id)
      campaign2 = Campaign.create(name: "campaign B")
      campaign_state2 = CampaignState.create(state:"draft",campaign_id: campaign2.id)
      campaign3 = Campaign.create(name: "campaign c")
      campaign_state3 = CampaignState.create(state:"completed",campaign_id: campaign3.id)
      campaign4 = Campaign.create(name: "campaign d")
      campaign_state4 = CampaignState.create(state:"completed",campaign_id: campaign4.id)
      search = Campaign.total_campaigns_by_state
      expect(search).to eql(response)
    end
  end
end
