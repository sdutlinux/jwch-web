#coding: utf-8
class Category < ActiveRecord::Base
  attr_accessible :channel_id, :name
  has_many :workflows
end


=begin

:id           integer primary_key
:channel_id   integer
:channel_name string
:name         string
:created_at   integer
:updated_at   integer

=end
