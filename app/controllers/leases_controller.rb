class LeasesController < ActionController::API

    def create 
        lease = Lease.create(lease_params)
        render json: lease, status: :created 

    end 

    def destroy
        lease = Lease.find(params[:id])
        
        if lease 
            lease.destroy 
            head :no_content
        else 
            render json: {error: "Not Found"}, status: :not_found
        end
    end 

    private 

    def lease_params 
        params.permit(:rent, :tenant_id, :apartment_id)
end
end