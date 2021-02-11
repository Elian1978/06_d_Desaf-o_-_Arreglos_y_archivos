#Crear el archivo grafico.rb que contenga el método chart que construya un gráfico en la
#consola a partir de un arreglo con datos. El método no debe devolver ningún valor.

datos = [5, 3, 2, 5, 10]

def chart(array)
    large = array.max
    array.each do |number|
        puts "|" + "**" * number
    end
    print ">" + "--" * large
    print "\n"
end

chart (datos)