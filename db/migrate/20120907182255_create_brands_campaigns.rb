class CreateBrandsCampaigns < ActiveRecord::Migration
  def change
    create_table :brands_campaigns do |t|
      t.integer :brand_id
      t.integer :campaign_id
    end
  end
end
