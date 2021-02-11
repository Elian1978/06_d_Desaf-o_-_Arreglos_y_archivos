#RECIBIR UN ARHIVO CON NOMBRE Y NOTAS DE UN ALUMNO Y
#DEVOLVER UN AREGLO CON LA NOTA MAS ALTA DEL ALUMNO

data = File.open('notas.data').readlines
data.map! { |line| line.split(",") }

def nota_más_alta(grades)
    results = []
    grades.each do |student_max_grade|
        results.push( [student_max_grade[0], student_max_grade.map{|num| num.to_i}.max] )
    end
    return results
end
#un arreglo con el nombre y notas de un alumno y devuelva una arreglo con la nota mas alta de cada alumno


print nota_más_alta(data)