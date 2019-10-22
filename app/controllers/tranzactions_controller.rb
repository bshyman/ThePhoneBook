class TranzactionsController < ApplicationController
  before_action :set_tranzaction, only: [:show, :edit, :update, :destroy]

  # GET /tranzactions
  # GET /tranzactions.json
  def index
    @tranzactions = Tranzaction.all
  end

  # GET /tranzactions/1
  # GET /tranzactions/1.json
  def show
  end

  # GET /tranzactions/new
  def new
    @tranzaction = Tranzaction.new
  end

  # GET /tranzactions/1/edit
  def edit
  end

  # POST /tranzactions
  # POST /tranzactions.json
  def create
    @tranzaction = Tranzaction.new(tranzaction_params)

    respond_to do |format|
      if @tranzaction.save
        format.html { redirect_to @tranzaction, notice: 'Tranzaction was successfully created.' }
        format.json { render :show, status: :created, location: @tranzaction }
      else
        format.html { render :new }
        format.json { render json: @tranzaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tranzactions/1
  # PATCH/PUT /tranzactions/1.json
  def update
    respond_to do |format|
      if @tranzaction.update(tranzaction_params)
        format.html { redirect_to @tranzaction, notice: 'Tranzaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @tranzaction }
      else
        format.html { render :edit }
        format.json { render json: @tranzaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tranzactions/1
  # DELETE /tranzactions/1.json
  def destroy
    @tranzaction.destroy
    respond_to do |format|
      format.html { redirect_to tranzactions_url, notice: 'Tranzaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tranzaction
      @tranzaction = Tranzaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tranzaction_params
      params.fetch(:tranzaction, {})
    end
end
