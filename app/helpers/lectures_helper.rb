module LecturesHelper
  def get_course
    @course = Course.find_by_id(@lecture.course_id) if @lecture
  end
end
