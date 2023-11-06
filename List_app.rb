require "./List.rb"

class ListApp
  attr_writer :list

  def initialize
    @list = List.new
  end

  def run
    puts "BIENVENIDO a nuestra la lista de compra"
    loop do
      puts "1. Dar de alta un articulo."
      puts "2. Dar de baja un articulo."
      puts "3. Mostrar todos los articulos"
      puts "4. Marcar un articulo."
      puts "5. Borrar todos los articulos."
      puts "6. Salir."

      print "Ingrese su opcion: "

      opcion = gets.chomp

      case (opcion)
      when '1'
        print "Ingrese el articulo: "
        texto = gets.chomp
        @list.add_item(texto)
        puts "Articulo ingresado correctamente"
      when '2'
        @list.show_all
        print "Ingrese el indice a eliminar: "
        indice = gets.to_i
        @list.remove_item(indice)
        puts "Articulo eliminado correctamente"
      when '3'
        @list.show_all
      when '4'
      when '5'
      when '6'
        puts "Gracias por utilizar nuestra aplicacion."
        break
      end
    end
  end
end

listapp = ListApp.new
listapp.run