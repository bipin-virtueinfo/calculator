class FrontController < ApplicationController
  def dashboard
    @investment = Investment.new
    @investment.square_feet = ''
    @investment.cost_of_property = ''
    @investment.sale_value_of_property = ''
    if request.post?
        @investment = Investment.new(investment_params)
        respond_to do |format|
          if @investment.save
            format.html { redirect_to dashboard_path, notice: "Return on Investment is: #{@investment.profit_per_square_feet}% with a profit of #{@investment.square_feet} per square feet" }
            format.json {}
          else
            format.html { render action: 'dashboard' }
            format.json { render json: @investment.errors, status: :unprocessable_entity }
          end
        end
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def investment_params
      params.require(:investment).permit!
    end
end