module ApplicationHelper
Rack::MiniProfiler.config.position = 'bottom-right'
Rack::MiniProfiler.config.start_hidden = true

    def current_basket
        # Use Find by id to avoid potential errors
        if Basket.find_by_id(session[:basket_id]).nil?
            Basket.new
        else
            Basket.find_by_id(session[:basket_id])
        end
    end
end
