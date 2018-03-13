class CreateJobOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :job_offers do |t|
      t.string :title
      t.text :description
      t.string :city
      t.string :category
      t.string :skills
      t.integer :experience
      t.datetime :date

      t.timestamps
    end
  end
end
