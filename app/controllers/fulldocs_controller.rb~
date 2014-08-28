class FulldocsController < ApplicationController
  before_action :set_fulldoc, only: [:show, :edit, :update, :destroy]

  # GET /fulldocs
  # GET /fulldocs.json
  def index
    @fulldocs = Fulldoc.all
  end

  # GET /fulldocs/1
  # GET /fulldocs/1.json
  def show
  end

  # GET /fulldocs/new
  def new
    @fulldoc = Fulldoc.new
  end

  # GET /fulldocs/1/edit
  def edit
  end

  # POST /fulldocs
  # POST /fulldocs.json
  def create
    @fulldoc = Fulldoc.new(fulldoc_params)
    
    respond_to do |format|
      if @fulldoc.save 
         @fulldoc.mach1 
        format.html { redirect_to @fulldoc, notice: 'Fulldoc was successfully created.' }
        format.json { render :show, status: :created, location: @fulldoc }
      else
        format.html { render :new }
        format.json { render json: @fulldoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fulldocs/1
  # PATCH/PUT /fulldocs/1.json
  def update
    respond_to do |format|
      if @fulldoc.update(fulldoc_params)
        format.html { redirect_to @fulldoc, notice: 'Fulldoc was successfully updated.' }
        format.json { render :show, status: :ok, location: @fulldoc }
      else
        format.html { render :edit }
        format.json { render json: @fulldoc.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fulldocs/1
  # DELETE /fulldocs/1.json
  def destroy
    @fulldoc.destroy
    respond_to do |format|
      format.html { redirect_to fulldocs_url, notice: 'Fulldoc was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fulldoc
      @fulldoc = Fulldoc.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fulldoc_params
      params.require(:fulldoc).permit(:chemist, :source, :name, :fulltext, :format, :sumexp, :fill1, :fill2, :fill3, :oka, :okb, :okc, :okd)
    end
end
