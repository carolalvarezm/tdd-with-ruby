require 'etiqueta'

RSpec.describe Etiqueta do
	
	before :each do
		@e=Informacion_nutricional.new("producto",1.2,1.4,0.2,6.7,6.7,2.6,0.18)
	end

	it "has a version number" do
		expect(Etiqueta::VERSION).not_to be nil
	end

describe "Comprobando el constructor de la etiqueta" do 

	it "Existe un nombre para la etiqueta y la cantidad de grasas saturadas,monoinsaturadas y poliinsaturadas.Existen la cantidad de hidratos de carbono, azucares,proteinas y sal" do
		p=Informacion_nutricional.new("producto",1.2,1.4,0.2,6.7,6.7,2.6,0.18)
	end
end

describe "Comprobando los accesos" do
	it "Se almacena correctamente el nombre de la etiqueta" do
		expect(@e.nombre).to eq("producto")
	end
	
	it "Se almacena correctamente las grasas(poliinsaturadas,monoinsaturadas y saturadas" do
		expect(@e.grasasat).to eq(1.2)
		expect(@e.grasam).to eq(1.4)
		expect(@e.grasap).to eq(0.2)
	end
	it "Se almacenan correctamente los hidratos de carbono" do
		expect(@e.hidratos).to eq(6.7)
	end
	
	it "Se almacenan correctamente los azucares" do
		expect(@e.azucares).to eq(6.7)
	end
	
	it "Se almacenan correctamente las proteinas" do
		expect(@e.proteinas).to eq(2.6)
	end
	
	it "Se almacena correctamente la sal" do
		expect(@e.sal).to eq(0.18)
	end
end

describe "Calculo del las grasas" do
	
	it "Las grasas se calculan bien" do
		expect(@e.grasas).to eq(2.8)
	end
end

describe "Calculo del Valor energético" do
	it "En kcal" do
		expect(@e.valenkcalgrasas).to eq(25.2)
		expect(@e.valenkcalhidratos).to eq(26.8)
		expect(@e.valenkcalproteinas).to eq(10.4)
	end
	it "En kj" do
		expect(@e.valenkjgrasas).to eq(103.6)
		expect(@e.valenkjhidratos).to eq(113.9)
		expect(@e.valenkjproteinas).to eq(44.2)		
	end

end
end
