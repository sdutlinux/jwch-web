#coding: utf-8
class Law < ActiveRecord::Base
  attr_accessible :category_id, :content, :title
  validates :content, :title, :category_id, :presence => true
  
  scope :category_posts, lambda {|category_id| where(:category_id => category_id)}
end

# 规章制度表
# == Schema Information
#
# Table name: laws
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  content     :text
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

