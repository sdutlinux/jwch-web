#coding: utf-8
namespace :import do

  desc "import news "
  task :news => :environment do
    puts 'import news tables'
    oo = Excel.new("#{Rails.root}/lib/tasks/news.xls")
    # setting the sheets 
    oo.default_sheet = oo.sheets.first
    oo.last_row.downto(2) do |line|
      news = News.new 
      # id = oo.cell(line, 'A')
      news.title = oo.cell(line, 'B')
      news.content = oo.cell(line,'C')
      news.author = oo.cell(line,'D')
      news.created_at = Time.at(oo.cell(line,'E').to_i)
      news.save
    end
    puts 'import down'
  end

  desc "import jigoushezhi"
  task :org => :environment do    
    puts "import 机构设置"
    oo = Excel.new("#{Rails.root}/lib/tasks/jigoushezhi.xls")
    oo.default_sheet = oo.sheets.first
    capid_1 = Category.find_by_name('成员简介').id 
    capid_2 =Category.find_by_name('工作职责').id 
    2.upto(oo.last_row) do |line|
      puts "import #{line} #{oo.cell(line, 'B')}"
      org = Organization.new 
      org.name = oo.cell(line, 'B')
      org.responsibility = oo.cell(line, 'C')
      org.author = oo.cell(line,'D')
      puts "oo category_id is #{oo.cell(line, 'G')}"
      if oo.cell(line, 'G').to_i == 18
        org.category_id = capid_2
      else
        org.category_id = capid_1
      end
      org.save!
    end 
  end

  desc "import zhencefagui "
  task :laws => :environment do
    puts "import 政策法规"
    oo = Excel.new("#{Rails.root}/lib/tasks/zhencefagui.xls")
    oo.default_sheet = oo.sheets.first
    # 山东省教育教学文件 cate 
    shandong_cate = Category.find_by_name('山东省教育教学文件').id
    # 国家教育教学政策法规
    guojian_cate = Category.find_by_name('国家教育教学政策法规').id
    # oo.last_row.downto(2) do |line|
    2.upto(oo.last_row) do |line|
      puts "now import #{line} low #{oo.cell(line, 'B')} "
      law = Law.new 
      cate_id = oo.cell(line, 'B')
      law.title = oo.cell(line, 'C')
      law.content = oo.cell(line,'D')
     # set Category  
      if cate_id.to_i == 32
        law.category_id = shandong_cate
      elsif cate_id.to_i == 33
        law.category_id = guojian_cate
      end
      law.save!
    end
  end

  desc "import all "
  task :all => [:news, :org, :laws]

 # for test 
  desc "destroy all"
  task :destroy_all => :environment do
    News.destroy_all
  end
end