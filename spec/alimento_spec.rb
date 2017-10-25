require "spec_helper"

describe Alimento do
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
     expect(@alimento1.get_nombre).to be == "Huevo frito"
  end
end
