class CreateSubjects < ActiveRecord::Migration
  def up
    create_table :subjects do |t|
      t.string :name, index:true
      t.integer :position
      t.boolean :visible, :default => true

      t.timestamps
    end
  end

  def down
  	drop_table :subjects
  end
end
