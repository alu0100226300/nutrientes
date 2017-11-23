class Comida
  # método inicializar clase
  def initialize(nombre, tiempo,concentraciones)
    # atributos
    @nombre = nombre
    @concentraciones = concentraciones
    @tiempo = tiempo
  end

  def get_nombre()
    return @nombre
  end

  #método que nos devuelve el calculo del aibc del alimento
  def get_aibc()
	#metodo imperativo
	#total = 0
	#for j in 1..@concentraciones.length-1
	#	aux=@concentraciones[j].to_f-@concentraciones[0].to_f
	#	aux2=@concentraciones[j-1].to_f-@concentraciones[0].to_f
	#	if aux < 0
	#		aux=0
	#	end
	#	if aux2 < 0
	#		aux2=0
	#	end
	#	aux3=aux+aux2
	#	aux3=aux3*@tiempo.to_f
	#	aux3=aux3/2
	#	total=total+aux3
	#end

	#otro metodo
	s=[]
	@concentraciones[1..@concentraciones.length-1].zip(@concentraciones[0..@concentraciones.length-2]) do |x,y|
		if x < @concentraciones[0]
			s << 0.0
		else
			s << (((x - @concentraciones[0])+(y-@concentraciones[0]))/2)*5
		end
	end
	#puts s.reduce(:+).round(2)
        #puts total.round(2)
	#return total.round(2)
	return s.reduce(:+).round(2)
  end

  #salida por pantalla de clase
  def to_s
	s = "\n"
	s << "#{@nombre}\n"
	s << "\nConcentraciones: #{@concentraciones}"
        s << "\nPeriodo de Tiempo: #{@tiempo} minutos"
	s << "\n"
	s << "\nAIBC: " + get_aibc.to_s
	s
  end
end
