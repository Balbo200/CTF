!/bin/bash


# Récupérer l'utilsateur
usr=$(grep '^USER:' | sed 's/^USER: //')


# Extraire l'utilisateur entre les deux points

user=$(echo "$usr")

#  Si c'est le bon utilsateur alors ont lui assigne le mdp
    if [[ "$user" == "Guy.TAR" ]]; then
        password="musique2024"

        # Mot de passe trouvé
	echo sleep 30
        echo "User: $user"
        echo "Password: $password"


    fi

