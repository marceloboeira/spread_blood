class CreateTips < ActiveRecord::Migration
  def change
    create_table :tips do |t|
      t.string :content

      t.timestamps null: false
    end
  end
end
