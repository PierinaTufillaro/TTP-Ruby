def cuanto_falta? (tiempo = Time.now)
    mañana = Time.new(tiempo.year, tiempo.month, tiempo.day+1,0,0,0)
    puts "Faltan #{(mañana - tiempo).fdiv(60)} minutos " 
end

cuanto_falta?