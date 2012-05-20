#coding: utf-8
class Organization < ActiveRecord::Base
  attr_accessible :author, :category_id, :name, :responsibility, :show
  validates :author, :category_id, :name, :responsibility, :presence => true
end

=begin
  组织机构表
  :id           integer
  :author       string
  :category_id  integer
  :responsibility text
  :show       boolean
  :created_at date
  :updated_at date

=end
