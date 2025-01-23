#!/bin/bash

# Fonction pour demander à l'utilisateur une estimation
function ask_guess {
    echo "Combien de fichiers se trouvent dans le répertoire actuel ?"
    read guess
}

# Obtenir le nombre réel de fichiers dans le répertoire
file_count=$(ls -1 | wc -l)

# Boucle pour demander à l'utilisateur de deviner jusqu'à obtenir la bonne réponse
while true; do
    ask_guess
    if [[ $guess -eq $file_count ]]; then
        echo "Félicitations ! Vous avez trouvé le bon nombre de fichiers : $file_count."
        break
    elif [[ $guess -lt $file_count ]]; then
        echo "Trop bas. Essayez encore."
    else
        echo "Trop haut. Essayez encore."
    fi
done
