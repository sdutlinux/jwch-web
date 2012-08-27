#coding: utf-8
class Rule < ActiveRecord::Base
  attr_accessible :content, :category_id, :title
  validates :content, :title, :presence => true

  belongs_to :category
end

=begin rdoc
  规章制度
  id            :integer primary_key
  content       :text
  rule_type_id :integer
  title         :string
=end
