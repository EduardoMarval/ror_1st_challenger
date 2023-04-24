# Se define un arreglo con las opciones posibles del juego
opciones = ["piedra", "papel", "tijera"]

# Se recibe el argumento del usuario
jugada_usuario = ARGV[0].downcase

# Se valida la jugada del usuario
unless opciones.include?(jugada_usuario)
  puts "Jugada inválida. Las opciones son piedra, papel o tijera."
  exit
end

# Se selecciona una jugada al azar para el computador
jugada_computador = opciones[rand(3)]

# Se muestra la jugada del usuario y del computador
puts "El usuario jugó #{jugada_usuario}."
puts "El computador jugó #{jugada_computador}."

# Se determina el resultado del juego
if jugada_usuario == jugada_computador
  puts "Empate."
elsif (jugada_usuario == "piedra" && jugada_computador == "tijera") || 
      (jugada_usuario == "papel" && jugada_computador == "piedra") || 
      (jugada_usuario == "tijera" && jugada_computador == "papel")
  puts "Gana el usuario."
else
  puts "Gana el computador."
end
