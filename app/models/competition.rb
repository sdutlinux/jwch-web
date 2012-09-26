#coding: utf-8
class Competition < ActiveRecord::Base
  attr_accessible :category_id, :member, :rank, :remark, :teacher, :year, :title
  validates :rank, :category_id, :presence => true
  #validates_presence_of :title, :year, :member # for import data 
  belongs_to :category 
end


# 创新竞赛表
# == Schema Information
#
# Table name: competitions
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  rank        :string(255)
#  year        :string(255)
#  teacher     :string(255)
#  member      :string(255)
#  remark      :string(255)
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

