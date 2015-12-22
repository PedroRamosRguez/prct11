#clase que representa la lista enlazada
Node=Struct.new(:value,:next,:before)
class Lista
    include Enumerable
    attr_reader :cabeza,:cola,:n_elementos
    def initialize()
        @cabeza=Node.new(nil,nil,nil)
        @cola=Node.new(nil,nil,nil)
        @n_elementos=0 
        
    end
    #MÉTODO EACH PARA USO DEL ENUMERABLE(SE USA EL AUTOR EN ESTE CASO)
    def each()
        aux=@cola
       
       while aux.next !=nil do
          yield aux.value.autor
         # aux=@cola.next
         aux=aux.next
        end
    end
    #Método  insertar por el comienzo de la lista enlazada
    def inserta(item)
       
        item.each do |n|
         nodo=Node.new(nil)
         nodo.value=n
            if @cabeza.value==nil
                @cabeza=nodo
                @cola=nodo
                
            else
                a_cabeza=@cola
                
                while a_cabeza.next!=nil do
                    
                    a_cabeza=a_cabeza.next
                    
                end
                a_cabeza.next=nodo
                @cabeza=a_cabeza.next
                @cabeza.before=a_cabeza
            end
            @n_elementos=@n_elementos+1
       end
    end
    #Método para extraer el primer elemento de la lista enlazada.
    def extrae
        
        a_aux=@cola
        @cola=@cola.next
        @n_elementos=@n_elementos-1
        a_aux
    end
    #Método que comprueba si la lista está vacía o no
    def empty?
        if(@cabeza.value==nil)
            true
        else
            false
        end
    end
     #Método para mostrar el contenido de la lista desde el principio hasta el final.
    def mostrar
        aux_cabeza=@cabeza
        aux_cola=@cola
        
        #print "\n de cola hacia adelante:\n "
        print aux_cola.value
        while aux_cola.next!=nil do
            print "\n ->"
            aux_cola=aux_cola.next
            print aux_cola.value
        end
         print "\n=========================================================\n"
    end
end
