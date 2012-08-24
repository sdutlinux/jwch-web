#encoding: utf-8
class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :name, :null => false
      t.string :section_key, :null => false, :unique => true
      t.integer :parent_section_id

      t.timestamps

    end
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
      {:name => "创新竞赛", :section_key => "zxjs"},  #10  
      {:name => "个人空间", :section_key => "grkj"},  
      {:name => "《教学简讯》", :section_key =>"jxjx"},

      {:name => "专业介绍", :parent_section_id => 4, :section_key => "zyjs"},
      {:name => "课程介绍", :parent_section_id => 4, :section_key => "kcjs" },   # id = 11
      {:name => "教学成果", :parent_section_id => 9, :section_key => "jxcg"},
      {:name => "教改立项", :parent_section_id => 9, :section_key => "jglx"}
    ] 

    Section.create(sections)
  end
end

