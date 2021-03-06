#coding=utf-8
class Document < ActiveRecord::Base
  UPLOAD_PATH = "#{Rails.root.to_s}/public/uploads"

  # TODO 恢复文件时注释
  after_create :write_file
  attr_accessible :author, :category_id, :content_type, :name, :path,:upload_file
  validates :author,:name,:path,:category_id, :presence => true

  def self.categories 
    Category.where(:section_key => 'xzzq')
  end 

  def upload_file=(file)
    @file_contents = file
    self.content_type = file.content_type
    self.name = file.original_filename
    self.path = File.join("/uploads",self.object_id.to_s + '.' + file.original_filename.split('.').last)
  end

  def write_file(file = nil)
    contents = file || @file_contents.read
    Dir.mkdir(UPLOAD_PATH) unless File.exists?(UPLOAD_PATH)
    if contents
      File.open(self.full_path,'wb') do |file|
        file.write(contents)
      end
    end
  end

  def full_path
    Rails.root.to_s + '/public' + self.path 
  end
end
 
# 下载文档表
# == Schema Information
#
# Table name: documents
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  path         :string(255)
#  author       :string(255)
#  category_id  :string(255)
#  content_type :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

