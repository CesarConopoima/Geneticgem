require "genetic/version"
require "genetic/geneticapi"

module Genetic
	class Genetica
		def initialize(archivoName,numberNodes,numberVariables)
			@ArchivoName 	= archivoName
			@NumberNodes 	= numberNodes
			@NumberVariable = numberVariables 
		end
		def correlation
			Geneticapi.Archivo = @ArchivoName
			Geneticapi.main()
			return Geneticapi.Matlab
		end
	end
end
