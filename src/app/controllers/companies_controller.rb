class CompaniesController < ApplicationController
    before_action :set_company, only: [:update, :show, :destroy, :edit]

    def index
        @companies = Company.order(:name)
    end

    def show
    end

    def new
        @company = Company.new
        @users = User.order(:last_name)
    end

    def create
        @users = User.order(:last_name)
        @company = Company.new(company_params)
        if @company.save
            redirect_to @company
        else
            flash.now[:errors] = @company.errors.full_messages
            render action: 'new'
        end
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def set_company
        @company = Company.find(params[:id])
    end

    def company_params
        params.require(:company).permit(:name, :user_id, :cost)
    end
end
