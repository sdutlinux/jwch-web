#coding: utf-8
class Workflow < ActiveRecord::Base
  attr_accessible :category_id, :content, :title
  belongs_to :category 

  validates :content, :title, :category_id, :presence => true
end
  
# 工作流程表
# == Schema Information
#
# Table name: workflows
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  content     :text
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

