require 'pry'

class User
  attr_accessor :email
  attr_accessor :age
  @@user_all = []
#méthode initialisation
  def initialize(email_to_save, age_to_save)
    @email = email_to_save
    @age = age_to_save
    @@user_all << [email_to_save, age_to_save]
  end
#méthode retourne un array avec tout les utilisateurs
  def self.all
    return @@user_all
  end
#Trouve un user via son email
  def self.find_by_email(id_email)
    @@user_all.each do |item|
      if(id_email == item[0])
        then puts "Voici l'age du User trouvé : #{item[1]}"
              return "trouvé"
      end
    end
    return "Pas trouvé"
  end
end

binding.pry
puts "end of file"
