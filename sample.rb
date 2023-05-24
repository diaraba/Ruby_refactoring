def terminer_le_processus()
    puts "Termier"
end    

def persister_commentaire_et_point(point,comment)

    post="Points :  #{point} " " Commentaires : #{comment}"

    File.open('data.txt', 'a') do |file|
        file.puts(post)               
    end
end


def afficher_commentaires_et_points_persiter()

            File.open('data.txt', 'r') do |file|

                file.each do |line|
                    puts line
                end
            end        
end

while true
    puts "1 : Entrez les points d'évaluation et les commentaires"
    puts "2 : Vérifiez les résultats jusqu'à présent obtenu"
    puts "3 : Quitter"
    sequence=gets.to_i
    
    case sequence
        when 1
            puts "Veuillez entrer une note sous la forme d'un nombre de 1 à 5."
            point = gets.to_i
   
            while true
                if point <= 0 || point > 5
                    puts "Veuillez entrer un nombre dans la plage de 1 à 5, la prochaine fois"
                    point=gets.to_i
                else
                    puts "Veuillez entrer votre commentaire"
                    comment=gets
                    persister_commentaire_et_point(point, comment) #appel de la méthode persister_commentaire_et_point
                    break
                end
            end  

        when 2
           afficher_commentaires_et_points_persiter()  #appel de la métode afficher_commentaires_et_points_persiter
        
        when 3
           terminer_le_processus() #appel de la méthode terminer_le_processus 
          break
        else
            puts "Veuillez entrer un nombre dans la plage de 1 à 3"
        end
end    