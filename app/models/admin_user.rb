class AdminUser < ActiveRecord::Base

	has_and_belongs_to_many :pages, :join_table => "admin_user_pages"#, :foreign_key => "page_id"
	has_many :sections_edits
	#has_and_belongs_to_many :pages

	# To configure a diferent table
	# self.table_name = "admin_users"
	
end
