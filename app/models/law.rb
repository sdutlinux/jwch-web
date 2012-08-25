#coding: utf-8
class Law < ActiveRecord::Base
  attr_accessible :category_id, :content, :title
  validates :content, :title, :category_id, :presence => true
  
  scope :category_posts, lambda {|category_id| where(:category_id => category_id)}
end

=begin rdoc
规章制度表
  :category_id integer
  :content text
  :title  string
=end
