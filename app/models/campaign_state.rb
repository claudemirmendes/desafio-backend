class CampaignState < ApplicationRecord
  enum state: [ :draft, :scheduled, :processing, :sending, :completed, :error ], _prefix: false, _scopes: false
  belongs_to :campaign
end