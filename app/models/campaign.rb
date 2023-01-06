class Campaign < ApplicationRecord
  has_many :campaign_states

  def self.find_last_completed_campaign
  end

  def self.list_campaigns_by_state(state)
  end

  def self.total_campaigns_by_state
  end
end