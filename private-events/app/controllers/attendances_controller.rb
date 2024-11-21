class AttendancesController < ApplicationController
  before_action :authenticate_user!

  def create
    event = Event.find(params[:event_id])
    if current_user.attended_events.include?(event)
      redirect_to event, alert: 'You are already attending this event.'
    else
      current_user.attended_events << event
      redirect_to event, notice: 'Your ticket has been reserved!'
    end
  end

  def destroy
    attendance = current_user.attendances.find_by(event_id: params[:event_id])
    if attendance
      attendance.destroy
      redirect_to event_path(params[:event_id]), notice: 'You have successfully canceled your ticket.'
    else
      redirect_to event_path(params[:event_id]), alert: 'You are not attending this event.'
    end
  end
end
