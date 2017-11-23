class Calculadora
  # método inicializar clase
  def initialize(individuos)
    # atributos
    @individuos = individuos
    @resultados = []
  end

  #metodo que calcula el indice glucemico de todos los alimentos de los
  #individuos
  def calcular()
    lista_nombres=@individuos[0].get_lista_nombres
    lista_nombres.each do |nombre|
      cont=0
      igind=0
      #puts nombre
      for j in 0..@individuos.length-1
	glucosa=@individuos[j].get_glucosa.to_f
        #puts glucosa
        aibc=@individuos[j].get_aibc(nombre)
        #puts aibc
        aux=aibc/glucosa*100
        #puts aux
        igind=igind+aux
	cont=cont+1
      end
      igind=igind/cont
      #puts igind
      @resultados << nombre + " " + igind.round(2).to_s + "\n"
    end
  end

  #metodo que muestra por pantalla los resultados obtenenidos con el metodo
  #calcular. Alimento -> Indice glucemico
  def mostrar_resultados
    calcular
    s="Resultados\n"
    for j in 0..@resultados.length-1
        s << @resultados[j].to_s
    end
    s
  end

  #salida por pantalla de clase
  def to_s
	s = "\nLista de Individuos y sus alimentos\n"
        for j in 0..@individuos.length-1
                s << @individuos[j].to_s + "\n"
        end
        s
  end
end
