require './lib/calculadora'
require './lib/individuo'
require './lib/alimento'
require 'test/unit'

class TestAlimento < Test::Unit::TestCase
    def setup
        @compota1 = Alimento.new('Compota', '5',     [6.7,6.5,6.8,6.9,7.0,7.1,6.9,6.9,6.9,6.7,6.9,7.3,7.0,7.0,7.2,7.1,6.8,7.2,7.3,7.0,6.8,6.7,6.8,6.7,6.9])
        @yogurt1 = Alimento.new('Yogurt', '5',       [6.1,6.6,6.3,6.3,6.1,6.9,6.8,6.5,6.4,6.9,6.8,6.5,6.3,6.2,6.7,6.2,5.9,5.8,5.8,5.8,5.8,5.8,5.9,6.2,6.4])
        @chocolate1 = Alimento.new('Chocolate', '5', [6.5,6.5,6.7,6.5,6.5,6.8,6.7,6.2,6.5,7.2,6.9,7.0,6.3,6.2,6.1,5.9,5.8,6.1,6.7,6.7,6.6,6.7,6.9,7.2,7.1])
	@glucosa1 = Alimento.new('Glucosa', '5',     [4.9,5.3,5.9,6.7,7.2,7.6,8.0,8.2,8.2,8.4,8.3,8.3,8.0,7.5,7.1,6.8,6.8,6.9,6.8,6.3,6.2,6.3,6.2,6.3,6.1])
	@individuo1 = Individuo.new('1',[@compota1,@yogurt1,@chocolate1],@glucosa1)

        @compota2 = Alimento.new('Compota', '5',    [4.6,4.8,5.3,5.6,6.1,6.5,6.6,7.0,7.0,6.8,6.4,6.3,6.1,6.1,6.2,6.0,6.1,6.1,6.2,6.3,6.4,6.1,6.1,5.7,5.9])
        @yogurt2 = Alimento.new('Yogurt', '5',      [4.9,4.9,5.2,5.8,6.5,7.0,7.2,7.3,7.3,6.6,6.2,6.1,6.0,6.1,5.9,5.9,5.9,5.9,5.8,5.8,5.5,5.5,5.6,5.9,5.9])
        @chocolate2 = Alimento.new('Chocolate', '5',[4.6,4.6,4.7,4.7,4.8,4.7,4.8,4.8,4.6,4.4,4.7,4.7,4.8,4.7,5.2,5.9,5.9,5.7,5.4,5.3,5.1,4.8,4.8,4.9,5.9])
	@glucosa2 = Alimento.new('Glucosa', '5',    [6.3,5.4,5.6,5.7,6.5,7.4,7.9,7.4,7.7,7.9,7.9,7.8,7.8,7.8,8.0,8.5,9.4,10.8,10.5,9.1,8.9,8.3,7.7,7.6,7.5])
	@individuo2 = Individuo.new('2',[@compota2,@yogurt2,@chocolate2],@glucosa2)

	@calculadora1 = Calculadora.new([@individuo1, @individuo2])
    end
    def test_alimentos
        assert_equal("\nCompota\n\nConcentraciones: [6.7, 6.5, 6.8, 6.9, 7.0, 7.1, 6.9, 6.9, 6.9, 6.7, 6.9, 7.3, 7.0, 7.0, 7.2, 7.1, 6.8, 7.2, 7.3, 7.0, 6.8, 6.7, 6.8, 6.7, 6.9]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 28.5", @compota1.to_s)
        assert_equal("\nYogurt\n\nConcentraciones: [6.1, 6.6, 6.3, 6.3, 6.1, 6.9, 6.8, 6.5, 6.4, 6.9, 6.8, 6.5, 6.3, 6.2, 6.7, 6.2, 5.9, 5.8, 5.8, 5.8, 5.8, 5.8, 5.9, 6.2, 6.4]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 31.25", @yogurt1.to_s)
        assert_equal("\nChocolate\n\nConcentraciones: [6.5, 6.5, 6.7, 6.5, 6.5, 6.8, 6.7, 6.2, 6.5, 7.2, 6.9, 7.0, 6.3, 6.2, 6.1, 5.9, 5.8, 6.1, 6.7, 6.7, 6.6, 6.7, 6.9, 7.2, 7.1]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 22.0", @chocolate1.to_s)
        assert_equal("\nGlucosa\n\nConcentraciones: [4.9, 5.3, 5.9, 6.7, 7.2, 7.6, 8.0, 8.2, 8.2, 8.4, 8.3, 8.3, 8.0, 7.5, 7.1, 6.8, 6.8, 6.9, 6.8, 6.3, 6.2, 6.3, 6.2, 6.3, 6.1]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 256.0", @glucosa1.to_s)

        assert_equal("\nCompota\n\nConcentraciones: [4.6, 4.8, 5.3, 5.6, 6.1, 6.5, 6.6, 7.0, 7.0, 6.8, 6.4, 6.3, 6.1, 6.1, 6.2, 6.0, 6.1, 6.1, 6.2, 6.3, 6.4, 6.1, 6.1, 5.7, 5.9]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 183.25", @compota2.to_s)
        assert_equal("\nYogurt\n\nConcentraciones: [4.9, 4.9, 5.2, 5.8, 6.5, 7.0, 7.2, 7.3, 7.3, 6.6, 6.2, 6.1, 6.0, 6.1, 5.9, 5.9, 5.9, 5.9, 5.8, 5.8, 5.5, 5.5, 5.6, 5.9, 5.9]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 138.5", @yogurt2.to_s)
        assert_equal("\nChocolate\n\nConcentraciones: [4.6, 4.6, 4.7, 4.7, 4.8, 4.7, 4.8, 4.8, 4.6, 4.4, 4.7, 4.7, 4.8, 4.7, 5.2, 5.9, 5.9, 5.7, 5.4, 5.3, 5.1, 4.8, 4.8, 4.9, 5.9]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 45.25", @chocolate2.to_s)
        assert_equal("\nGlucosa\n\nConcentraciones: [6.3, 5.4, 5.6, 5.7, 6.5, 7.4, 7.9, 7.4, 7.7, 7.9, 7.9, 7.8, 7.8, 7.8, 8.0, 8.5, 9.4, 10.8, 10.5, 9.1, 8.9, 8.3, 7.7, 7.6, 7.5]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 197.5", @glucosa2.to_s)
    end
    def test_individuos
        assert_equal("\Individuo 1\nAlimentos:\n\nCompota\n\nConcentraciones: [6.7, 6.5, 6.8, 6.9, 7.0, 7.1, 6.9, 6.9, 6.9, 6.7, 6.9, 7.3, 7.0, 7.0, 7.2, 7.1, 6.8, 7.2, 7.3, 7.0, 6.8, 6.7, 6.8, 6.7, 6.9]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 28.5\nYogurt\n\nConcentraciones: [6.1, 6.6, 6.3, 6.3, 6.1, 6.9, 6.8, 6.5, 6.4, 6.9, 6.8, 6.5, 6.3, 6.2, 6.7, 6.2, 5.9, 5.8, 5.8, 5.8, 5.8, 5.8, 5.9, 6.2, 6.4]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 31.25\nChocolate\n\nConcentraciones: [6.5, 6.5, 6.7, 6.5, 6.5, 6.8, 6.7, 6.2, 6.5, 7.2, 6.9, 7.0, 6.3, 6.2, 6.1, 5.9, 5.8, 6.1, 6.7, 6.7, 6.6, 6.7, 6.9, 7.2, 7.1]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 22.0\nGlucosa\n\nConcentraciones: [4.9, 5.3, 5.9, 6.7, 7.2, 7.6, 8.0, 8.2, 8.2, 8.4, 8.3, 8.3, 8.0, 7.5, 7.1, 6.8, 6.8, 6.9, 6.8, 6.3, 6.2, 6.3, 6.2, 6.3, 6.1]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 256.0\n", @individuo1.to_s)

        assert_equal("\Individuo 2\nAlimentos:\n\nCompota\n\nConcentraciones: [4.6, 4.8, 5.3, 5.6, 6.1, 6.5, 6.6, 7.0, 7.0, 6.8, 6.4, 6.3, 6.1, 6.1, 6.2, 6.0, 6.1, 6.1, 6.2, 6.3, 6.4, 6.1, 6.1, 5.7, 5.9]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 183.25\nYogurt\n\nConcentraciones: [4.9, 4.9, 5.2, 5.8, 6.5, 7.0, 7.2, 7.3, 7.3, 6.6, 6.2, 6.1, 6.0, 6.1, 5.9, 5.9, 5.9, 5.9, 5.8, 5.8, 5.5, 5.5, 5.6, 5.9, 5.9]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 138.5\nChocolate\n\nConcentraciones: [4.6, 4.6, 4.7, 4.7, 4.8, 4.7, 4.8, 4.8, 4.6, 4.4, 4.7, 4.7, 4.8, 4.7, 5.2, 5.9, 5.9, 5.7, 5.4, 5.3, 5.1, 4.8, 4.8, 4.9, 5.9]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 45.25\nGlucosa\n\nConcentraciones: [6.3, 5.4, 5.6, 5.7, 6.5, 7.4, 7.9, 7.4, 7.7, 7.9, 7.9, 7.8, 7.8, 7.8, 8.0, 8.5, 9.4, 10.8, 10.5, 9.1, 8.9, 8.3, 7.7, 7.6, 7.5]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 197.5\n", @individuo2.to_s)
    end

    def test_calculadora
	assert_equal("\nLista de Individuos y sus alimentos\nIndividuo 1\nAlimentos:\n\nCompota\n\nConcentraciones: [6.7, 6.5, 6.8, 6.9, 7.0, 7.1, 6.9, 6.9, 6.9, 6.7, 6.9, 7.3, 7.0, 7.0, 7.2, 7.1, 6.8, 7.2, 7.3, 7.0, 6.8, 6.7, 6.8, 6.7, 6.9]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 28.5\nYogurt\n\nConcentraciones: [6.1, 6.6, 6.3, 6.3, 6.1, 6.9, 6.8, 6.5, 6.4, 6.9, 6.8, 6.5, 6.3, 6.2, 6.7, 6.2, 5.9, 5.8, 5.8, 5.8, 5.8, 5.8, 5.9, 6.2, 6.4]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 31.25\nChocolate\n\nConcentraciones: [6.5, 6.5, 6.7, 6.5, 6.5, 6.8, 6.7, 6.2, 6.5, 7.2, 6.9, 7.0, 6.3, 6.2, 6.1, 5.9, 5.8, 6.1, 6.7, 6.7, 6.6, 6.7, 6.9, 7.2, 7.1]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 22.0\nGlucosa\n\nConcentraciones: [4.9, 5.3, 5.9, 6.7, 7.2, 7.6, 8.0, 8.2, 8.2, 8.4, 8.3, 8.3, 8.0, 7.5, 7.1, 6.8, 6.8, 6.9, 6.8, 6.3, 6.2, 6.3, 6.2, 6.3, 6.1]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 256.0\n\nIndividuo 2\nAlimentos:\n\nCompota\n\nConcentraciones: [4.6, 4.8, 5.3, 5.6, 6.1, 6.5, 6.6, 7.0, 7.0, 6.8, 6.4, 6.3, 6.1, 6.1, 6.2, 6.0, 6.1, 6.1, 6.2, 6.3, 6.4, 6.1, 6.1, 5.7, 5.9]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 183.25\nYogurt\n\nConcentraciones: [4.9, 4.9, 5.2, 5.8, 6.5, 7.0, 7.2, 7.3, 7.3, 6.6, 6.2, 6.1, 6.0, 6.1, 5.9, 5.9, 5.9, 5.9, 5.8, 5.8, 5.5, 5.5, 5.6, 5.9, 5.9]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 138.5\nChocolate\n\nConcentraciones: [4.6, 4.6, 4.7, 4.7, 4.8, 4.7, 4.8, 4.8, 4.6, 4.4, 4.7, 4.7, 4.8, 4.7, 5.2, 5.9, 5.9, 5.7, 5.4, 5.3, 5.1, 4.8, 4.8, 4.9, 5.9]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 45.25\nGlucosa\n\nConcentraciones: [6.3, 5.4, 5.6, 5.7, 6.5, 7.4, 7.9, 7.4, 7.7, 7.9, 7.9, 7.8, 7.8, 7.8, 8.0, 8.5, 9.4, 10.8, 10.5, 9.1, 8.9, 8.3, 7.7, 7.6, 7.5]\nPeriodo de Tiempo: 5 minutos\n\nAIBC: 197.5\n\n", @calculadora1.to_s)
	assert_equal("Resultados\nCompota 51.96\nYogurt 41.17\nChocolate 15.75\n", @calculadora1.mostrar_resultados)
    end
end
