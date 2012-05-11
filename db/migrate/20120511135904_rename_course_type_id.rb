class RenameCourseTypeId < ActiveRecord::Migration
  def change
    rename_column :courses, :college_type_id, :course_type_id
  end
end
