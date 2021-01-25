require 'pry'
require 'time'

class Event
  attr_accessor :start_date
  attr_accessor :duration
  attr_accessor :title
  attr_accessor :attendees


#methode d'initialisation
  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title
    @attendees = attendees
  end
#repousser un event de 24H
  def postpone_24h
    @start_date = @start_date + 24*60*60
  end
#Heure ou Jour de fin de l'event
  def end_date
    return (@start_date + (@duration * 60))
  end
#True= si l'event est dans le passé
  def is_past?
    @start_date < Time.now
  end
#True= si l'event est dans le futur
  def is_futur?
    @start_date > Time.now
  end
#True= si l'event est dans 30 min ou moins
  def is_soon?
    if((Time.now >= (@start_date - 1800)) and (Time.now <= @start_date))
      then true
      else false
    end
  end
#Présentation propre de l'event
  def to_s
    puts ">Titre : #{@title}"
    puts ">Date de début : #{@start_date}"
    puts ">Durée : #{@duration}"
    puts ">Invités : #{@attendees.join(", ")}"
  end
end

binding.pry
puts "end of file"
