#!/bin/bash
# SOLUCION bandit 9  a 10

# La !$ es una referencia al ultimo argumento de comando no comando
# COn seq hacemos secuenciadores
# seq 1 10
# Ejemplo1 igual abajo mejor abajo
# cat /etc/passwd | while read line;do
#     echo "Estamos aqui: $line" 

# done

# Ejemplo 2  mejor que arriba
# while read line;do
#     echo "Estamos aqui: $line" 
# done < /etc/passwd

# En el primer ejemplo, el comando cat /etc/passwd se usa para redirigir la entrada del archivo /etc/passwd al bucle while, mientras que en el segundo ejemplo, la redirección de entrada se realiza directamente en el bucle while con el operador <.

# En términos de eficiencia, el segundo ejemplo puede ser ligeramente más eficiente, ya que no se requiere una llamada adicional al comando cat. Sin embargo, la diferencia de eficiencia es muy pequeña y, en la mayoría de los casos, ambos ejemplos producirán resultados similares.

# En última instancia, la elección entre ambos ejemplos dependerá de tus preferencias personales y la claridad y legibilidad que desees lograr en tu código.


# Ejemplo 3  con contador
contador=1

while read line;do
    echo "Linea $contador: $line" 
    let contador+=1 #contador = contadodr + 1
# Estamos leyendo de un archivo
done < /etc/passwd

# SOLUCION bandit 9  a 10
# Escrimos lo mismo que arriba pero en la consola sin contador
# strings data.txt | grep "===" | while read line; do echo "Hola: $line"; done 
# Escrimos lo mismo que arriba pero en la consola con contador
contador=1; strings data.txt | grep "===" | while read line; do echo "Linea $contador: $line"; let contador+=1; done | awk 'NR==4' | 'NF{print $NF}'
# SOLUCION bandit 9  a 10