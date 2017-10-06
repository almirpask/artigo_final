class QuestionnairesStudentsController < ApplicationController
  before_action :set_questionnaires_student, only: [:show, :edit, :update, :destroy]

  # GET /questionnaires_students
  # GET /questionnaires_students.json
  def index
    @questionnaires_students = QuestionnairesStudent.all
  end

  # GET /questionnaires_students/1
  # GET /questionnaires_students/1.json
  def show
  end

  # GET /questionnaires_students/new
  def new
    @questionnaires_student = QuestionnairesStudent.new
  end

  # GET /questionnaires_students/1/edit
  def edit
  end

  # POST /questionnaires_students
  # POST /questionnaires_students.json
  def create
    @questionnaires_student = QuestionnairesStudent.new(questionnaires_student_params)

    respond_to do |format|
      if @questionnaires_student.save
        format.html { redirect_to @questionnaires_student, notice: 'Questionnaires student was successfully created.' }
        format.json { render :show, status: :created, location: @questionnaires_student }
      else
        format.html { render :new }
        format.json { render json: @questionnaires_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /questionnaires_students/1
  # PATCH/PUT /questionnaires_students/1.json
  def update
    respond_to do |format|
      if @questionnaires_student.update(questionnaires_student_params)
        format.html { redirect_to @questionnaires_student, notice: 'Questionnaires student was successfully updated.' }
        format.json { render :show, status: :ok, location: @questionnaires_student }
      else
        format.html { render :edit }
        format.json { render json: @questionnaires_student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /questionnaires_students/1
  # DELETE /questionnaires_students/1.json
  def destroy
    @questionnaires_student.destroy
    respond_to do |format|
      format.html { redirect_to questionnaires_students_url, notice: 'Questionnaires student was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_questionnaires_student
      @questionnaires_student = QuestionnairesStudent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def questionnaires_student_params
      params.require(:questionnaires_student).permit(:questionnaire_id, :student_id)
    end
end
