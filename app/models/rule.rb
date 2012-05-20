#coding: utf-8
class Rule < ActiveRecord::Base
  attr_accessible :content, :rule_type_id, :title
  belongs_to :rule_type

  validates :content, :title, :presence => true
end

=begin rdoc
  规章制度
  id            :integer primary_key
  content       :text
  rule_type_id :integer
  title         :string
=end
