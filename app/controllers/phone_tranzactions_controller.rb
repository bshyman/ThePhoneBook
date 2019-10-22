class PhoneTranzactionsController < ApplicationController
  before_action :set_phone_tranzaction, only: [:show, :edit, :update, :destroy]

  # GET /phone_tranzactions
  # GET /phone_tranzactions.json
  def index
    @phone_tranzactions = PhoneTranzaction.all
  end

  # GET /phone_tranzactions/1
  # GET /phone_tranzactions/1.json
  def show
  end

  # GET /phone_tranzactions/new
  def new
    @phone_tranzaction = PhoneTranzaction.new
  end

  # GET /phone_tranzactions/1/edit
  def edit
  end

  # POST /phone_tranzactions
  # POST /phone_tranzactions.json
  def create
    @phone_tranzaction = PhoneTranzaction.new(phone_tranzaction_params)

    respond_to do |format|
      if @phone_tranzaction.save
        format.html { redirect_to @phone_tranzaction, notice: 'Phone tranzaction was successfully created.' }
        format.json { render :show, status: :created, location: @phone_tranzaction }
      else
        format.html { render :new }
        format.json { render json: @phone_tranzaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_tranzactions/1
  # PATCH/PUT /phone_tranzactions/1.json
  def update
    respond_to do |format|
      if @phone_tranzaction.update(phone_tranzaction_params)
        format.html { redirect_to @phone_tranzaction, notice: 'Phone tranzaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone_tranzaction }
      else
        format.html { render :edit }
        format.json { render json: @phone_tranzaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_tranzactions/1
  # DELETE /phone_tranzactions/1.json
  def destroy
    @phone_tranzaction.destroy
    respond_to do |format|
      format.html { redirect_to phone_tranzactions_url, notice: 'Phone tranzaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_tranzaction
      @phone_tranzaction = PhoneTranzaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_tranzaction_params
      params.fetch(:phone_tranzaction, {})
    end
end
