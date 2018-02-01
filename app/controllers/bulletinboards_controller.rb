class BulletinboardsController < ApplicationController
  before_action :set_bulletinboard, only: [:show, :edit, :update, :destroy]

  # GET /bulletinboards
  # GET /bulletinboards.json
  def index
    @bulletinboards = Bulletinboard.all
  end

  # GET /bulletinboards/1
  # GET /bulletinboards/1.json
  def show
  end

  # GET /bulletinboards/new
  def new
    @bulletinboard = Bulletinboard.new
  end

  # GET /bulletinboards/1/edit
  def edit
  end

  # POST /bulletinboards
  # POST /bulletinboards.json
  def create
    @bulletinboard = Bulletinboard.new(bulletinboard_params)

    respond_to do |format|
      if @bulletinboard.save
        format.html { redirect_to @bulletinboard, notice: 'Bulletinboard was successfully created.' }
        format.json { render :show, status: :created, location: @bulletinboard }
      else
        format.html { render :new }
        format.json { render json: @bulletinboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bulletinboards/1
  # PATCH/PUT /bulletinboards/1.json
  def update
    respond_to do |format|
      if @bulletinboard.update(bulletinboard_params)
        format.html { redirect_to @bulletinboard, notice: 'Bulletinboard was successfully updated.' }
        format.json { render :show, status: :ok, location: @bulletinboard }
      else
        format.html { render :edit }
        format.json { render json: @bulletinboard.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bulletinboards/1
  # DELETE /bulletinboards/1.json
  def destroy
    @bulletinboard.destroy
    respond_to do |format|
      format.html { redirect_to bulletinboards_url, notice: 'Bulletinboard was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bulletinboard
      @bulletinboard = Bulletinboard.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bulletinboard_params
      params.require(:bulletinboard).permit(:student_id,:messagecontent, :nickname)
    end
end
