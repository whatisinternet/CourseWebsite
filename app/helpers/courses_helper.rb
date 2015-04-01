module CoursesHelper
  def render_notes
    out_string = ""
    @course.notes.each do |note|
      out_string += (render :partial =>  'courses/notes', locals: {:note => note }).to_s
    end
    out_string.html_safe
  end

  def render_assignments
    out_string = ""
    @course.assignments.each do |assignment|
      out_string += (render :partial => 'courses/assignments', locals: {:assignment => assignment}).to_s
    end
    out_string.html_safe
  end
end
