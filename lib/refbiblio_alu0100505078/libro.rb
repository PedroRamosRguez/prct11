#require "./referencia.rb"
class Libro < Referencia

 #attr_reader  :isbn,:serie, :editorial, :num_edicion
=begin
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
=end 
 
#El constructor recibe un bloque y llama a los metodos que se encuentran en Referencia.
    def initialize(nombre={},&block)
        #super(autor,titulo,tipo_doc,nombre)
        self.nombre=nombre
        self.tipo_doc=[]
        self.autor=[]
        self.titulo=[]
        instance_eval &block 
    end
end