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

  desc 'import 课程介绍'
  task :courses => :environment  do
    puts "导入 课程介绍"
    oo = Excel.new("#{Rails.root}/lib/tasks/kecheng.xls")
    oo.default_sheet = oo.sheets.first

        gxk_id = Category.find_by_name('公选课').id 
        jx_id = Category.find_by_name('机械工程学院').id 
        jt_id = Category.find_by_name('交通与车辆工程学院').id 
        qg_id = Category.find_by_name('轻工与农业工程学院').id 
        dq_id = Category.find_by_name('电气与电子工程学院').id 
        jsj_id = Category.find_by_name('计算机科学与技术学院').id 
        hx_id = Category.find_by_name('化学工程学院').id 
        jc_id = Category.find_by_name('建筑工程学院').id 
        zh_id = Category.find_by_name('资源与环境工程学院').id 
        cl_id = Category.find_by_name('材料科学与工程学院').id 
        sm_id = Category.find_by_name('生命科学学院').id 
        sx_id = Category.find_by_name('数学与信息科学学院').id 
        wl_id = Category.find_by_name('物理与光电信息技术学院').id 
        wx_id = Category.find_by_name('文学与新闻传播学院').id 
        wgy_id = Category.find_by_name('外国语学院').id 
        fxy_id = Category.find_by_name('法学院').id 
        jj_id = Category.find_by_name('经济学院').id 
        gl_id = Category.find_by_name('管理学院').id 
        ms_id = Category.find_by_name('美术学院').id 
        yy_id = Category.find_by_name('音乐学院').id 
        ty_id = Category.find_by_name('体育学院').id 
        gc_id = Category.find_by_name('工程技术学院').id 

    2.upto(oo.last_row) do |line|
      puts "now import #{oo.cell(line,'B')}"
      course = Course.new 
      course.name = oo.cell(line,'B')
      course.engname = oo.cell(line,'C')
      course.number = oo.cell(line, 'D')
      course.point = oo.cell(line,'E')
      course.pre_course = oo.cell(line, 'F')
      course.book = oo.cell(line, 'G')
      course.references = oo.cell(line,'H')
      course.introduction = oo.cell(line, 'I')
      course.college = oo.cell(line, 'J')
      course.major = oo.cell(line,'K')
      course.level = oo.cell(line, 'L')
      course.attribution = oo.cell(line,'R')

      case oo.cell(line, 'Q')
       when '公选课'
        course.category_id = gxk_id
       when '机械工程学院'
        course.category_id = jx_id
       when '交通与车辆工程学院'
        course.category_id = jt_id
       when '轻工与农业工程学院'
        course.category_id = qg_id
       when '电气与电子工程学院'
        course.category_id = dq_id
       when '计算机科学与技术学院'
        course.category_id = jsj_id
       when '化学工程学院'
        course.category_id = hx_id
       when '建筑工程学院'
        course.category_id = jc_id
       when '资源与环境工程学院'
        course.category_id = zh_id
       when '材料科学与工程学院'
        course.category_id = cl_id
       when '生命科学学院'
        course.category_id = sm_id
       when '数学与信息科学学院'
        course.category_id = sx_id
       when '物理与光电信息技术学院'
        course.category_id = wl_id
       when '文学与新闻传播学院'
        course.category_id = wx_id
       when '外国语学院'
        course.category_id = wgy_id
       when '法学院'
        course.category_id = fxy_id
       when '经济学院'
        course.category_id = jj_id
       when '管理学院'
        course.category_id = gl_id
       when '美术学院'
        course.category_id = ms_id
       when '音乐学院'
        course.category_id = yy_id
       when '体育学院'
        course.category_id = ty_id
       when '工程技术学院'
        course.category_id = gc_id
      else
        next
      end
      course.save!
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
