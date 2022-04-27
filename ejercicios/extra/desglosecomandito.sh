vim $(cat listaidentificadores.txt | xargs -I{} find directorio1 -name "*{}*" |  awk -F '.' '{print $2}' | xargs -I{} find directorio2 -name "*{}*" )

vim $( argumento ) - simplemente recoge el resultado final del proceso y lo abre en vim


cat listaidentificadores.txt
                               manda el contenido del fichero a stdout. Intenta lanzar esta parte de comando
                               desde vim. Mete el comando en un register con y lanzalo
                               haciendo :!(Ctrl+r)x sobre un selección para ver el output

cat listaidentificadores.txt | xargs -I{} find directorio1 -name "*{}*"  

                              le pasamos la lista a un find que creamos. el {} indica
                              donde pasamos los argumentos. De nuevo, prueba a lanzar
                              este comando desde vim


cat listaidentificadores.txt | xargs -I{} find directorio1 -name "*{}*" |  awk -F '.' '{print $2}' 
                              
                              
                              awk nos imprime el segundo elemento utilizando . como separador

cat listaidentificadores.txt | xargs -I{} find directorio1 -name "*{}*" |  awk -F '.' '{print $2}' | xargs -I{} find directorio2 -name "*{}*" 

                              finalmente encontramos los ficheros del directorio2 en base a la etiqueta del directorio1

Ahora ya solo queda el paso final que es abrir los ficheros con e programa que queramos ya sea vim, less, cat....
