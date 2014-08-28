class AddhsController < ApplicationController
  before_action :set_addh, only: [:show, :edit, :update, :destroy]

  # GET /addhs
  # GET /addhs.json
  def index
    @addhs = Addh.all
  end

  # GET /addhs/1
  # GET /addhs/1.json
  def show
  end

  # GET /addhs/new
  def new
    @addh = Addh.new
  end

  # GET /addhs/1/edit
  def edit
  end

  # POST /addhs
  # POST /addhs.json
  def create
    @addh = Addh.new(addh_params)

    respond_to do |format|
      if @addh.save
        format.html { redirect_to @addh, notice: 'Addh was successfully created.' }
        format.json { render :show, status: :created, location: @addh }
      else
        format.html { render :new }
        format.json { render json: @addh.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /addhs/1
  # PATCH/PUT /addhs/1.json
  def update
    respond_to do |format|
      if @addh.update(addh_params)
        format.html { redirect_to @addh, notice: 'Addh was successfully updated.' }
        format.json { render :show, status: :ok, location: @addh }
      else
        format.html { render :edit }
        format.json { render json: @addh.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /addhs/1
  # DELETE /addhs/1.json
  def destroy
    @addh.destroy
    respond_to do |format|
      format.html { redirect_to addhs_url, notice: 'Addh was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_addh
      @addh = Addh.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def addh_params
      params.require(:addh).permit(:all, :value, :fill1, :fill2, :oka, :okb, :okc, :okd, :fulldoc_id, :singlepart_id, :description_id, :hnmr_id, :nmrdetailh_id, :relation_id)
    end
end
