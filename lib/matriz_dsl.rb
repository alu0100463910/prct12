require "matriz_sf.rb"

class MatrixDSL < Matrix
	#Se le pasa el tipo de operando que se va quiere usar
	def initialize (op)
		@op = op.to_s
		case @op
			when "suma"
				@operando = "+"
			when "resta"
				@operando = "-"
			when "multiplicacion"
				@operando = "*"
			else
				puts "Operando desconocido"
		end
		@matriz1 = nil
		@matriz2 = nil
	end
	
	#Definir  tipo de matriz dispersa o densa
	def option (opcion)
		@tipo = opcion
	end

        # Se definen todos las operaciones con matrices
        def operand (o)
		if @matriz1 == nil
			@matriz1 == o
		else
			@matriz2 == o
		end
		execute
        end
                
        # Funcion de ejecucion del DSL
        def execute
		
		if @matriz1 != nil and @matriz2 != nil
			
			@m1 = "Matriz " + @tipo.to_s + ".new(@matriz1)"
			puts "Matriz 1: #{@m1}"
		 	@m2 = "Matriz" + @tipo.to_s + ".new(@matriz2)"
                        puts "Matriz 2: #{@m2}"

                        resultado = @m1.to_s + "." + @operando.to_s + "(" + " " + @m2.to_s + ")"
                        resultado = eval(resultado)
                        puts "Resultado de la operacion ( " + @op.to_s + " ): #{resultado}"
		end
		             
        end
end
