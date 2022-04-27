vim $(cat listaidentificadores.txt | xargs -I{} find directorio1 -name "*{}*" |  awk -F '.' '{print $2}' | xargs -I{} find directorio2 -name "*{}*" )
