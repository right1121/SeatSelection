class PagesController < ApplicationController
  def index
    @ticket_type = TicketType.find(1)
  end
end
