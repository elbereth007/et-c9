class QuotesController < ApplicationController
    # next 4 lines added 14 may 17
    def index
        # @quote = Quote.first
        @quote = Quote.order("RANDOM()").first
    end

# next 16 lines added 16 may 17, then these 3 lines deleted
#    def new
#        @quote = Quote.new
#    end

    def create
        @quote = Quote.create(quote_params)
        if @quote.invalid?
            flash[:error] = '<strong>Could not save</strong>, the data you entered is invalid.'
        end
        redirect_to root_path
    end
    
    def about
    end
    
    private
    
    def quote_params
        params.require(:quote).permit(:saying, :author)
    end

end
