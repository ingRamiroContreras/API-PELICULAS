class ReservasController < ApplicationController
    before_action :set_reserva, only: [:show, :update, :destroy]
    
    # GET /reservas
    def index
      @reservas = Reserva.all
      json_response(@reservas)
    end
  
    # POST /reservas
    def create
      @reserva = Reserva.create!(reserva_params)
      json_response(@reserva, :created)
    end
  
    # GET /reservas/:id
    def show
      json_response(@reserva)
    end
  
    # PUT /reservas/:id
    def update
      @reserva.update(reserva_params)
      head :no_content
    end
  
    # DELETE /reservas/:id
    def destroy
      @reserva.destroy
      head :no_content
    end
  
    private
  
    def reserva_params
      # whitelist params
      params.permit(:nombre, :cedula, :correo, :movie_id )
    end
  
    def set_reserva
      @reserva = Reserva.find(params[:id])
    end

    
end
