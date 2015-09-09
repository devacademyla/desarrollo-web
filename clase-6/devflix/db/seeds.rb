puts 'Generando data de prueba'
Serie.delete_all
Serie.create(nombre: 'Bates Motel', descripcion: 'Suspenso', num_temporadas: 2)
Serie.create(nombre: 'Dexter', descripcion: 'Suspenso', num_temporadas: 8)
puts 'Acabó de generar'
