class SubjectsTeachersController < ApplicationController
  before_action :set_subjects_teacher, only: [:show, :edit, :update, :destroy]

  # GET /subjects_teachers
  # GET /subjects_teachers.json
  def index
    @subjects_teachers = SubjectsTeacher.all
  end

  # GET /subjects_teachers/1
  # GET /subjects_teachers/1.json
  def show
  end

  # GET /subjects_teachers/new
  def new
    @subjects_teacher = SubjectsTeacher.new
  end

  # GET /subjects_teachers/1/edit
  def edit
  end

  # POST /subjects_teachers
  # POST /subjects_teachers.json
  def create
    @subjects_teacher = SubjectsTeacher.new(subjects_teacher_params)

    respond_to do |format|
      if @subjects_teacher.save
        format.html { redirect_to @subjects_teacher, notice: 'Subjects teacher was successfully created.' }
        format.json { render :show, status: :created, location: @subjects_teacher }
      else
        format.html { render :new }
        format.json { render json: @subjects_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subjects_teachers/1
  # PATCH/PUT /subjects_teachers/1.json
  def update
    respond_to do |format|
      if @subjects_teacher.update(subjects_teacher_params)
        format.html { redirect_to @subjects_teacher, notice: 'Subjects teacher was successfully updated.' }
        format.json { render :show, status: :ok, location: @subjects_teacher }
      else
        format.html { render :edit }
        format.json { render json: @subjects_teacher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subjects_teachers/1
  # DELETE /subjects_teachers/1.json
  def destroy
    @subjects_teacher.destroy
    respond_to do |format|
      format.html { redirect_to subjects_teachers_url, notice: 'Subjects teacher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subjects_teacher
      @subjects_teacher = SubjectsTeacher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subjects_teacher_params
      params.require(:subjects_teacher).permit(:subject_id, :teacher_id)
    end
end
