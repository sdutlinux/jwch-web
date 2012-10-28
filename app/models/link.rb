#coding: utf-8
class Link < ActiveRecord::Base
  attr_accessible :name, :sort, :url, :color
  validates :name,:url, :presence => true

  scope :sort_links, lambda { order("sort ASC")}
end


# 链接表
# == Schema Information
#
# Table name: links
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  sort       :integer
#  url        :string(255)
#  color      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

