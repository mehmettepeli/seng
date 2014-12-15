class CreatePresses < ActiveRecord::Migration
  def change
    create_table :presses do |t|
      t.string :title
      t.text :content
      t.datetime :pressdate

      t.timestamps
    end
  end
end
