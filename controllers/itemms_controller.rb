class ItemmsController < ApplicationController
  before_action :set_itemm, only: [:show, :edit, :update, :destroy]

  # GET /itemms
  # GET /itemms.json
  def index
    @itemms = Itemm.all
  end

  # GET /itemms/1
  # GET /itemms/1.json
  def show
  end

  # GET /itemms/new
  def new
    @itemm = Itemm.new
  end

  # GET /itemms/1/edit
  def edit
  end

  # POST /itemms
  # POST /itemms.json
  def create
    @itemm = Itemm.new(itemm_params)

    respond_to do |format|
      if @itemm.save
        format.html { redirect_to @itemm, notice: 'Itemm was successfully created.' }
        format.json { render :show, status: :created, location: @itemm }
      else
        format.html { render :new }
        format.json { render json: @itemm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /itemms/1
  # PATCH/PUT /itemms/1.json
  def update
    respond_to do |format|
      if @itemm.update(itemm_params)
        format.html { redirect_to @itemm, notice: 'Itemm was successfully updated.' }
        format.json { render :show, status: :ok, location: @itemm }
      else
        format.html { render :edit }
        format.json { render json: @itemm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /itemms/1
  # DELETE /itemms/1.json
  def destroy
    @itemm = Itemm.find(params[:id])   
     @itemm.destroy   
     respond_to do |format|
      format.html { redirect_to itemms_url, notice: 'Itemm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_itemm
      @itemm = Itemm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def itemm_params
      params.require(:itemm).permit(:state, :country)
    end
end
