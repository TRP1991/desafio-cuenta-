=begin

Estudiante: Tamara Rubilar Pinnilla
    
Ejercicio 2

Dado el siguiente código UML

1. Crear la clase con el nombre CuentaBancaria (1punto)
Los métodos getter y setter para el atributo nombre_de_usuario (1punto)
Crear el constructor que reciba el nombre_usuario y numero_de_cuenta y lo asigne a los atributos(1punto)Levantar una excepción del tipo RangeError si el atributo numero_de_cuenta tiene un númerode dígitos distinto a 8(se puede ocupar el método .digits para obtener los dígitos y .count paracontarlos) (1punto)Agregar un tercer parámetro opcional al constructor que permita establecer si una cuenta es VIP(1pto), este valor puede ser 1 o 0. Por defecto será 0.
Crear un método llamado numero_de_cuenta que devuelva con el número de cuenta con unprefijo '1-' si es vip y '0-' si no lo es.Ejemplo: si la cuenta es VIP y el número 00112233, el método debería devolver '1-00112233' (1punto)
    
=end

class CuentaBancaria #Clase CuentaBancaria 
    attr_accessor :nombre_de_usuario #Atributo 

    def initialize(nombre_de_usuario, numero_de_cuenta, vip = 0) #Comienzo constructor con parámetro
        
        raise RangeError, "El número de cuenta no es de 8 dígitos" if numero_de_cuenta.split("").count !=8 #Excepción 
        @nombre_de_usuario = nombre_de_usuario
        @numero_de_cuenta = numero_de_cuenta
        @vip = vip
    end

    def numero_de_cuenta #Método
        puts "#{@vip}-#{@numero_de_cuenta}"
    end
end

CuentaNueva = CuentaBancaria.new("Tamara Rubilar Pinilla", "00112233", 1)

CuentaNueva.numero_de_cuenta