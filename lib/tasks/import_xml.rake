#coding: utf-8
require 'rexml/document'
namespace :import_xml do
  desc "import jianx"
  task :jianx => :environment do
    puts "import jx"
    xml_file = File.open(Rails.root.to_s + "/lib/tasks/jinx.xml")
    jx_xml = REXML::Document.new(xml_file)

    jx_xml.root.each_element do |jx|
      jx.each_element  do |node|
        puts "node: #{node.name}"
      end
    end
  end
end
