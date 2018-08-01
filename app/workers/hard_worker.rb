require 'sidekiq-scheduler'

class HardWorker
  include Sidekiq::Worker
  
  def perform(*args)
    10.times do |index|
      Rails.logger.info "Mickey#{index}"
      Sidekiq.logger.info "#{args[0]}#{index}"
    end
    puts "HEHEHEHE1:11"
  end
end