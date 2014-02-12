class CreatePages < ActiveRecord::Migration
  def up
    create_table :pages do |t|
      t.string :name, index: true
      t.integer :permalink, index: true
      t.integer :position
      t.boolean :visible
      t.references :subject, index: true

      t.timestamps
    end
    execute "ALTER TABLE pages ADD CONSTRAINT fk_pages_subjects FOREIGN KEY (subject_id) REFERENCES subjects(id)"
  end

  def down
    drop_table :pages
  end
end
