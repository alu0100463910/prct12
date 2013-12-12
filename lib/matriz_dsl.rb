class MatrixDSL < Matrix
	def initialize(op)
		@operando = op.to_s
		case op
		when "suma"
			@operando= "+"
		when "resta"
			@operando = "-"
		when "multiplica"
			@operando = "*"
		else
			puts "Operando desconocido"
		end
		@matrixA = nil
		@matrixB = nil
	end
end