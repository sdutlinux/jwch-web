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
          ['创新竞赛', 'competition', admin_competitions_path],
          ['下载专区', 'document', admin_documents_path]
        ]
      }
    ]
  end

end
