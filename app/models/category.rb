class Category < ActiveRecord::Base
  attr_accessible :channel_id, :name
end

=begin
id integer
channel_id integer
name string
created_at integer
updated_at  integer
=end
