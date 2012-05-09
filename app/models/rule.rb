class Rule < ActiveRecord::Base
  attr_accessible :content, :rule_type_id, :title
  belongs_to :rule_type
end

=begin rdoc
  规章制度
=end
