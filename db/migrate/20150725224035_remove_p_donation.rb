class RemovePDonation < ActiveRecord::Migration
  def change
    remove_column :projects, :p_donation
  end
end
