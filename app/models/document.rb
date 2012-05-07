#coding=utf-8
class Document < ActiveRecord::Base
  CATEGORY = ['学业学籍','教学研究','实践教学','选课中心','教材','考务','实验教学','教学简讯','通知附件','质量管理','教学评估','其它']

  @@path = "public/uploads"
  after_create :write_file
  attr_accessible :author, :category, :content_type, :name, :path,:upload_file

  validates :author,:name,:path,:category, :presence => true

  def upload_file=(file)
    @file_contents = file
    self.content_type = file.content_type
    self.name = file.original_filename
    self.path = File.join(@@path,self.object_id.to_s + file.original_filename)
  end

  def write_file(file = nil)
    contents = file || @file_contents.read
    Dir.mkdir(@@path) unless File.exists?(@@path)
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
  :category string
  :content_type string
  :name   string
  :path   string

=end
