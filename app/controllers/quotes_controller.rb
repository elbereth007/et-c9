class QuotesController < ApplicationController
    # next 4 lines added 14 may 17
    def index
        # @quote = Quote.first
        @quote = Quote.order("RANDOM()").first
    end
end
