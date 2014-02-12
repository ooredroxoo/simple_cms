class CreateModelos < ActiveRecord::Migration
  def change
    create_table :modelos do |t|
      t.string :name
      t.string :country

      t.timestamps
    end
  end
end
