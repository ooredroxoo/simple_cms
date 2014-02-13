class Subject < ActiveRecord::Base

	has_many :pages


	# obtendo apenas ativos
	scope :active, lambda {where(:active => true)}
	# obtendo apenas os inativos
	scope :not_active, lambda {where(:active => false)}
	# obtendo apenas visiveis
	scope :visible, lambda {where(:visible => true)}
	# obtendo apenas os invisiveis
	scope :invisible, lambda {where(:visible => false)}
	# com conteudo
	scope :with_content_type, lambda {|ctype| where(:with_content_type => ctype)}

	# ordenando
	scope :sorted, lambda {order("subjects.position ASC")}
	scope :newest_first, lambda {order("subjects.created_at DESC")}

	# busca 
	scope :search, lambda { |query| 
		where(["name LIKE ? ", "%#{query}%"]) 
	}

end
