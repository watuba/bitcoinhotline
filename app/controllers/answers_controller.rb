class AnswersController < ApplicationController
  before_action :set_answer, only: [:show, :edit, :update, :destroy]

  # GET /answers
  # GET /answers.json
  def index
    @answers = Answer.all
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
  end

  # GET /answers/new
  def new
    @answer = Answer.new  #Replaced Answer.new
  end

  # GET /answers/1/edit
  def edit
  end

  # POST /answers
  # POST /answers.json
  def create
    @answer = Answer.new(answer_params)  #Replaced Answer.new

    respond_to do |format|
      if @answer.save
        format.html { redirect_to dashboard_path, notice: 'Answer was successfully created.' }
        format.json { render :show, status: :created, location: @answer }
      else
        format.html { render :new }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
    @answer.user_id = current_user.id
    @answer.save
    current_user.testscore = current_user.answer.score1+current_user.answer.score2+current_user.answer.score3+current_user.answer.score4+current_user.answer.score5+current_user.answer.score6+current_user.answer.score7+current_user.answer.score8+current_user.answer.score9+current_user.answer.score10+current_user.answer.score11+current_user.answer.score12+current_user.answer.score13+current_user.answer.score14+current_user.answer.score15+current_user.answer.score16+current_user.answer.score17+current_user.answer.score18+current_user.answer.score19+current_user.answer.score20+current_user.answer.score21+current_user.answer.score22+current_user.answer.score23+current_user.answer.score24+current_user.answer.score25+current_user.answer.score26+current_user.answer.score27+current_user.answer.score28+current_user.answer.score29+current_user.answer.score30+current_user.answer.score31+current_user.answer.score32+current_user.answer.score33+current_user.answer.score34+current_user.answer.score35+current_user.answer.score36+current_user.answer.score37+current_user.answer.score38+current_user.answer.score39+current_user.answer.score40
    current_user.save
  end

  # PATCH/PUT /answers/1
  # PATCH/PUT /answers/1.json
  def update
    respond_to do |format|
      if @answer.update(answer_params)
        format.html { redirect_to dashboard_path, notice: 'Answer was successfully updated.' }
        format.json { render :show, status: :ok, location: @answer }
      else
        format.html { render :edit }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @answer.destroy
    respond_to do |format|
      format.html { redirect_to answers_url, notice: 'Answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_answer
      @answer = Answer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:score1, :score2, :score3, :score4, :score5, :score6, :score7, :score8, :score9, :score10, :score11, :score12, :score13, :score14, :score15, :score16, :score17, :score18, :score19, :score20, :score21, :score22, :score23, :score24, :score25, :score26, :score27, :score28, :score29, :score30, :score31, :score32, :score33, :score34, :score35, :score36, :score37, :score38, :score39, :score40)
    end
end
