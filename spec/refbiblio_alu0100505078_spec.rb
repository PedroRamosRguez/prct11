#require "spec_helper"
require "./lib/refbiblio_alu0100505078/biblio.rb"
require "./lib/refbiblio_alu0100505078/lista.rb"
require "./lib/refbiblio_alu0100505078/referencia.rb"
require "./lib/refbiblio_alu0100505078/libro.rb"
require "./lib/refbiblio_alu0100505078/art_revista.rb"
require "./lib/refbiblio_alu0100505078/art_periodico.rb"
require "./lib/refbiblio_alu0100505078/doc_electronico.rb"
describe Biblioteca do
   before :each do
   	 @bil=Biblioteca.new(["pepe","juan"],["123","456","999"],"Programacion en Ruby","(12/5/15)","santillana","4 edition")
	end
	

		 it "No puede haber ningún autor" do
    		     @bil.autor.length.should_not be 0
    		 end
    
		 it "El libro debe tener un titulo" do
    		  
    		     @bil.titulo.length.should_not be 0
    		 end
	
		 it "Debe haber o no una serie" do
    		   
    		    @bil.serie
    		 end
	
		 it "No puede haber ningún ISBN" do
    		   
    		     @bil.isbn.length.should_not be 0
    		 end
   
		 it "Debe haber una editorial" do
    		   
    		     @bil.editorial.length.should_not be 0
    		 end
	
		 it "Debe haber una numero de edicion" do
    		   
    		  
    		     @bil.num_edicion.length.should_not be 0
    		 end
	
		 it "Debe haber una fecha de publicacion" do
    		  
    		  
    		     @bil.fecha_publicacion.length.should_not be 0
    		 end
    	it "insertada la serie" do
    		@bil.set_serie("Programacion")
    	end
	end
    	describe Node do
    		before:all do
    			@nod=Node.new("pepe",nil)
    		end
    			it "Debe existir un nodo de la lista con sus datos y su siguiente" do
	   	 			expect(@nod.value).not_to eq(nil)
	   	    end	
        end

		describe Libro do
			
			it "Expectativa para modificar constructor de libro  y reciba un bloque" do
				@lib1=Libro.new("ESTO ES UN LIBRO1")do 
  					aut :nombre => "juanito"
  					aut :apellido => "lopez"
					tipodoc :nombre => "titulo del Libro1"
  					tipodoc :volumen => 42
  					tipodoc :edicion => 3
  					tit :titulo => "Prueba de un titulo1..."
				end 
		    end
		end 
		describe Lista do
			before:each do 
				
				@lib1=Libro.new("ESTO ES UN LIBRO1")do 
  					aut :nombre => "juanito"
  					aut :apellido => "lopez"
					tipodoc :nombre => "titulo del Libro1"
  					tipodoc :volumen => 42
  					tipodoc :edicion => 3
  					tit :titulo => "Prueba de un titulo1..."
				end
				@lib2=Libro.new("ESTO ES UN LIBRO2")do 
					 aut :nombre => "pedro"
					 aut :apellido => "ramos"
  					 tipodoc :nombre => "titulo del Libro2"
  					 tipodoc :volumen => 2
  					 tipodoc :edicion => 1
  					 tit :titulo => "Prueba de un titulo2..."
				end
				@lib3=Libro.new("ESTO ES UN LIBRO3")do 
  					aut :nombre => "laura"
					aut :apellido => "jimenez"
  					tipodoc :nombre => "titulo del Libro3"
  					tipodoc :volumen => 4
  					tipodoc :edicion => 8
  					tit :titulo => "Prueba de un titulo3..."
				end
				@doc1=Doc_electronico.new("esto es un documento electronico")do 
  					aut :nombre => "carl"
					aut :apellido => "Sagan"
  					tipodoc :nombre => "Cience"
  					tipodoc :volumen => 12
  					tipodoc :edicion => 10
					tit :titulo => "Astronomia para novatos."
				end
				@list1=Lista.new()
				@list1.inserta([@lib1,@lib2,@lib3,@doc1])
				#@list1.mostrar	
			end
			it "Expectativa para comprobar el funcionamiento de los bloques"do
				@doc1=Doc_electronico.new("esto es un documento electronico")do 
  					aut :nombre => "carl"
					aut :apellido => "Sagan"
  					tipodoc :nombre => "Cience"
  					tipodoc :volumen => 12
  					tipodoc :edicion => 10
					tit :titulo => "Astronomia para novatos."
				end
			end
		end
		