#Leer un archivo y crear un arreglo con el nombre y notas de un alumno; devolver un arreglo con la nota mas alta de cada alumno
data = File.open('notas.data').readlines
data.map! { |line| line.split(",") }

def nota_más_alta(grades)
    resultado = []
    grades.each do |student_max_grade|
        resultado.push( [student_max_grade[0], student_max_grade.map{|num| num.to_i}.max] )
    end
    return resultado
end

print nota_más_alta(data)