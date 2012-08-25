class Category < ActiveRecord::Base
  attr_accessible :name, :section_id, :section_key, :type
end
