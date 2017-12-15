class PlatoHardvard
  attr_accessor :name, :platos, :entotal

  def initialize(name, &block)
    self.name = name
    self.platos = []
    self.entotal = 0

    instance_eval &block
  end


#funciones del block
  def vegetal(titulo, options = {})
    porcion = ""
    porcion << " (#{options[:porcion]})" if options[:porcion]
    porcion = porcion.tr("^0-9","")
    gramos = ""
    gramos << " (#{options[:gramos]})" if options[:gramos]
    gramos = gramos.tr("^0-9","")

    if gramos != ""
       glucidos = (gramos.to_f * 10 * 30)/100
       lipidos = (gramos.to_f * 10 * 20)/100
       proteinas = (gramos.to_f * 10 * 50)/100
    end
     
    if porcion != ""
       glucidos = (porcion.to_f * 10 * 30)/100
       lipidos = (porcion.to_f * 10 * 20)/100
       proteinas = (porcion.to_f * 10 * 50)/100
    end

    alimento = Alimentos.new(titulo,glucidos,proteinas,lipidos)
    @entotal = @entotal + alimento.get_energetico()
    platos << alimento
  end

  def fruta(titulo,options = {})
    porcion = ""
    porcion << " (#{options[:porcion]})" if options[:porcion]
    porcion = porcion.tr("^0-9","")
    gramos = ""
    gramos << " (#{options[:gramos]})" if options[:gramos]
    gramos = gramos.tr("^0-9","")

    if gramos != ""
       glucidos = (gramos.to_f * 3 * 30)/100
       lipidos = (gramos.to_f * 3 * 20)/100
       proteinas = (gramos.to_f * 3 * 50)/100
    end
     
    if porcion != ""
       glucidos = (porcion.to_f * 10 * 30)/100
       lipidos = (porcion.to_f * 10 * 20)/100
       proteinas = (porcion.to_f * 10 * 50)/100
    end

    alimento = Alimentos.new(titulo,glucidos,proteinas,lipidos)
    @entotal = @entotal + alimento.get_energetico()
    platos << alimento
  end

  def cereal(titulo,options = {})
    porcion = ""
    porcion << " (#{options[:porcion]})" if options[:porcion]
    porcion = porcion.tr("^0-9","")
    gramos = ""
    gramos << " (#{options[:gramos]})" if options[:gramos]
    gramos = gramos.tr("^0-9","")

    if gramos != ""
       glucidos = (gramos.to_f * 10 * 30)/100
       lipidos = (gramos.to_f * 10 * 20)/100
       proteinas = (gramos.to_f * 10 * 50)/100
    end
     
    if porcion != ""
       glucidos = (porcion.to_f * 10 * 30)/100
       lipidos = (porcion.to_f * 10 * 20)/100
       proteinas = (porcion.to_f * 10 * 50)/100
    end

    alimento = Alimentos.new(titulo,glucidos,proteinas,lipidos)
    @entotal = @entotal + alimento.get_energetico()
    platos << alimento
  end
  
  def proteina(titulo,options = {})
    porcion = ""
    porcion << " (#{options[:porcion]})" if options[:porcion]
    porcion = porcion.tr("^0-9","")
    gramos = ""
    gramos << " (#{options[:gramos]})" if options[:gramos]
    gramos = gramos.tr("^0-9","")

    if gramos != ""
       glucidos = (gramos.to_f * 10 * 30)/100
       lipidos = (gramos.to_f * 10 * 20)/100
       proteinas = (gramos.to_f * 10 * 50)/100
    end
     
    if porcion != ""
       glucidos = (porcion.to_f * 10 * 30)/100
       lipidos = (porcion.to_f * 10 * 20)/100
       proteinas = (porcion.to_f * 10 * 50)/100
    end

    alimento = Alimentos.new(titulo,glucidos,proteinas,lipidos)
    @entotal = @entotal + alimento.get_energetico()
    platos << alimento
  end
  
  def aceite(titulo,options = {})
    porcion = ""
    porcion << " (#{options[:porcion]})" if options[:porcion]
    porcion = porcion.tr("^0-9","")
    gramos = ""
    gramos << " (#{options[:gramos]})" if options[:gramos]
    gramos = gramos.tr("^0-9","")

    if gramos != ""
       glucidos = (gramos.to_f * 10 * 30)/100
       lipidos = (gramos.to_f * 10 * 20)/100
       proteinas = (gramos.to_f * 10 * 50)/100
    end
     
    if porcion != ""
       glucidos = (porcion.to_f * 5 * 30)/100
       lipidos = (porcion.to_f * 5 * 20)/100
       proteinas = (porcion.to_f * 5 * 50)/100
    end

    alimento = Alimentos.new(titulo,glucidos,proteinas,lipidos)
    @entotal = @entotal + alimento.get_energetico()
    platos << alimento
  end

  def to_s
    output = ""
    output << name
    output << "\n"
    for i in 0..name.size-1 do
	output << "="
    end
    output << "\n"
    output << "\nComposición nutricional:\n"    
    output << "\n"
    platos.each_with_index do |plato, index|
      output << "#{plato} #{plato.get_energetico}\n"
      #if index>0
         #if (index-1) % 3 == 1
            #output << "\n"
         #end
      #end
    end
    output << "Valor Energetico total                      #{@entotal}"
    output
  end
end
