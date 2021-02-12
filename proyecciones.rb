#nuevo archivo agregamos decimales, para leer y hacer espacio
original_data = open('ventas_base.txt').read.split(',') 
data = original_data.map { |data| data.to_f}


#crear un método que reciba cuatro argumentos
def proyections(ventas_base, augment, start_array, end_array)    
    a = ventas_base.map.with_index do |sales, index|
        if index >= start_array && index <= end_array
            (sales*augment)
        else
            sales
        end
    end
    return a
end


def sum_proyection(array)
    array.inject(0) { |acc, sale| acc + sale}
end

#la primera mitad del semestre(1 Trimestre)se vende un 10% adicional
percent_1 = 1.10
start_array1 = 0
end_array1 = 5
result_1 = "%0.2f" % [sum_proyection(proyections(data, percent_1, start_array1, end_array1))]

#la segunda mitad del semestre se vende un 20% más(2 TRIMESTRE)
percent_2 = 1.20
start_array2 = 6
end_array2 = 11
result_2 = "%0.2f" % [sum_proyection(proyections(data, percent_2, start_array2, end_array2))]

#IMPRIMO RESULTADOS EN NUEVOS ARCHIVOS
File.write('resultados.data', result_1.to_s + ("\n"))
File.write('resultados.data', result_2, mode: 'a')