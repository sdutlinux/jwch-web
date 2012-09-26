#coding: utf-8
class Organization < ActiveRecord::Base
  attr_accessible :author, :category_id, :name, :responsibility, :show
  validates :author, :category_id, :name, :responsibility, :presence => true
  
  scope :category_posts, lambda {|category_id| where(:category_id => category_id)}
end

 # 组织机构表
# == Schema Information
#
# Table name: organizations
#
#  id             :integer          not null, primary key
#  name           :string(255)
#  responsibility :text
#  author         :string(255)
#  show           :boolean          default(TRUE)
#  category_id    :integer
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

