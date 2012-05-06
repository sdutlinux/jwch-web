class Organization < ActiveRecord::Base
  attr_accessible :author, :category_id, :name, :responsibility, :show
end

=begin
  id integer
  author string
  category_id integer
  responsibility string
  show bool
  created_at
  updated_at
=end
