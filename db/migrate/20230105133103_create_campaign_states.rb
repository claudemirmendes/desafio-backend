class CreateCampaignStates < ActiveRecord::Migration[7.0]
  def change
    create_table :campaign_states do |t|
      t.integer :state, default: 0
      t.timestamps
      t.references :campaign, index: true
    end
  end
end
