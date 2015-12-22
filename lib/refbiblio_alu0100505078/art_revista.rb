class Art_rev < Referencia
    #attr_reader  :nombre_rev,:volumen, :num_edicion 
=begin
   def initialize(autor,titulo,nombre_rev,volumen,fecha,edicion)
        super(autor,titulo,fecha)
		@nombre_rev=nombre_rev
		@volumen=volumen
		@num_edicion=edicion
   end
=end
    def initialize(name,&block)
        #super(autor,titulo,tipo_doc,nombre)
        self.nombre=nombre
        self.tipo_doc=[]
        self.autor=[]
        self.titulo=[]
        instance_eval &block 
    end
end