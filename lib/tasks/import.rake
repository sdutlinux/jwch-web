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

  desc "规章制度"
  task :rules => :environment do
    puts "import 规章制度"
    r_sheet = Excel.new("#{Rails.root}/lib/tasks/guizhangzhidu.xls")
    r_sheet.default_sheet = r_sheet.sheets.first

    puts "find id "
    zh_id   = Category.find_by_name('综合类').id 
    jxyj_id = Category.find_by_name('教学研究与改革').id 
    jxjh_id = Category.find_by_name('教学计划管理').id 
    jxyx_id = Category.find_by_name('教学运行管理').id 
    xjgl_id = Category.find_by_name('学籍管理').id 
    kgzy_id = Category.find_by_name('课程及专业建设').id 
    syjx_id = Category.find_by_name('实验教学管理').id 
    sjjx_id = Category.find_by_name('实践教学管理').id 
    jcjs_id = Category.find_by_name('教材建设与管理').id 
    jxzl_id = Category.find_by_name('教学质量管理').id 


    2.upto(r_sheet.last_row) do |line|
      puts "now import #{r_sheet.cell(line,'A')} low #{r_sheet.cell(line, 'B')} "
      rule = Rule.new
      rule.title = r_sheet.cell(line,'B')
      rule.content = r_sheet.cell(line,'C')
      case r_sheet.cell(line,'D')
      when 8
        rule.category_id = zh_id
      when 10
        rule.category_id = jxyj_id
      when 11
        rule.category_id = jxjh_id
      when 12
        rule.category_id = jxyx_id
      when 13
        rule.category_id = xjgl_id
      when 14
        rule.category_id = kgzy_id
      when 15
        rule.category_id = syjx_id
      when 16
        rule.category_id = sjjx_id
      when 17
        rule.category_id = jcjs_id
      when 18
        rule.category_id = jxzl_id
      else
        next
      end
      rule.save!
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