class Referencia
    include Comparable
    attr_accessor :tipo_doc,:autor,:titulo,:nombre
=begin
    attr_reader :autor,:titulo,:fecha
    def initialize(autor,titulo,fecha)
        @autor=autor
        @titulo=titulo
        @fecha=fecha
    end
    def <=>(other)
        t_comparable=self.autor <=> other.autor
        t_comparable
    end
=end
#constructor recibiendo un bloque del  elemento bibliografico.
    def initialize(nombre,&block)
        self.nombre=nombre
        self.tipo_doc=[]
        self.autor=[]
        self.titulo=[]
        if block_given?  
            if block.arity == 1
                yield self
            else
                instance_eval &block 
            end
        end
    end
    
    def <=>(other)
        t_comparable=self.autor <=> other.autor
        t_comparable
    end
     #metodo to_s para mostrar en forma de texto
    def to_s
        output1 = nombre
        output1 << "\n#{'=' * nombre.size}\n"
        output1 << " Autor:\n"
        
        autor.reverse.each_with_index do |t_aut, index|
            output1 << " #{t_aut}\n"
        end
        output1 << " #{self.class.to_s}\n"
        tipo_doc.each_with_index do |t_tipodoc, index|
            output1 << " #{t_tipodoc}\n"
        end
        output1 << " Titulo:"
        titulo.each_with_index do |t_titulo, index|
            output1 << " #{t_titulo.capitalize}\n"
        end
        output1
        
    end
    
    
    #muestra la informacion del autor mediante los hash recibidos.
    def aut(options ={})
        t_autor=""
        t_autor << "\t Apellidos: #{options[:apellido]}" if options[:apellido]
        t_autor << "\t Nombre: #{options[:nombre]}" if options[:nombre]
        autor << t_autor
    end
    #muestra el tipo de documento mediante los hash recibidos
    def tipodoc(options={})
      t_tipodoc=""
      t_tipodoc << "\t Nombre libro: #{options[:nombre]}" if options[:nombre]
      t_tipodoc << "\t Volumen: #{options[:volumen]}" if options[:volumen]
      t_tipodoc << "\t Edicion:#{options[:edicion]}" if options[:edicion]
      tipo_doc<< t_tipodoc
      #end
    end
  #muestra la informacion del titulo mediante los hash recibidos.
  def tit(options={})
      t_titulo=""
      t_titulo << "#{options[:titulo]}" if options[:titulo]
      titulo << t_titulo
  end
    
end
