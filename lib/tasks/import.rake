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

  desc "import zhencefagui"
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
      if cate_id == 32
        law.category_id = shandong_cate
      elsif cate_id == 33
        law.category_id = guojian_cate
      end
      law.save!
    end
  end

 # for test 
  desc "destroy all"
  task :destroy_all => :environment do
    News.destroy_all
  end
end