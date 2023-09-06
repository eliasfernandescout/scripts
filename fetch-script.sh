
#!/bin/bash

repositorios=$(curl -s https://api.github.com/users/eliasfernandescout/repos | awk '/ssh_url/{print $2}' | sed 's/^"//g' | sed 's/",$//g')

contador=0
for repositorio in $repositorios

do
		((contador++))
		echo -e "Numero: $contador \nRepositorio: $repositorio"
done


