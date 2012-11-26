class EntradasController < ApplicationController
  # GET /entradas
  # GET /entradas.json
  def index
    @entradas = Entrada.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @entradas }
    end
  end

  # GET /entradas/1
  # GET /entradas/1.json
  def show
    @entrada = Entrada.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @entrada }
    end
  end

  # GET /entradas/new
  # GET /entradas/new.json
  def new
    @entrada = Entrada.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @entrada }
    end
  end

  # GET /entradas/1/edit
  def edit
    @entrada = Entrada.find(params[:id])
  end

  # POST /entradas
  # POST /entradas.json
  def create
    @entrada = Entrada.new(params[:entrada])

    respond_to do |format|
      if @entrada.save
        format.html { redirect_to @entrada, notice: 'Entrada was successfully created.' }
        format.json { render json: @entrada, status: :created, location: @entrada }
      else
        format.html { render action: "new" }
        format.json { render json: @entrada.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /entradas/1
  # PUT /entradas/1.json
  def update
    @entrada = Entrada.find(params[:id])

    respond_to do |format|
      if @entrada.update_attributes(params[:entrada])
        format.html { redirect_to @entrada, notice: 'Entrada was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @entrada.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /entradas/1
  # DELETE /entradas/1.json
  def destroy
    @entrada = Entrada.find(params[:id])
    @entrada.destroy

    respond_to do |format|
      format.html { redirect_to entradas_url }
      format.json { head :no_content }
    end
  end
end
