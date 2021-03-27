class Post < ApplicationRecord
    has_one_attached :post_image
    has_rich_text :post_content

    scope :with_title, -> (parameter) { where("title like ?", "%#{parameter}%")}     
    scope :with_category, -> (parameter) { where("category like ?", "%#{parameter}%")}

    def self.search_with(parameters)
        post_query = self
        parameters.each do |parameter, value|
                if not value.empty? and post_query.respond_to? parameter
                    post_query = post_query.send(parameter, value) 
                end
            end
        post_query
    end
end
