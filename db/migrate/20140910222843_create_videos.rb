class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :title,    null: false
      t.string :director, null: false
      t.boolean :archive, null: false, default: 0
      t.integer :order,   null: false, default: 1

      t.timestamps
    end
  end
end
