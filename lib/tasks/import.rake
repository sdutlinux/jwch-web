#coding: utf-8
namespace :import do
  desc "导入栏目"
  task :sections => :environment  do
    # 添加一些栏目
      sections = [
      {:name => "机构设置", :section_key => "jgsz"},  # id = 1
      {:name => "政策法规", :section_key => "zcfg"},  
      {:name => "规章制度", :section_key => "gzzd"},  
      {:name => "人才培养", :section_key => "rcpy"}, # id =4  
      {:name => "工作流程", :section_key => "gzlc"},  
      {:name => "教务通知", :section_key => "jwtz"},  
      {:name => "处长信箱", :section_key => "ccxx"},  
      {:name => "下载专区", :section_key => "xzzq"},  
      {:name => "教学研究", :section_key => "jxyj"},  
      {:name => "创新竞赛", :section_key => "cxjs"},  #10  
      {:name => "个人空间", :section_key => "grkj"},  
      {:name => "《教学简讯》", :section_key =>"jxjx"},

      {:name => "专业介绍", :parent_section_id => 4, :section_key => "zyjs"},
      {:name => "课程介绍", :parent_section_id => 4, :section_key => "kcjs" },   # id = 11
      {:name => "教学成果", :parent_section_id => 9, :section_key => "jxcg"},
      {:name => "教改立项", :parent_section_id => 9, :section_key => "jglx"}
    ] 

    Section.create(sections)
  end

  desc "导入分类"
   task :categories => :environment do
    categories = [
      {:name => "成员简介", :section_key => "jgsz"},
      {:name => "工作职责", :section_key => "jgsz"},

      {:name => "山东省教育教学文件", :section_key => "zcfg"},
      {:name => "国家教育教学政策法规", :section_key => "zcfg"},

      {:name => "综合类",        :section_key =>"gzzd"},
      {:name => "教学研究与改革", :section_key =>"gzzd"},
      {:name => "教学计划管理",   :section_key => "gzzd"},       
      {:name => "教学运行管理",   :section_key =>"gzzd"},
      {:name => "学籍管理",      :section_key => "gzzd"},      
      {:name => "课程及专业建设", :section_key =>"gzzd"},
      {:name => "实验教学管理",  :section_key => "gzzd"},        
      {:name => "实践教学管理",  :section_key =>"gzzd"},
      {:name => "教材建设与管理", :section_key =>"gzzd"},
      {:name => "教学质量管理",  :section_key => "gzzd"},


      {:name => "公选课", :section_key => "kcjs"},
      {:name => "机械工程学院", :section_key => "kcjs"},
      {:name => "交通与车辆工程学院", :section_key => "kcjs"},
      {:name => "轻工与农业工程学院", :section_key => "kcjs"},
      {:name => "电气与电子工程学院", :section_key => "kcjs"},
      {:name => "计算机科学与技术学院", :section_key => "kcjs"},
      {:name => "化学工程学院", :section_key => "kcjs"},
      {:name => "建筑工程学院", :section_key => "kcjs"},
      {:name => "资源与环境工程学院", :section_key => "kcjs"},
      {:name => "材料科学与工程学院", :section_key => "kcjs"},
      {:name => "生命科学学院", :section_key => "kcjs"},
      {:name => "数学与信息科学学院", :section_key => "kcjs"},
      {:name => "物理与光电信息技术学院", :section_key => "kcjs"},
      {:name => "文学与新闻传播学院", :section_key => "kcjs"},
      {:name => "外国语学院", :section_key => "kcjs"},
      {:name => "法学院", :section_key => "kcjs"},
      {:name => "经济学院", :section_key => "kcjs"},
      {:name => "管理学院", :section_key => "kcjs"},
      {:name => "美术学院", :section_key => "kcjs"},
      {:name => "音乐学院", :section_key => "kcjs"},
      {:name => "体育学院", :section_key => "kcjs"},
      {:name => "工程技术学院", :section_key => "kcjs"},

      {:name => "教学计划及教学研究工作流程", :section_key => "gzlc"},
      {:name => "实践教学工作流程", :section_key => "gzlc"},
      {:name => "实验室管理工作流程", :section_key => "gzlc"},
      {:name => "考试工作流程", :section_key => "gzlc"},
      {:name => "学业学籍工作流程", :section_key => "gzlc"},
      {:name => "教材工作流程", :section_key => "gzlc"},
      {:name => "选课中心工作流程", :section_key => "gzlc"},

      {:name => "学业学籍", :section_key => "xzzq"},
      {:name => "教学研究", :section_key => "xzzq"},
      {:name => "实践教学", :section_key => "xzzq"},
      {:name => "选课中心", :section_key => "xzzq"},
      {:name => "教材", :section_key => "xzzq"},
      {:name => "考务", :section_key => "xzzq"},
      {:name => "实验教学", :section_key => "xzzq"},
      {:name => "教学简讯", :section_key => "xzzq"},
      {:name => "通知附件", :section_key => "xzzq"},
      {:name => "质量管理", :section_key => "xzzq"},
      {:name => "其他", :section_key => "xzzq"},
      {:name => "教学评估", :section_key => "xzzq"},

      {:name => "省级教学成果一等奖", :section_key => "jxcg"},
      {:name => "省级教学成果二等奖", :section_key => "jxcg"},
      {:name => "省级教学成果三等奖", :section_key => "jxcg"},
      {:name => "校级教学成果一等奖", :section_key => "jxcg"},
      {:name => "校级教学成果二等奖", :section_key => "jxcg"},

      {:name => "国家级教改立项", :section_key => "jglx"},
      {:name => "省级教改立项", :section_key => "jglx"},
      {:name => "校级教改立项", :section_key => "jglx"},

      {:name => "全国大学生数学建模竞赛", :section_key => "cxjs"},
      {:name => "全国大学生电子设计大赛", :section_key => "cxjs"},
      {:name => "“挑战杯”全国大学生创业计划大赛", :section_key => "cxjs"},
      {:name => "“挑战杯”全国大学生课外学术科技作品竞赛", :section_key => "cxjs"},
      {:name => "中国智能机器人大赛", :section_key => "cxjs"},
      {:name => "山东省机电产品创新大赛", :section_key => "cxjs"},
      {:name => "ACM程序设计邀请赛", :section_key => "cxjs"},
      {:name => "全国大学生广告艺术大赛", :section_key => "cxjs"},
      {:name => "专利", :section_key => "cxjs"},
      {:name => "艺术类", :section_key => "cxjs"},
      {:name => "首届全国大学生测绘科技创新论文大赛", :section_key => "cxjs"},
      {:name => "村庄规划大学生暑期社会实践活动科技成果", :section_key => "cxjs"},
      {:name => "ACT第三届全国青少年外语口语电视大赛", :section_key => "cxjs"},
      {:name => "第十二届“外研社杯”全国英语辩论赛", :section_key => "cxjs"},
      {:name => "2008“CCTV杯”全国英语演讲大赛", :section_key => "cxjs"},
      {:name => "全国大学生英语竞赛", :section_key => "cxjs"},
      {:name => "全国大学生“飞思卡尔”杯智能汽车竞赛", :section_key => "cxjs"},
      {:name => "2008年中国机器人大赛暨RoboCup公开赛", :section_key => "cxjs"},
      {:name => "山东省高校结构设计大赛", :section_key => "cxjs"},
      {:name => "齐鲁大学生计算机软件设计及外语大赛", :section_key => "cxjs"},
      {:name => "SuperMap杯第七届全国高校GIS大赛", :section_key => "cxjs"},
      {:name => "第四届全国英语高师英语技能竞赛", :section_key => "cxjs"},
      {:name => "山东省第二届高校音乐专业师生基本功比赛", :section_key => "cxjs"},
      {:name => "第二届“北京住六杯”全国高等院校广联达软件算量大赛总决赛", :section_key => "cxjs"},
      {:name => "第六届“挑战杯”山东省大学生创业计划竞赛", :section_key => "cxjs"},
      {:name => "2009山东省大学生建筑设计竞赛", :section_key => "cxjs"},
      {:name => "山东省“南方测绘杯”大学生测量技能大赛", :section_key => "cxjs"},
      {:name => "全国ITAT教育工程就业技能大赛—瑞萨超级MCU模型车大赛", :section_key => "cxjs"},
      {:name => "数学竞赛", :section_key => "cxjs"},
      {:name => "村庄规划大学生暑期社会实践活动科技成果", :section_key => "cxjs"},
      {:name => "山东省电子设计大赛", :section_key => "cxjs"}, 
      {:name => "第十四届全国推艺术新人大赛（山东赛区）", :section_key => "cxjs"},
      {:name => "首届校园金话筒选拔活动山东总决赛", :section_key => "cxjs"},
      {:name => "山东省机电产品创新大赛", :section_key => "cxjs"},
      {:name => "山东省首届高校美术专业师生基本功比赛", :section_key => "cxjs"},
      {:name => "第二届“高教杯”全国大学生先进图形技能与创新大赛", :section_key => "cxjs"},
      {:name => "第三十四界山东陶瓷艺术设计创新评比", :section_key => "cxjs"},
      {:name => "第六届中国舞蹈荷花奖校园舞蹈比赛", :section_key => "cxjs"},
      {:name => "山东省大学生科技节拓普杯物理科技创新大赛", :section_key => "cxjs"},
      {:name => "第五届全国青少年优秀艺术作品展示活动", :section_key => "cxjs"},
      {:name => "“艺术使者”全国优秀新人作品展示", :section_key => "cxjs"},
      {:name => "山东省舞蹈新作品评奖", :section_key => "cxjs"},
      {:name => "山东省第三届高校音乐专业师生基本功比赛", :section_key => "cxjs"},
      {:name => "2008年山东省大学生田径锦标赛", :section_key => "cxjs"},
      {:name => "2008年山东省大学生乒乓球锦标赛5月10-12日", :section_key => "cxjs"},
      {:name => "2008年山东省大学生CUBA篮球锦标赛12月10-20日", :section_key => "cxjs"},
      {:name => "首届全国大学生创业大赛", :section_key => "cxjs"},
      {:name => "第三十四界山东陶瓷艺术设计创新评比", :section_key => "cxjs"},
      {:name => "中国互联网协会建行“e路通”杯第二届全国大学生网络商务创新应用大赛", :section_key => "cxjs"},
      {:name => "全国大学生电子设计竞赛", :section_key => "cxjs"},
      {:name => "山东省第十届大学生科技文化艺术节之山东省大学生舞蹈大赛", :section_key => "cxjs"},
      {:name => "首届搜狐国家校园博客大师赛", :section_key => "cxjs"},
      {:name => "山东省第三届学生文学艺术博览会", :section_key => "cxjs"},
      {:name => "第八届全国机器人足球锦标赛", :section_key => "cxjs"},
      {:name => "“星科杯”山东省机器人大赛", :section_key => "cxjs"},
      {:name => "第十届“外研社”全国英语辩论赛", :section_key => "cxjs"},
      {:name => "CCTV杯全国英语演讲比赛山东赛区", :section_key => "cxjs"}
    ]

    categories.each do |category|
      section_id = Section.find_by_section_key(category[:section_key]).id 
      Category.create(
        :name => category[:name],
        :section_id => section_id,
        :section_key => category[:section_key]
        )
    end
   end 

   desc "import all "
   task :all => [:sections, :categories] 

end