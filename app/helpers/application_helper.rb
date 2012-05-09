#encoding: utf-8
module ApplicationHelper
  def nav_menus
    [
      ['网站首页',root_path]
    ]
  end

  def dashboard_menu
    [
      {
      :name => '管理菜单',
      :items => [
          ['教务通知', 'news', admin_news_index_path],
          ['添加链接', 'links', admin_links_path],
          ['用户管理', 'users', admin_users_path],
          ['下载专区', 'document', admin_documents_path],
          ['机构设置', 'organizations', admin_organizations_path],
          ['创新竞赛', 'competition', admin_competition_types_path],
          ['工作流程', 'workflow', admin_workflow_types_path],
          ['政策法规', 'laws', admin_laws_path],
          ['规章制度', 'rules', admin_rule_types_path],
          ['人才培养', 'workflow', admin_workflow_types_path],
          ['教学研究', 'workflow', admin_workflow_types_path],
          ['教学简讯', 'workflow', admin_workflow_types_path]
        ]
    }
    ]
  end

end
