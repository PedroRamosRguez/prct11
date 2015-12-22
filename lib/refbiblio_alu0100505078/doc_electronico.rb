class Doc_electronico < Referencia
    #attr_reader:url
=begin
   def initialize(autor,titulo,fecha,url)
        super(autor,titulo,fecha)
		@url=url
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