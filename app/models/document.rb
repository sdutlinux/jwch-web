class Document < ActiveRecord::Base
  after_create :write_file
  attr_accessible :author, :category, :content_type, :name, :path,:upload_file

  validates :author,:name,:path,:category, :presence => true 

  def upload_file=(file)
    @file_contents = file
    self.content_type = file.content_type
    self.name = file.original_filename
    self.path = File.join("public/uploads/",self.object_id.to_s + file.original_filename)
  end

  def write_file(file = nil)
    contents = file || @file_contents.read
    if contents
      File.open(self.path,'wb') do |file|
        file.write(contents)
      end
    end
  end

end
