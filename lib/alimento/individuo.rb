class Individuo
  # método inicializar clase
  def initialize(num, alimentos, glucosa)
    # atributos
    @num = num
    @alimentos = alimentos
    @glucosa = glucosa
  end

  def get_glucosa()
    @glucosa.get_aibc
  end

  def get_aibc(nombre)
    for j in 0..@alimentos.length-1
        if @alimentos[j].get_nombre==nombre
		return @alimentos[j].get_aibc
        end
    end
  end

  #metodo que nos devuelve una lista con los nombres de todos los alimentos
  def get_lista_nombres()
    lista = []
    for j in 0..@alimentos.length-1
        lista<<@alimentos[j].get_nombre
    end
    return lista
  end
  
  #salida por pantalla de clase
  def to_s
	s = "Individuo " + @num
	s << "\nAlimentos:\n"
	for j in 0..@alimentos.length-1
		s << @alimentos[j].to_s
	end
	s << @glucosa.to_s
	s << "\n"
	s
  end
end
