class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :short
      t.string :full

      t.timestamps
    end
  end
end
