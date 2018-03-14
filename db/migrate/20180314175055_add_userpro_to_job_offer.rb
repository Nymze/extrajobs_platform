class AddUserproToJobOffer < ActiveRecord::Migration[5.1]
  def change
    add_column :job_offers, :userpro_id, :integer
  end
end
