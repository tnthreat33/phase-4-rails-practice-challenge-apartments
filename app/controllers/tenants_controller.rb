class TenantsController < ActionController::API

    def create 
        tenant = Tenant.create(tenant_params)
        render json: tenant, status: :created 

    end 

    def show 
        tenant = Tenant.find(params[:id])
        render json: tenant 
    end

    def destroy
        tenant = Tenant.find(params[:id])
        
        if tenant 
            tenant.destroy 
            head :no_content
        else 
            render json: {error: "Not Found"}, status: :not_found
        end
    end 

    private 

    def tenant_params 
        params.permit(:name, :age)
end
end