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

  desc "import 教学成果"
  task :teaching => :environment do 
    puts 'import teaching_achievement'
    oo = Excel.new("#{Rails.root}/lib/tasks/jiaoxuechengguo.xls")
    # setting the sheets 
    oo.default_sheet = oo.sheets.first
    2.upto(oo.last_row) do |line|
      puts "now import #{oo.cell(line, 'B')}"
      ta = TeachingAchievement.new
      # id = oo.cell(line, 'A')
      ta.name = oo.cell(line, 'B')
      ta.team = oo.cell(line,'C')
      ta.year = oo.cell(line,'D').to_i.to_s
      ta.department = oo.cell(line,'E')
      ta.rank = oo.cell(line,'G')
      ta.save!
    end
    puts 'import down'
  end

  desc "import 教改立项"
  task :edu_project => :environment do 
    puts "import jiaogailixiang"
    oo = Excel.new("#{Rails.root}/lib/tasks/jiaogailixiang.xls")
    # setting the sheets 
    oo.default_sheet = oo.sheets.first
    2.upto(oo.last_row) do |line|
      puts "now import #{oo.cell(line,'B')}"
      ep = EducationProject.new
      ep.name = oo.cell(line, 'B')
      ep.team = oo.cell(line,'C')
      ep.year = oo.cell(line, 'D').to_i.to_s
      ep.department = oo.cell(line,'E')
      ep.rank = oo.cell(line, 'G')
      ep.save!
    end
    puts "import down"
  end

  desc "import 创新竞赛"
  task :competitions => :environment do
    puts "import competitions"
    oo = Excel.new("#{Rails.root}/lib/tasks/chaungxijingsai.xls")
    # setting the sheets 
    oo.default_sheet = oo.sheets.first

       12_id = Category.find_by_name("全国大学生数学建模竞赛").id 
       _id = Category.find_by_name("全国大学生电子设计大赛").id 
       14_id = Category.find_by_name("“挑战杯”全国大学生创业计划大赛").id 
       15_id = Category.find_by_name("“挑战杯”全国大学生课外学术科技作品竞赛").id 
       16_id = Category.find_by_name("中国智能机器人大赛").id 
       17_id = Category.find_by_name("山东省机电产品创新大赛").id 
       _id = Category.find_by_name("ACM程序设计邀请赛").id 
       19_id = Category.find_by_name("全国大学生广告艺术大赛").id 
       20_id = Category.find_by_name("专利").id 
       _id = Category.find_by_name("艺术类").id 
       _id = Category.find_by_name("首届全国大学生测绘科技创新论文大赛").id 
       _id = Category.find_by_name("村庄规划大学生暑期社会实践活动科技成果").id 
       _id = Category.find_by_name("ACT第三届全国青少年外语口语电视大赛").id 
       _id = Category.find_by_name("第十二届“外研社杯”全国英语辩论赛").id 
       _id = Category.find_by_name("2008“CCTV杯”全国英语演讲大赛").id 
       _id = Category.find_by_name("全国大学生英语竞赛").id 
       _id = Category.find_by_name("全国大学生“飞思卡尔”杯智能汽车竞赛").id 
       _id = Category.find_by_name("2008年中国机器人大赛暨RoboCup公开赛").id 
       _id = Category.find_by_name("山东省高校结构设计大赛").id 
       _id = Category.find_by_name("齐鲁大学生计算机软件设计及外语大赛").id 
       _id = Category.find_by_name("SuperMap杯第七届全国高校GIS大赛").id 
       _id = Category.find_by_name("第四届全国英语高师英语技能竞赛").id 
       _id = Category.find_by_name("山东省第二届高校音乐专业师生基本功比赛").id 
       _id = Category.find_by_name("第二届“北京住六杯”全国高等院校广联达软件算量大赛总决赛").id 
       _id = Category.find_by_name("第六届“挑战杯”山东省大学生创业计划竞赛").id 
       _id = Category.find_by_name("2009山东省大学生建筑设计竞赛").id 
       _id = Category.find_by_name("山东省“南方测绘杯”大学生测量技能大赛").id 
       _id = Category.find_by_name("全国ITAT教育工程就业技能大赛—瑞萨超级MCU模型车大赛").id 
       _id = Category.find_by_name("数学竞赛").id 
       _id = Category.find_by_name("村庄规划大学生暑期社会实践活动科技成果").id 
       13_id = Category.find_by_name("山东省电子设计大赛" ).id 
       _id = Category.find_by_name("第十四届全国推艺术新人大赛（山东赛区）").id 
       _id = Category.find_by_name("首届校园金话筒选拔活动山东总决赛").id 
       _id = Category.find_by_name("山东省机电产品创新大赛").id 
       _id = Category.find_by_name("山东省首届高校美术专业师生基本功比赛").id 
       _id = Category.find_by_name("第二届“高教杯”全国大学生先进图形技能与创新大赛").id 
       _id = Category.find_by_name("第三十四界山东陶瓷艺术设计创新评比").id 
       _id = Category.find_by_name("第六届中国舞蹈荷花奖校园舞蹈比赛").id 
       _id = Category.find_by_name("山东省大学生科技节拓普杯物理科技创新大赛").id 
       _id = Category.find_by_name("第五届全国青少年优秀艺术作品展示活动").id 
       _id = Category.find_by_name("“艺术使者”全国优秀新人作品展示").id 
       _id = Category.find_by_name("山东省舞蹈新作品评奖").id 
       _id = Category.find_by_name("山东省第三届高校音乐专业师生基本功比赛").id 
       _id = Category.find_by_name("2008年山东省大学生田径锦标赛").id 
       _id = Category.find_by_name("2008年山东省大学生乒乓球锦标赛5月10-12日").id 
       _id = Category.find_by_name("2008年山东省大学生CUBA篮球锦标赛12月10-20日").id 
       _id = Category.find_by_name("首届全国大学生创业大赛").id 
       _id = Category.find_by_name("第三十四界山东陶瓷艺术设计创新评比").id 
       _id = Category.find_by_name("中国互联网协会建行“e路通”杯第二届全国大学生网络商务创新应用大赛").id 
       _id = Category.find_by_name("全国大学生电子设计竞赛").id 
       _id = Category.find_by_name("山东省第十届大学生科技文化艺术节之山东省大学生舞蹈大赛").id 
       _id = Category.find_by_name("首届搜狐国家校园博客大师赛").id 
       _id = Category.find_by_name("山东省第三届学生文学艺术博览会").id 
       _id = Category.find_by_name("第八届全国机器人足球锦标赛").id 
       _id = Category.find_by_name("“星科杯”山东省机器人大赛").id 
       _id = Category.find_by_name("第十届“外研社”全国英语辩论赛").id 
       _id = Category.find_by_name("CCTV杯全国英语演讲比赛山东赛区").id 

    2.upto(oo.last_row) do |line|
      com = Competition.new 

      com.title = oo.cell(line,'B')
      com.rank = oo.cell(line,'C')
      com.year= oo.cell(line,'D')
      com.teacher = oo.cell(line,'E')
      com.member = oo.cell(line,'F')
      com.remark = oo.cell(line,'I')

      case  oo.cell(line,'H')
      when 13 
       com.category_id = _id 
      when 13 
       com.category_id = _id 
      when 13 
       com.category_id = _id 
      when 13 
       com.category_id = _id 
      when 13 
       com.category_id = _id 
      when 13 
       com.category_id = _id 
      when 13 
       com.category_id = _id 
      when 13 
       com.category_id = _id 
      when 13 
       com.category_id = _id 
      when 13 
       com.category_id = _id 
      when 13 
       com.category_id = _id 
      when 13 
       com.category_id = _id 
      when 13 
       com.category_id = _id 
      when 13 
       com.category_id = _id 
      when 13 
       com.category_id = _id 
      when 13 
       com.category_id = _id 
      when 13 
       com.category_id = _id 
      end
     com.save!
    end
  end

  desc "import all "
  task :all => [:news, :org, :laws, :rules, :courses, :teaching, :edu_project]

 # for test 
  desc "destroy all"
  task :destroy_all => :environment do
    News.destroy_all
  end
end
