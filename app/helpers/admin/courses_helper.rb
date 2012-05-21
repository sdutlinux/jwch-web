module Admin::CoursesHelper
  def college_name(college_id)
    CourseType.find(college_id).college
  end
end
