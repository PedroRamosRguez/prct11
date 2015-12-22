class Art_periodico < Referencia
#attr_reader  :nombre_per,:pagina 
=begin
   def initialize(autor,titulo,nombre_per,fecha,pagina)
        super(autor,titulo,fecha)
		@nombre_per=nombre_per
		@pagina=pagina
	
   end
=end
    def initialize(nombre={},&block)
        #super(autor,titulo,tipo_doc,nombre)
        self.nombre=nombre
        self.tipo_doc=[]
        self.autor=[]
        self.titulo=[]
        instance_eval &block 
    end
end