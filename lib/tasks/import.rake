namespace :import do
  desc "import news "
  task :news => :environment do
    puts 'import news tables'
    oo = Excel.new("#{Rails.root}/lib/tasks/news.xls")
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



 # for test 
  desc "destroy all"
  task :destroy_all => :environment do
    News.destroy_all
  end
end
