class Informacion_nutricional
	
	attr_reader :nombre, :grasasat, :grasam, :grasap, :hidratos, :azucares, :proteinas, :sal

	def initialize (nombre,grasasat,grasam,grasap,hidratos,azucares,proteinas,sal)
		@nombre,@grasasat,@grasam,@grasap,@hidratos,@azucares,@proteinas,@sal=nombre,grasasat,grasam,grasap,hidratos,azucares,proteinas,sal
	end		
	
	def grasas
		@grasasat+@grasam+@grasap
	end
end

