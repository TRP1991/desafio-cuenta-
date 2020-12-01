=begin
Estudiante: Tamara Rubilar Pinilla 

Desafío - Cuenta bancaria

Ejercicio 1

Crear la clase carta con los atributos numero y pinta (o color) (1punto)
Agregar los getters y setters a ambos atributos.(1punto)
Crear el constructor de la clase carta que le permita recibir un numero del 1 al 13 y la pinta que está indicada por una sola letra. Puede ser Corazón: 'C', Diamante: 'D', Espada: 'E' o Trébol:'T'(2 puntos)

Tip 1: Para escoger un número al azar ocupar Random.rand(rango_inferior,rango_superior)
Tip 2: Agregar las pintas posibles en un arreglo y ocupar el método .sampleProbar la clase creando un arreglo con 5 cartas.(1punto)
    
=end

class Carta  #clase Carta 
    attr_accessor :numero, :pinta #Atributos
    def initialize(numero, pinta) #Constructor 
        @numero = numero
        @pinta = pinta 
    end
end

#Número al azar y pintas posibles 
cartas =[]
pintas = ['C','D','E','T']
5.times{cartas.push(Carta.new(rand(1..13), pintas.sample()))} 
pp cartas