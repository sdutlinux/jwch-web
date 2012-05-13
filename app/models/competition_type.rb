#coding: utf-8
class CompetitionType < ActiveRecord::Base
  attr_accessible :name
  has_many :competitions
  validates :name, :presence => true

end

=begin rdoc

  创新竞赛类型表
  :id   integer primary_key
  :name string
  :created_at   date
  :updated_at   date

=end
