class MatrixDSL < Matrix
	def initialize(op)
		case op.to_s
			when "suma"
				@operando= "+"
			when "resta"
				@operando = "-"
			when "multiplica"
				@operando = "*"
			else
				puts "Operando desconocido"
		end
		@matriz1 = nil
		@matriz2 = nil
	end
	
	#Definir  tipo de matriz dispersa o densa
	def option(op)
		
	end

        # Se definen todos las operaciones con matrices
        def operand(other) 
        end
                
        # Funcion ejecucion del DSL
        def execute
		#falta
                        
        end
end