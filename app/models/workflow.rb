#coding: utf-8
class Workflow < ActiveRecord::Base
  attr_accessible :category_id, :content, :title
  belongs_to :category
end

=begin
工作流程表
  integer   :id
  integer   :category_id
  string    :title
  text      :content
  date      :created_at
  date      :updated_at
=end
