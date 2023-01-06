CampaignState.delete_all
Campaign.delete_all

# Campaign A in draft
campaign_a = Campaign.create(name: 'Campaign A')
CampaignState.create(campaign_id: campaign_a.id, state: :draft)

campaign_ab = Campaign.create(name: 'Campaign AB')
CampaignState.create(campaign_id: campaign_ab.id, state: :draft)

campaign_ac = Campaign.create(name: 'Campaign AC')
CampaignState.create(campaign_id: campaign_ac.id, state: :draft)

# Campaign B scheduled
campaign_b = Campaign.create(name: 'Campaign B')
CampaignState.create(campaign_id: campaign_b.id, state: :draft)
CampaignState.create(campaign_id: campaign_b.id, state: :scheduled)

# Campaign C processing
campaign_c = Campaign.create(name: 'Campaign C')
CampaignState.create(campaign_id: campaign_c.id, state: :draft)
CampaignState.create(campaign_id: campaign_c.id, state: :scheduled)
CampaignState.create(campaign_id: campaign_c.id, state: :processing)

campaign_ca = Campaign.create(name: 'Campaign CA')
CampaignState.create(campaign_id: campaign_ca.id, state: :draft)
CampaignState.create(campaign_id: campaign_ca.id, state: :scheduled)
CampaignState.create(campaign_id: campaign_ca.id, state: :processing)

# Campaign D sending
campaign_d = Campaign.create(name: 'Campaign D')
CampaignState.create(campaign_id: campaign_d.id, state: :draft)
CampaignState.create(campaign_id: campaign_d.id, state: :scheduled)
CampaignState.create(campaign_id: campaign_d.id, state: :processing)
CampaignState.create(campaign_id: campaign_d.id, state: :sending)

# Campaign E completed
campaign_e = Campaign.create(name: 'Campaign E')
CampaignState.create(campaign_id: campaign_e.id, state: :draft)
CampaignState.create(campaign_id: campaign_e.id, state: :scheduled)
CampaignState.create(campaign_id: campaign_e.id, state: :processing)
CampaignState.create(campaign_id: campaign_e.id, state: :sending)
CampaignState.create(campaign_id: campaign_e.id, state: :completed)

campaign_ea = Campaign.create(name: 'Campaign EA')
CampaignState.create(campaign_id: campaign_ea.id, state: :draft)
CampaignState.create(campaign_id: campaign_ea.id, state: :scheduled)
CampaignState.create(campaign_id: campaign_ea.id, state: :processing)
CampaignState.create(campaign_id: campaign_ea.id, state: :sending)
CampaignState.create(campaign_id: campaign_ea.id, state: :completed)

# Campaign F in draft
campaign_f = Campaign.create(name: 'Campaign F')
CampaignState.create(campaign_id: campaign_f.id, state: :error)
