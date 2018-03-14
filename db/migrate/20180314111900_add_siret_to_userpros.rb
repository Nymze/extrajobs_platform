class AddSiretToUserpros < ActiveRecord::Migration[5.1]
  def change
    add_column :userpros, :siret, :string, null: false, default: ""
  end
end
