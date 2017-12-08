class AlimentoDSL
  attr_accessor :name, :platos

  def initialize(name, &block)
    self.name = name
    self.platos = []

    instance_eval &block
  end

  def vegetal(options = {})
    platos << " (#{options[:titulo]})" if options[:titulo]
    platos << " (#{options[:porcion]})" if options[:porcion]
    platos << " (#{options[:gramos]})" if options[:gramos]
    platos << "\n"
  end

  def fruta(options = {})
    platos << " (#{options[:titulo]})" if options[:titulo]
    platos << " (#{options[:porcion]})" if options[:porcion]
    platos << " (#{options[:gramos]})" if options[:gramos]
    platos << "\n"
  end

  def cereal(options = {})
    platos << " (#{options[:titulo]})" if options[:titulo]
    platos << " (#{options[:porcion]})" if options[:porcion]
    platos << " (#{options[:gramos]})" if options[:gramos]
    platos << "\n"
  end
  
  def proteina(options = {})
    platos << " (#{options[:titulo]})" if options[:titulo]
    platos << " (#{options[:porcion]})" if options[:porcion]
    platos << " (#{options[:gramos]})" if options[:gramos]
    platos << "\n"
  end
  
  def aceite(options = {})
    platos << " (#{options[:titulo]})" if options[:titulo]
    platos << " (#{options[:porcion]})" if options[:porcion]
    platos << " (#{options[:gramos]})" if options[:gramos]
    platos << "\n"
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
      output << "#{plato}"
      if index>0
         if (index-1) % 3 == 1
            output << "\n"
         end
      end
    end

    output
  end
end
