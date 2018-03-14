class CreateCandidacies < ActiveRecord::Migration[5.1]
  def change
    create_table :candidacies do |t|
      t.integer :user_id
      t.integer :job_offer_id

      t.timestamps
    end
  end
end
