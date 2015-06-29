require 'time'

class MainController < ActionController::Base

  def index
    Count.new(visit: Time.zone.now).save!
    @visits = Count.count
    @container = `hostname`.strip || "unknown"
  end
end
