class Download < ActiveRecord::Base
  attr_accessible :category, :filename, :url, :username
end
