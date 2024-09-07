class ContadorPalabras
    def initialize(cadena)
      @cadena = cadena
    end
  
    def contar_palabras_repetidas
      # HASH para almacenar las palabras y su frecuencia
      frecuencia_palabras = Hash.new(0)
  
      # Dividimos la cadena en palabras usando espacios en blanco como separadores
      palabras = @cadena.split(/\s+/)
  
      # Contar la frecuencia de cada palabra con ITERADOR
      palabras.each do |palabra|
        palabra = palabra.downcase
        frecuencia_palabras[palabra] += 1
      end
  
      # Palabras que aparecen más de una vez
      palabras_repetidas = frecuencia_palabras.select { |_palabra, frecuencia| frecuencia > 1 }

      palabras_repetidas.each do |palabra, frecuencia|
        puts "#{palabra}: #{frecuencia} veces"
      end
    end

  end
  
  # Ejemplo de uso
  cadena_ejemplo = "Hola mundo hola ruby mundo mundo"
  contador = ContadorPalabras.new(cadena_ejemplo)
  contador.contar_palabras_repetidas
  
