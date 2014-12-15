class CreateCarriers < ActiveRecord::Migration
  def change
    create_table :carriers do |t|
      t.string :title
      t.text :content
      t.datetime :annocument_date

      t.timestamps
    end
  end
end
