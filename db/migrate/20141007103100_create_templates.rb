class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :name
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
