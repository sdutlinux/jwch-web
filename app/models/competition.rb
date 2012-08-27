#coding: utf-8
class Competition < ActiveRecord::Base
  attr_accessible :category_id, :member, :rank, :remark, :teacher, :time, :title
  validates :member,:rank,:teacher,:time ,:title, :category_id, :presence => true
  belongs_to :category 
end



=begin
创新竞赛表
:id            integer primary_key
:competition_type_id    integer 分类
:title         string 标题
:rank          string 奖项等级
:remark        string 备注
:member        string  成员
:time          date 时间
:teacher       string 指导老师
:created_at    date
:updated_at    date
=end
