#encoding: utf-8
module ApplicationHelper

  def dashboard_menu
    [
      {
      :name => '管理菜单',
      :items => [
          ['机构设置', 'jgsz', admin_organizations_path],
          ['政策法规', 'zcfg', admin_laws_path],
          ['规章制度', 'gzzd', admin_rule_types_path],
          ['课程介绍', 'kcjs', admin_course_types_path],
          ['工作流程', 'gzlc', admin_workflow_types_path],
          ['教务通知', 'jwtz', admin_news_index_path],
          ['下载专区', 'xzzq', admin_documents_path],
          ['教改立项', 'jglx', admin_education_projects_path],
          ['教学成果', 'jxcg', admin_teaching_achievements_path],
          ['创新竞赛', 'cxjs', admin_competition_types_path],
          ['相关链接', 'xglj', admin_links_path],
          ['用户管理', 'yhgl', admin_users_path],
          ['教学简讯', 'jxjx', admin_message_channels_path]
        ]
    }
    ]
  end

  def category_name(id)
    Category.find(id).name
  end
end
