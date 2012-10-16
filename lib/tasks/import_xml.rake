#coding: utf-8
require 'rexml/document'
# 教学简讯的表导入
namespace :import_xml do

   desc "message_channel table"
   task :jianx_channel => :environment do 
    puts "import jianx_channel"
    oo = Excel.new("#{Rails.root}/lib/tasks/jianxunshijian.xls")
    # setting the sheets 
    oo.default_sheet = oo.sheets.first
    oo.last_row.downto(2) do |line|
      puts "now import #{oo.cell(line,'B')}"
      channel = MessageChannel.new
      channel.number = oo.cell(line, 'B').to_s.gsub(/\.\d/,'')
      channel.created_at = oo.cell(line,'C')
      channel.save!
    end
   end

  desc "import jianx"
  task :jianx => :environment do
    puts "import jx category"
    oo = Excel.new("#{Rails.root}/lib/tasks/jianxun_cat.xls")
    # setting the sheets 
    oo.default_sheet = oo.sheets.first
    oo.last_row.downto(2) do |line|
      puts "now import #{oo.cell(line,'C')}"
      message_type = MessageType.new 

      message_type.old_id = oo.cell(line, 'A')
      message_type.name = oo.cell(line, 'C')

      message_channel_number = oo.cell(line, 'D').to_s.gsub(/\.\d/,'')
      message_channel_id = MessageChannel.find_by_number(message_channel_number).id 

      message_type.message_channel_id = message_channel_id
      message_type.save!
    end
  end

  desc "import messages xml data"
  task :messages => :environment do
    xml_file = File.open(Rails.root.to_s + "/lib/tasks/jinx.xml")
    jx_xml = REXML::Document.new(xml_file)

    jx_xml.root.each_element do |jx|
      jx.each_element  do |node|
        puts "node: #{node.name}"
      end
    end
  end
end
