#coding: utf-8
class Workflow < ActiveRecord::Base
  attr_accessible :category_id, :content, :title
  belongs_to :category 

  validates :content, :title, :category_id, :presence => true
end
  
=begin
工作流程表
  integer   :id
  integer   :workflow_type_id
  string    :title
  text      :content
  date      :created_at
  date      :updated_at
=end
