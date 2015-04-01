module AssignmentsHelper
  def render_assignment_questions
    out_string = ""
    @assignment.assignment_questions.each do |aq|
        out_string += (render :partial => 'assignments/questions', locals: {:assignment_question => aq}).to_s
    end
    out_string.html_safe
  end
end
