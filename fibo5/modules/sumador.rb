module Sumador

 def sumatoria(listado)
  total = 0
  listado.each do |elemento|
   total += elemento
  end
  return total
 end
end