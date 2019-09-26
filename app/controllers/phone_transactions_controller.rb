class PhoneTransactionsController < ApplicationController
  before_action :set_phone_transaction, only: [:show, :edit, :update, :destroy]

  # GET /phone_transactions
  # GET /phone_transactions.json
  def index
    @phone_transactions = PhoneTransaction.all
  end

  # GET /phone_transactions/1
  # GET /phone_transactions/1.json
  def show
  end

  # GET /phone_transactions/new
  def new
    @phone_transaction = PhoneTransaction.new
  end

  # GET /phone_transactions/1/edit
  def edit
  end

  # POST /phone_transactions
  # POST /phone_transactions.json
  def create
    @phone_transaction = PhoneTransaction.new(phone_transaction_params)

    respond_to do |format|
      if @phone_transaction.save
        format.html { redirect_to @phone_transaction, notice: 'Phone transaction was successfully created.' }
        format.json { render :show, status: :created, location: @phone_transaction }
      else
        format.html { render :new }
        format.json { render json: @phone_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /phone_transactions/1
  # PATCH/PUT /phone_transactions/1.json
  def update
    respond_to do |format|
      if @phone_transaction.update(phone_transaction_params)
        format.html { redirect_to @phone_transaction, notice: 'Phone transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @phone_transaction }
      else
        format.html { render :edit }
        format.json { render json: @phone_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /phone_transactions/1
  # DELETE /phone_transactions/1.json
  def destroy
    @phone_transaction.destroy
    respond_to do |format|
      format.html { redirect_to phone_transactions_url, notice: 'Phone transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_phone_transaction
      @phone_transaction = PhoneTransaction.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def phone_transaction_params
      params.fetch(:phone_transaction, {})
    end
end
