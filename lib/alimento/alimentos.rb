class Alimentos
	attr_reader :nombre, :proteinas, :glucidos, :lipidos
	def initialize nombre, proteinas, glucidos, lipidos
		@nombre, @proteinas, @glucidos, @lipidos = nombre, proteinas, glucidos, lipidos
	end

	def get_nombre
		@nombre
	end

	def get_proteinas
		@proteinas
	end

	def get_glucidos
		@glucidos
	end

	def get_lipidos
		@lipidos
	end

	def to_s
		"#{nombre}, #{proteinas}, #{glucidos}, #{lipidos}"
	end
end
