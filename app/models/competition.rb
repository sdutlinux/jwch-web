#coding: utf-8
class Competition < ActiveRecord::Base
  attr_accessible :category_id, :member, :rank, :remark, :teacher, :time, :title
  belongs_to :category
end



=begin
创新竞赛表
title :string 标题
rank :string 奖项等级
=end
