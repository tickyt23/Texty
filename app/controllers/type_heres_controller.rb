class TypeHeresController < ApplicationController
  before_action :set_type_here, only: [:show, :edit, :update, :destroy]

  # GET /type_heres
  # GET /type_heres.json
  def index
    @type_heres = TypeHere.all
  end

  # GET /type_heres/1
  # GET /type_heres/1.json
  def show
  end

  # GET /type_heres/new
  def new
    @type_here = TypeHere.new
  end

  # GET /type_heres/1/edit
  def edit
  end

  # POST /type_heres
  # POST /type_heres.json
  def create
    @type_here = TypeHere.new(type_here_params)

    respond_to do |format|
      if @type_here.save
        format.html { redirect_to @type_here, notice: 'Type here was successfully created.' }
        format.json { render :show, status: :created, location: @type_here }
      else
        format.html { render :new }
        format.json { render json: @type_here.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /type_heres/1
  # PATCH/PUT /type_heres/1.json
  def update
    respond_to do |format|
      if @type_here.update(type_here_params)
        format.html { redirect_to @type_here, notice: 'Type here was successfully updated.' }
        format.json { render :show, status: :ok, location: @type_here }
      else
        format.html { render :edit }
        format.json { render json: @type_here.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /type_heres/1
  # DELETE /type_heres/1.json
  def destroy
    @type_here.destroy
    respond_to do |format|
      format.html { redirect_to type_heres_url, notice: 'Type here was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_type_here
      @type_here = TypeHere.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def type_here_params
      params.require(:type_here).permit(:title, :words)
    end
end
