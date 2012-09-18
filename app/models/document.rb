#coding=utf-8
class Document < ActiveRecord::Base
  UPLOAD_PATH = "#{Rails.root.to_s}/public/uploads"

  # after_create :write_file
  attr_accessible :author, :category_id, :content_type, :name, :path,:upload_file

  validates :author,:name,:path,:category_id, :presence => true

  def self.categories 
    Category.where(:section_key => 'xzzq')
  end 

  def upload_file=(file)
    @file_contents = file
    self.content_type = file.content_type
    self.name = file.original_filename
    self.path = File.join("public/uploads",self.object_id.to_s + '_' + file.original_filename)
  end

  def write_file(file = nil)
    contents = file || @file_contents.read
    Dir.mkdir(UPLOAD_PATH) unless File.exists?(UPLOAD_PATH)
    if contents
      File.open(self.path,'wb') do |file|
        file.write(contents)
      end
    end
  end

end

=begin rdoc

下载文档表
  :author string
  :category_id  integer
  :content_type string
  :name   string
  :path   string

=end
