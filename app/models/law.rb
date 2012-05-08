#coding: utf-8
class Law < ActiveRecord::Base
  attr_accessible :category_id, :content, :title
  validates :content, :title, :category_id, :presence => true
end

=begin rdoc
规章制度表
  :category_id integer
  :content text
  :title  string
=end
