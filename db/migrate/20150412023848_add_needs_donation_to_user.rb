class AddNeedsDonationToUser < ActiveRecord::Migration
  def change
    add_column :users, :needs_donation, :boolean
  end
end
