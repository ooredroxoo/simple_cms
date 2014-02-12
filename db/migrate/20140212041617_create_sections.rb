class CreateSections < ActiveRecord::Migration
  def up
    create_table :sections do |t|
      t.string :name, index:true
      t.integer :position
      t.boolean :visible, :default => true
      t.string :content_type
      t.text :content
      t.references :page, index: true

      t.timestamps
    end

    #execute "ALTER TABLE sections ADD CONSTRAINT fk_section_pages FOREIGN KEY (page_id) REFERENCES pages(id)"
  end

  def down
    drop_table :sections
  end
end
