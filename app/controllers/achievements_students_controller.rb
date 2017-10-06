class AchievementsStudentsController < ApplicationController
  before_action :set_achievements_student, only: [:show, :edit, :update, :destroy]

  # GET /achievements_students
  # GET /achievements_students.json
  def index
    @achievements_students = AchievementsStudent.all
  end

  # GET /achievements_students/1
  # GET /achievements_students/1.json
  def show
  end

  # GET /achievements_students/new
  def new
    @achievements_student = AchievementsStudent.new
  end

  # GET /achievements_students/1/edit
  def edit
  end

  # POST /achievements_students
  # POST /achievements_students.json
  def create
    @achievements_student = AchievementsStudent.new(achievements_student_params)

    respond_to do |format|
      if @achievements_student.save
        format.html { redirect_to @achievements_student, notice: 'Achievements student was successfully created.' }
        format.json { render :show, status: :created, location: @achievements_student }
      else
        format.html { render :new }
        format.json { render json: @achievements_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /achievements_students/1
  # PATCH/PUT /achievements_students/1.json
  def update
    respond_to do |format|
      if @achievements_student.update(achievements_student_params)
        format.html { redirect_to @achievements_student, notice: 'Achievements student was successfully updated.' }
        format.json { render :show, status: :ok, location: @achievements_student }
      else
        format.html { render :edit }
        format.json { render json: @achievements_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /achievements_students/1
  # DELETE /achievements_students/1.json
  def destroy
    @achievements_student.destroy
    respond_to do |format|
      format.html { redirect_to achievements_students_url, notice: 'Achievements student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_achievements_student
      @achievements_student = AchievementsStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def achievements_student_params
      params.require(:achievements_student).permit(:achievement_id, :student_id)
    end
end
