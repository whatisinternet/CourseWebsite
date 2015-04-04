module AssignmentsHelper
  def render_assignment_questions
    out_string = ""
    @assignment.assignment_questions.sort.each do |aq|
        out_string += (render :partial => 'assignments/questions', locals: {:assignment_question => aq}).to_s
    end
    out_string.html_safe
  end
  def get_course
    @course = Course.find_by_id(@assignment.course_id) if @assignment
  end

end
