#coding: utf-8
class Link < ActiveRecord::Base
  attr_accessible :name, :sort, :url
  validates :name,:url, :presence => true
end

=begin rdoc

链接表
  :name   string
  :sort   integer
  :url string

=end
