#coding: utf-8
class Rule < ActiveRecord::Base
  attr_accessible :content, :category_id, :title
  validates :content, :title, :presence => true

  belongs_to :category
end

# 规章制度
# == Schema Information
#
# Table name: rules
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  content     :text
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

