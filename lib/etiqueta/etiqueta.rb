class Informacion_nutricional
	
	include Comparable	
	
	attr_reader :nombre, :grasasat, :grasam, :grasap, :hidratos, :azucares, :proteinas, :sal

	def initialize (nombre,grasasat,grasam,grasap,hidratos,azucares,proteinas,sal)
		@nombre,@grasasat,@grasam,@grasap,@hidratos,@azucares,@proteinas,@sal=nombre,grasasat,grasam,grasap,hidratos,azucares,proteinas,sal
	end		
	
	def grasas
		@grasasat+@grasam+@grasap
	end
	
	def valenkcalgrasas
		self.grasas*9
	end 

	def valenkjgrasas
		self.grasas*37
	end
	
	def valenkcalhidratos
		@hidratos*4
	end

	def valenkjhidratos
		@hidratos*17
	end
	
	def valenkcalproteinas
                @proteinas*4
        end

        def valenkjproteinas
                @proteinas*17
        end
	
	def valenkcalsal
                @sal*6
        end

        def valenkjsal
                @sal*25
        end	
	
	def valorenergeticokcal
		self.valenkcalgrasas+self.valenkcalhidratos+self.valenkcalsal+self.valenkcalproteinas
	end

	def valorenergeticokj
                self.valenkjgrasas+self.valenkjhidratos+self.valenkjsal+self.valenkjproteinas
        end

	def to_s
		 "Valor Energético:\n kcal #{self.valorenergeticokcal} \n kj #{self.valorenergeticokj}\n_______________________\nGrasas #{self.grasas} \n de las cuales \n saturadas #{@grasasat} \n monoinsaturadas #{@grasam}\n poliinsaruradas #{@grasap}\n_______________________\nHidratos de carbono #{@hidratos}\n de los cuales \n azucares #{@azucares}\n_______________________\n proteinas #{@proteinas}\n_______________________\n sal #{@sal}\n_______________________\n "
	end
	
	def <=>(etiqueta)
		self.valorenergeticokcal <=> etiqueta.valorenergeticokcal
	end
end

e1=Informacion_nutricional.new("producto3",1.2,1.4,0.2,6.7,6.7,2.6,9.3)
e2=Informacion_nutricional.new("producto3",1.2,1.4,0.2,6.7,6.7,2.6,8.0)
e3=Informacion_nutricional.new("producto3",1.2,1.4,0.2,6.7,6.7,2.6,7.4)
puts e1
puts e2
puts e3
