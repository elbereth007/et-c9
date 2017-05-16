class QuotesController < ApplicationController
    # next 4 lines added 14 may 17
    def index
        # @quote = Quote.first
        @quote = Quote.order("RANDOM()").first
    end
    # next 3 lines added 16 may 17
    def new
        @quote = Quote.new
    end
end
