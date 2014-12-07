class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title
      t.datetime :adate
      t.text :content

      t.timestamps
    end
  end
end
