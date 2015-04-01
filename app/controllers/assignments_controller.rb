class AssignmentsController < ApplicationController
  before_action :set_assignment, only: [:show]

  def show

  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assignment
      @assignment = Assignment.includes(:assignment_questions).find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assignment_params
      params.require(:assignment).permit(:name, :basic_info, :course_id, :due)
    end
end
