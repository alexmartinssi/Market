# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.create([
   {name: 'Alimentos'},
   {name: 'Bebidas'},
   {name: 'Higiene'},
   {name: 'Limpeza'}
])

Supplier.create([
    {name: 'Atacadão', cnpj: '69.962.657/0001-36'},
    {name: 'Makro', cnpj: '22.125.315/0001-06'}
])

Unit.create([
    {description: 'Unidade', acronym: 'UN'},
    {description: 'Caixa', acronym: 'CX'},
    {description: 'Duzia', acronym: 'DZ'},
    {description: 'Quilo', acronym: 'KG'},
    {description: 'Centímetro', acronym: 'CM'},
    {description: 'Metro', acronym: 'M'},
    {description: 'Peça', acronym: 'PC'},
    {description: 'Litro', acronym: 'L'},
    {description: 'Mililitro', acronym: 'ML'}
])

Product.create([
    {bar_code: '31.1112.##############.55.011.000000001.1.00000001.8-procNFe', description: 'Arroz', unit_id:1, category_id:1},
    {bar_code: '31.1112.##############.55.011.000000001.1.00000001.8-procNFe', description: 'Feijão', unit_id:1, category_id:1},
    {bar_code: '31.1112.##############.55.011.000000001.1.00000001.8-procNFe', description: 'Sabonete', unit_id:2, category_id:1},
    {bar_code: '31.1112.##############.55.011.000000001.1.00000001.8-procNFe', description: 'Carne', unit_id:7, category_id:1},
    {bar_code: '31.1112.##############.55.011.000000001.1.00000001.8-procNFe', description: 'Peixe', unit_id:7, category_id:1},
    {bar_code: '31.1112.##############.55.011.000000001.1.00000001.8-procNFe', description: 'Desodorante', unit_id:2, category_id:3}
])