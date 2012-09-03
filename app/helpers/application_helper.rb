#encoding: utf-8
module ApplicationHelper

  def dashboard_menu
    [
      {
      :name => '管理菜单',
      :items => [
          ['机构设置', 'jgsz', 'icon-cog', admin_organizations_path],
          ['政策法规', 'zcfg', 'icon-book', admin_laws_path],
          ['规章制度', 'gzzd', 'icon-th-list', admin_rule_types_path],
          ['课程介绍', 'kcjs', 'icon-th-list', admin_course_types_path],
          ['工作流程', 'gzlc', 'icon-random', admin_workflow_types_path],
          ['教务通知', 'jwtz', 'icon-file', admin_news_index_path],
          ['下载专区', 'xzzq', 'icon-download', admin_documents_path],
          ['教改立项', 'jglx', 'icon-file', admin_education_projects_path],
          ['教学成果', 'jxcg', 'icon-file', admin_teaching_achievements_path],
          ['创新竞赛', 'cxjs', 'icon-th-list', admin_competition_types_path],
          ['相关链接', 'xglj', 'icon-file', admin_links_path],
          ['用户管理', 'yhgl', 'icon-user', admin_users_path],
          ['教学简讯', 'jxjx', 'icon-list-alt', admin_message_channels_path]
        ]
    }
    ]
  end

  def category_name(id)
    Category.find(id).name
  end
  def remove_html_tag(text)
    text.gsub(%r{</?[^>]+?>}, '')
  end
end
