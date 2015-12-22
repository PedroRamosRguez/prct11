#require "./referencia.rb"
class Libro < Referencia

 #attr_reader  :isbn,:serie, :editorial, :num_edicion
   def initialize(autor,isbn,titulo,fecha,editorial,edicion)
		super(autor,titulo,fecha)
      #variables de instancia
		@isbn=isbn
		@editorial=editorial
		@num_edicion=edicion
		
   end
    def set_serie(serie)
   	 	@serie=serie
   	 
    end
end