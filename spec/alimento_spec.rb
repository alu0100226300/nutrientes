require "spec_helper"

describe Alimento do

  context Alimentos do
    before :each do
      @alimento1 = Alimentos.new("Huevo frito", 14.1, 0.0, 19.5)
      @alimento2 = Alimentos.new("Leche vaca", 3.3, 4.8, 3.2)
      @alimento3 = Alimentos.new("Yogurt", 3.8, 4.8, 3.8)
      @alimento4 = Alimentos.new("Cerdo", 21.5, 0.0, 6.3)
      @alimento5 = Alimentos.new("Ternera", 21.1, 0.0, 3.1)
      @alimento6 = Alimentos.new("Pollo", 20.6, 0.0, 5.6)
      @alimento7 = Alimentos.new("Bacalao", 17.7, 0.0, 0.4)
      @alimento8 = Alimentos.new("Atún", 21.5, 0.0, 15.5)
      @alimento9 = Alimentos.new("Salmón", 19.9, 0.0, 13.6)
      @alimento10 = Alimentos.new("Aceite de oliva", 0.0, 0.2, 99.6)
      @alimento11 = Alimentos.new("Chocolate", 5.3, 47.0, 30.0)
      @alimento12 = Alimentos.new("Azúcar", 0.0, 99.8, 0.0)
      @alimento13 = Alimentos.new("Arroz", 6.8, 77.7, 0.6)
      @alimento14 = Alimentos.new("Lentejas", 23.5, 52.0, 1.4)
      @alimento15 = Alimentos.new("Papas", 2.0, 15.4, 0.1)
      @alimento16 = Alimentos.new("Tomate", 1.0, 3.5, 0.2)
      @alimento17 = Alimentos.new("Cebolla", 1.3, 5.8, 0.3)
      @alimento18 = Alimentos.new("Manzana", 0.3, 12.4, 0.4)
      @alimento19 = Alimentos.new("Plátanos", 1.2, 21.4, 0.2)
    end

    it "Debe existir un nombre para el alimento" do
       expect(@alimento1.nombre).to be == "Huevo frito"
    end

    it "Debe existir la cantidad de proteínas del alimento en gramos" do
       expect(@alimento1.proteinas).to be == 14.1
    end

    it "Debe existir la candidad de glucidos del alimento en gramos." do
       expect(@alimento1.glucidos).to be == 0.0
    end

    it "Debe existir la candidad de grasas del alimento en gramos" do
       expect(@alimento1.lipidos).to be == 19.5
    end

    it "Existe un metodo para obtener el nombre del alimento" do
       expect(@alimento1.get_nombre).to be == "Huevo frito"
    end

    it "Existe un metodo para obtener la cantidad de proteinas del alimento" do
       expect(@alimento1.get_proteinas).to be == 14.1
    end

    it "Existe un metodo para obtener la cantidad de glucidos de un alimento" do
       expect(@alimento1.get_glucidos).to be == 0.0
    end

    it "Existe un metodo para obtener la cantidad de grasas de un alimento" do
       expect(@alimento1.get_lipidos).to be == 19.5
    end

    it "Existe un metodo para obtener el alimento formateado" do
       expect(@alimento1.to_s).to be == "Huevo frito, 14.1, 0.0, 19.5"
    end

    it "Existe un metodo para obtener el valor energetico de un alimento." do
       expect(@alimento1.get_energetico).to be == 231.9
    end

  end

  context Grupo do
	before :each do
		@alimento1 = Alimentos.new("Huevo frito", 14.1, 0.0, 19.5)
		@alimento2 = Alimentos.new("Leche vaca", 3.3, 4.8, 3.2)
		@alimento3 = Alimentos.new("Yogurt", 3.8, 4.8, 3.8)
		@migrupo1 = Grupo.new(
		"Huevos, lacteos y helados",
		[ @alimento1, @alimento2, @alimento3 ])
	end

	it 'Prueba Grupo' do
		expect(@migrupo1.to_s).to eq("HUEVOS, LACTEOS Y HELADOS\n-Huevo frito, 14.1, 0.0, 19.5,\n-Leche vaca, 3.3, 4.8, 3.2,\n-Yogurt, 3.8, 4.8, 3.8")
	end

	it 'Prueba de pertenencia a Grupo (Clase Madre)' do
		expect(@migrupo1.is_a? Grupo).to eq true
	end

	it 'Prueba de no pertenencia a Grupo_lacteos' do
		expect(@migrupo1.is_a? Grupo_lacteos).to eq false
	end

	it 'Prueba de no pertenencia a Grupo_carnes' do
		expect(@migrupo1.is_a? Grupo_carnes).to eq false
	end

	it 'La clase del objeto Grupo' do
		expect(@migrupo1.class).to eq(Grupo)
	end
  end

  context Grupo_lacteos do
	before :each do
		@alimento1 = Alimentos.new("Huevo frito", 14.1, 0.0, 19.5)
		@alimento2 = Alimentos.new("Leche vaca", 3.3, 4.8, 3.2)
		@alimento3 = Alimentos.new("Yogurt", 3.8, 4.8, 3.8)
		@migrupo1 = Grupo_lacteos.new(
		"Huevos, lacteos y helados",
		[ @alimento1, @alimento2, @alimento3 ])
	end

	it 'Prueba Grupo_lacteos' do	
		expect(@migrupo1.to_s).to eq("HUEVOS, LACTEOS Y HELADOS\n-Huevo frito, 14.1, 0.0, 19.5,\n-Leche vaca, 3.3, 4.8, 3.2,\n-Yogurt, 3.8, 4.8, 3.8")
	end

	it 'Prueba de pertenencia a Grupo (Clase madre)' do
		expect(@migrupo1.is_a? Grupo).to eq true
	end

	it 'Prueba de no instancia de Grupo (Clase madre)' do
		expect(@migrupo1.instance_of? Grupo).to equal false
	end

	it 'La clase del objeto Grupo_lacteos' do
		expect(@migrupo1.class).to eq(Grupo_lacteos)
	end

	it 'Prueba de pertenencia a la superclase Grupo' do
		expect(@migrupo1.class.superclass).to eq(Grupo)
	end

	it 'Prueba de pertenencia a Grupo_lacteos (Clase hija)' do
		expect(@migrupo1.is_a? Grupo_lacteos).to eq true
	end

	it 'Prueba de pertenencia a Grupo_carnes (Clase hija)' do
		expect(@migrupo1.is_a? Grupo_carnes).to eq false
	end

	it 'Prueba de no pertenencia a Grupo_carnes (clase hija) respond_to' do
		expect(@migrupo1.respond_to? "Grupo_carnes").to eq false
	end

  end

  context Nodo do
	before :each do
		@alimento1 = Alimentos.new("Huevo frito", 14.1, 0.0, 19.5)
		@alimento2 = Alimentos.new("Leche vaca", 3.3, 4.8, 3.2)
		@alimento3 = Alimentos.new("Yogurt", 3.8, 4.8, 3.8)
		@migrupo1 = Grupo_lacteos.new(
		"Huevos, lacteos y helados",
		[ @alimento1, @alimento2, @alimento3 ])

		@nodo1=Nodo.new(@migrupo1,nil,nil)
	end

	it 'Existe valor de nodo' do
	      expect(@nodo1.value).to eq(@migrupo1)
	end

	it 'Siguiente de nodo es nil' do
		expect(@nodo1.next).to equal(nil)
	end
  end

  context Lista do
	before :each do			
		@alimento1 = Alimentos.new("Huevo frito", 14.1, 0.0, 19.5)
		@alimento2 = Alimentos.new("Leche vaca", 3.3, 4.8, 3.2)
		@alimento3 = Alimentos.new("Yogurt", 3.8, 4.8, 3.8)
		@alimento4 = Alimentos.new("Cerdo", 21.5, 0.0, 6.3)
		@alimento5 = Alimentos.new("Ternera", 21.1, 0.0, 3.1)
		@alimento6 = Alimentos.new("Pollo", 20.6, 0.0, 5.6)
		@alimento7 = Alimentos.new("Bacalao", 17.7, 0.0, 0.4)
		@alimento8 = Alimentos.new("Atún", 21.5, 0.0, 15.5)
		@alimento9 = Alimentos.new("Salmón", 19.9, 0.0, 13.6)
		@alimento10 = Alimentos.new("Aceite de oliva", 0.0, 0.2, 99.6)
		@alimento11 = Alimentos.new("Chocolate", 5.3, 47.0, 30.0)
		@alimento12 = Alimentos.new("Azúcar", 0.0, 99.8, 0.0)
		@alimento13 = Alimentos.new("Arroz", 6.8, 77.7, 0.6)
		@alimento14 = Alimentos.new("Lentejas", 23.5, 52.0, 1.4)
		@alimento15 = Alimentos.new("Papas", 2.0, 15.4, 0.1)
		@alimento16 = Alimentos.new("Tomate", 1.0, 3.5, 0.2)
		@alimento17 = Alimentos.new("Cebolla", 1.3, 5.8, 0.3)
		@alimento18 = Alimentos.new("Manzana", 0.3, 12.4, 0.4)
		@alimento19 = Alimentos.new("Plátanos", 1.2, 21.4, 0.2)
		@migrupo1 = Grupo.new(
		"Huevos, lacteos y helados",
		[ @alimento1, @alimento2, @alimento3 ])
		@migrupo2 = Grupo.new(
		"Carnes y derivados",
		[ @alimento4, @alimento5, @alimento6 ])
		@migrupo3 = Grupo.new(
		"Pescados y mariscos",
		[ @alimento7, @alimento8, @alimento9 ])
		@migrupo4 = Grupo.new(
		"Alimentos grasos",
		[ @alimento10, @alimento11, @alimento12 ])
		@lista1 = Lista.new(nil,nil)
	end

	it 'Debe existir una Lista con su cabeza' do
	  	@lista1.insertar(@migrupo1)
	      	expect(@lista1.cabeza.value).to eq(@migrupo1)
	end

	it 'Se puede insertar un elemento' do 
        	@lista1.insertar(@migrupo1)
	        expect(x = @lista1.cabeza.value).to equal(@migrupo1)
  	end

	it 'Se pueden insertar varios elementos' do
      		@lista1.insertar_varios([@migrupo1,@migrupo2,@migrupo3,@migrupo4])
		expect(x =@lista1.cabeza.value).to equal(@migrupo4)
	end

	it 'Se extrae el primer elemento de la lista' do
        	@lista1.insertar_varios([@migrupo1,@migrupo2,@migrupo3,@migrupo4])
	        @lista1.extraer_inicio()
        	expect(x =@lista1.cabeza.value).to equal(@migrupo4)
	end

	it 'Se extrae el ultimo elemento de la lista' do
        	@lista1.insertar_varios([@migrupo1,@migrupo2,@migrupo3,@migrupo4])
	        @lista1.extraer_final()
        	expect(x =@lista1.cola.value).to equal(@migrupo1)
	end
  end


  context "Prueba lista enumerable" do
  before :each do
      @alimento1 = Alimentos.new("Huevo frito", 14.1, 0.0, 19.5)
      @alimento2 = Alimentos.new("Leche vaca", 3.3, 4.8, 3.2)
      @alimento3 = Alimentos.new("Yogurt", 3.8, 4.8, 3.8)
      @alimento4 = Alimentos.new("Cerdo", 21.5, 0.0, 6.3)
      @alimento5 = Alimentos.new("Ternera", 21.1, 0.0, 3.1)
      @alimento6 = Alimentos.new("Pollo", 20.6, 0.0, 5.6)
      @alimento7 = Alimentos.new("Bacalao", 17.7, 0.0, 0.4)
      @alimento8 = Alimentos.new("Atún", 21.5, 0.0, 15.5)
      @alimento9 = Alimentos.new("Salmón", 19.9, 0.0, 13.6)
      @alimento10 = Alimentos.new("Aceite de oliva", 0.0, 0.2, 99.6)
      @alimento11 = Alimentos.new("Chocolate", 5.3, 47.0, 30.0)
      @alimento12 = Alimentos.new("Azúcar", 0.0, 99.8, 0.0)
      @alimento13 = Alimentos.new("Arroz", 6.8, 77.7, 0.6)
      @alimento14 = Alimentos.new("Lentejas", 23.5, 52.0, 1.4)
      @alimento15 = Alimentos.new("Papas", 2.0, 15.4, 0.1)
      @alimento16 = Alimentos.new("Tomate", 1.0, 3.5, 0.2)
      @alimento17 = Alimentos.new("Cebolla", 1.3, 5.8, 0.3)
      @alimento18 = Alimentos.new("Manzana", 0.3, 12.4, 0.4)
      @alimento19 = Alimentos.new("Plátanos", 1.2, 21.4, 0.2)
      @migrupo1 = Grupo.new(
      "Huevos, lacteos y helados",
      [ @alimento1, @alimento2, @alimento3 ])
      @migrupo2 = Grupo.new(
      "Carnes y derivados",
      [ @alimento4, @alimento5, @alimento6 ])
      @migrupo3 = Grupo.new(
      "Pescados y mariscos",
      [ @alimento7, @alimento8, @alimento9 ])
      @migrupo4 = Grupo.new(
      "Alimentos grasos",
      [ @alimento10, @alimento11, @alimento12 ])
      @lista1 = Lista.new(nil,nil)
   end

      it 'Prueba minimo en una inserción con numeros' do
		@lista1.insertar_varios([1,2])
		expect(@lista1.min).to eq(1)
      end

      it 'Prueba minimo en una inserción con Grupos' do
		@lista1.insertar_varios([@migrupo1,@migrupo2])
		expect(@lista1.min).to eq(@migrupo2)
      end

      it 'Prueba maximo en una insercion con numeros' do
		@lista1.insertar_varios([1,2])
		expect(@lista1.max).to eq(2)
      end

      it 'Prueba maximo en una insercion con Grupos' do
		@lista1.insertar_varios([@migrupo1,@migrupo2])
		expect(@lista1.max).to eq(@migrupo1)
      end

      it 'Prueba drop en una insercion con numeros' do
		@lista1.insertar_varios([1,2,3,4,5])
		expect(@lista1.drop(3)).to eq([2,1])
      end

      it 'Prueba drop en una insercion con Grupos' do
		@lista1.insertar_varios([@migrupo1,@migrupo2,@migrupo3,@migrupo4])
		expect(@lista1.drop(2)).to eq([@migrupo2,@migrupo1])
      end

      it 'Prueba ordenacion en una insercion con numeros' do
		@lista1.insertar_varios([1,3,2,4])
		expect(@lista1.sort).to eq([1,2,3,4])
      end

      it 'Prueba ordenacion en una insercion con Grupos' do
           @lista1.insertar_varios([@migrupo2,@migrupo4,@migrupo1,@migrupo3])
           expect(@lista1.sort).to eq([@migrupo4,@migrupo2,@migrupo1,@migrupo3])
      end

      it 'Prueba del metodo all? con Grupos' do
		@lista1.insertar_varios([@migrupo2,@migrupo4,@migrupo1,@migrupo3])
		expect(@lista1.all?).to eq(true)
      end
 
      it 'Prueba del metodo all? con numeros' do
		@lista1.insertar_varios([1,3,2,4])
		expect(@lista1.all?).to eq(true)
      end

      #no puede comprobar que el valor de la struct de nodo no exista porque el valor no es nil
      it 'Prueba del metodo all? con lista vacia' do
		expect(@lista1.all?).to eq(true)
      end

      it 'Prueba del metodo any? con Grupos' do
		@lista1.insertar_varios([@migrupo2,@migrupo4,@migrupo1,@migrupo3])
		expect(@lista1.any?).to eq(true)
      end
 
      it 'Prueba del metodo any? con numeros' do
		@lista1.insertar_varios([1,3,2,4])
		expect(@lista1.any?).to eq(true)
		expect(@lista1.any?{|x|x >=2}).to eq(true)
      end

      it 'Prueba del metodo collect con numeros' do
		@lista1.insertar(3)
		expect(@lista1.map{|i| i*i}).to eq([9])
		expect(@lista1.collect{|i| i*i}).to eq([9])
      end

      it 'Prueba del metodo count con numeros' do
		@lista1.insertar_varios([1,3,2,4,5,7,8])
		expect(@lista1.count).to eq(7)
      end

      it 'Prueba el metodo detect con numero' do
		@lista1.insertar_varios([1,2,3,0,5,7,4])
		expect(@lista1.detect {|i| i == 0}).to eq(0)
		expect(@lista1.find {|i| i == 3}).to eq(3)
		expect(@lista1.find {|i| i % 2 == 0}).to eq(2)
      end

  end	
end
