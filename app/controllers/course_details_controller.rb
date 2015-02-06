class CourseDetailsController < ApplicationController
  before_action :set_course_detail, only: [:show, :edit, :update, :destroy]

  # GET /course_details
  # GET /course_details.json
  def index
    @course_details = CourseDetail.all
  end

  # GET /course_details/1
  # GET /course_details/1.json
  def show
  end

  # GET /course_details/new
  def new
    @course_detail = CourseDetail.new
  end

  # GET /course_details/1/edit
  def edit
  end

  # POST /course_details
  # POST /course_details.json
  def create
    @course_detail = CourseDetail.new(course_detail_params)

    respond_to do |format|
      if @course_detail.save
        format.html { redirect_to @course_detail, notice: 'Course detail was successfully created.' }
        format.json { render :show, status: :created, location: @course_detail }
      else
        format.html { render :new }
        format.json { render json: @course_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /course_details/1
  # PATCH/PUT /course_details/1.json
  def update
    respond_to do |format|
      if @course_detail.update(course_detail_params)
        format.html { redirect_to @course_detail, notice: 'Course detail was successfully updated.' }
        format.json { render :show, status: :ok, location: @course_detail }
      else
        format.html { render :edit }
        format.json { render json: @course_detail.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /course_details/1
  # DELETE /course_details/1.json
  def destroy
    @course_detail.destroy
    respond_to do |format|
      format.html { redirect_to course_details_url, notice: 'Course detail was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_detail
      @course_detail = CourseDetail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def course_detail_params
      params.require(:course_detail).permit(:instructor, :office)
    end
end
