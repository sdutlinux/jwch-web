#coding: utf-8
class News < ActiveRecord::Base
  attr_accessible :author, :content, :department, :show, :title
  validates :content,:title, :presence => true
end

=begin

教务通知表
      integer :id     primary_key
      string :title
      string :content
      string :author
      string :department
      boolean :show
      date    :created_at
      date    :updated_at

=end
