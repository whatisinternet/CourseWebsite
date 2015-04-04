module LecturesHelper
  def get_course
    @course = Course.find_by_id(@lecture.course_id) if @lecture
  end

  def display_style(lecture)
    return "" unless lecture.lecture_date
    if lecture.lecture_date < Date.today
      "&#x2713;"
    elsif lecture.lecture_date == Date.today
      "&#x21d2;"
    else
      "&#x2715;"
    end
  end

end
