class SinglepartsController < ApplicationController
  before_action :set_singlepart, only: [:show, :edit, :update, :destroy]

  # GET /singleparts
  # GET /singleparts.json
  def index
    if params[:fulldoc].nil? then
    @singleparts = Singlepart.all
    else
    @singleparts = Singlepart.where(['fulldoc_id = ?', params[:fulldoc]])
    end
  end

  # GET /singleparts/1
  # GET /singleparts/1.json
  def show
  end

  # GET /singleparts/new
  def new
    @singlepart = Singlepart.new
  end

  # GET /singleparts/1/edit
  def edit
  end

  # POST /singleparts
  # POST /singleparts.json
  def create
    @singlepart = Singlepart.new(singlepart_params)

    respond_to do |format|
      if @singlepart.save
        format.html { redirect_to @singlepart, notice: 'Singlepart was successfully created.' }
        format.json { render :show, status: :created, location: @singlepart }
      else
        format.html { render :new }
        format.json { render json: @singlepart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /singleparts/1
  # PATCH/PUT /singleparts/1.json
  def update
    respond_to do |format|
      if @singlepart.update(singlepart_params)
        format.html { redirect_to @singlepart, notice: 'Singlepart was successfully updated.' }
        format.json { render :show, status: :ok, location: @singlepart }
      else
        format.html { render :edit }
        format.json { render json: @singlepart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /singleparts/1
  # DELETE /singleparts/1.json
  def destroy
    @singlepart.destroy
    respond_to do |format|
      format.html { redirect_to singleparts_url, notice: 'Singlepart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_singlepart
      @singlepart = Singlepart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def singlepart_params
      params.require(:singlepart).permit(:experimental, :describe, :ea, :hnmr, :cnmr, :calch, :calcc, :value, :fnmr, :pnmr, :bnmr, :nnmr, :mass1, :ir, :raman, :mass2, :mass3, :uv, :givenc, :givenh, :fill1, :oka, :okb, :okc, :okd, :fulldoc_id)
    end
end
