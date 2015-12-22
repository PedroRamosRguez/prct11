class Referencia
    include Comparable
    attr_accessor :tipo_doc,:autor,:titulo,:nombre

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

end
