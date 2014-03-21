class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :description
      t.boolean :is_done, default:false
      t.belongs_to :category, index: true

      t.timestamps
    end
  end
end
