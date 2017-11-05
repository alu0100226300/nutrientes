class Grupo

include Comparable

	attr_reader :titulo :alimentos
	def initialize titulo, alimentos
		@titulo, @alimentos = titulo, alimentos
	end
	def get_titulo
		@titulo
	end
	def get_alimento i
		@alimentos[i]
	end
	def getall_alimentos
		@alimentos
	end
	def to_s
		out = "#{@titulo.upcase}\n"
		out << @alimentos.map { |alimento| "-#{alimento}" }.join(",\n")
		out
	end
	def <=> (otro)
		@titulo<=>otro.titulo
	end
end

class Grupo_lacteos < Grupo
end

class Grupo_carnes < Grupo
end

class Grupo_pescados < Grupo
end

class Grupo_grasos < Grupo
end

class Grupo_carbohidratos < Grupo
end

class Grupo_verduras < Grupo
end

class Grupo_lacteos < Grupo
end

class Grupo_frutas < Grupo
end

class Grupo_bebidas < Grupo
end
