class DocumentaryFilmsController < ApplicationController
    before_action :set_documentaryfilm, only: %i[ show edit update destroy ]
  
    # GET /documnetaryfilms or /documnetaryfilms.json
    def index
      @documentary_films = Documentaryfilm.all
    end
  
    # GET /documnetaryfilms/1 or /documnetaryfilms/1.json
    def show
    end
  
    # GET /documnetaryfilms/new
    def new
      @documentary_film =  Documentaryfilm.new
    end
  
    # GET /documnetaryfilms/1/edit
    def edit
    end
  
    # POST /documnetaryfilms or /documnetaryfilms.json
    def create
      @documentary_film =  Documentaryfilm.new(documentaryfilm_params)
  
      respond_to do |format|
        if @documentary_film.save
          format.html { redirect_to documentary_films_url(@documentary_film), notice: " Documentary Film was successfully created." }
          format.json { render :show, status: :created, location: @documentary_film }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @documentary_film.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # PATCH/PUT /documnetaryfilms/1 or /documnetaryfilms/1.json
    def update
      respond_to do |format|
        if @documentary_film.update(documentaryfilm_params)
          format.html { redirect_to documentaryfilm_url(@documentary_film), notice: " Documentary Film was successfully updated." }
          format.json { render :show, status: :ok, location: @documentary_film }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @documentaryfilm_params.errors, status: :unprocessable_entity }
        end
      end
    end
  
    # DELETE /documnetaryfilms/1 or /documnetaryfilms/1.json
    def destroy
      @documentary_film.destroy
  
      respond_to do |format|
        format.html { redirect_to documentaryfilm_url, notice: " Documentary Film was successfully destroyed." }
        format.json { head :no_content }
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_documentaryfilm
        @documentary_film =  Documentaryfilm.find(params[:id])
      end
  
      # Only allow a list of trusted parameters through.
      def  documentaryfilm_params
        params.require(:documentary_film).permit(:name, :synopsis, :director)
      end
  end
  