#coding: utf-8
class CreateCourseTypes < ActiveRecord::Migration

  def change
    create_table :course_types do |t|
      t.string :college

      t.timestamps
    end

  college = [

    {:college =>   "公选课                  "},
    {:college =>   "机械工程学院            "},
    {:college =>   "交通与车辆工程学院      "},
    {:college =>   "轻工与农业工程学院      "},
    {:college =>   "电气与电子工程学院      "},
    {:college =>   "计算机科学与技术学院    "},
    {:college =>   "化学工程学院            "},
    {:college =>   "建筑工程学院            "},
    {:college =>   "资源与环境工程学院      "},
    {:college =>   "材料科学与工程学院      "},
    {:college =>   "生命科学学院            "},
    {:college =>   "数学与信息科学学院      "},
    {:college =>   "物理与光电信息技术学院  "},
    {:college =>   "文学与新闻传播学院      "},
    {:college =>   "外国语学院              "},
    {:college =>   "法学院                  "},
    {:college =>   "经济学院                "},
    {:college =>   "管理学院                "},
    {:college =>   "美术学院                "},
    {:college =>   "音乐学院                "},
    {:college =>   "体育学院                "},
    {:college =>   "工程技术学院            "}
  ]

  CourseType.create(college)

  end

end
