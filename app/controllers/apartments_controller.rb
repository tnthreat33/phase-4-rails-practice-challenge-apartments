class ApartmentsController < ActionController::API

    def create 
        apartment = Apartment.create(apartment_params)
        render json: apartment, status: :created 

    end 

    def show 
        apartment = Apartment.find(params[:id])
        render json: apartment 
    end

    def destroy
        apartment = Apartment.find(params[:id])
        
        if apartment 
            apartment.destroy 
            head :no_content
        else 
            render json: {error: "Not Found"}, status: :not_found
        end
    end 

    private 

    def apartment_params 
        params.permit(:name, :age)
end
end