class Countries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.column :name, :string
      t.column :continent, :string
      t.column :description, :string

      t.timestamps
    end

    create_table :projects do |t|
      t.column :name, :string
      t.column :description, :string
      t.column :country_id, :integer

      t.timestamps
    end
  end
end
