#coding: utf-8
class News < ActiveRecord::Base
  attr_accessible :author, :content, :department, :show, :title
  validates :content,:title, :presence => true
end
 

# 教务通知表
# == Schema Information
#
# Table name: news
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  content    :text
#  author     :string(255)
#  department :string(255)
#  show       :boolean          default(TRUE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

