class SeatController < ApplicationController
  def index
  	@seat_booked=""
  	SeatBooked.all.each do |t|
  		@seat_booked+="#{t.row}-#{t.column},"
  	end

  end

  def book_seat
  	render json: {:msg => "Failure"} if params[:selected_area].nil?
  	params[:selected_area].each do |t|
  		SeatBooked.create(row: t.split(",")[0].to_i, column: t.split(",")[1].to_i, status: "reserved")
  	end
  	render json: {:msg => "Success"}
  end
end
