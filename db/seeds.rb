# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
        # db/seeds.rb
        # Este arquivo é usado para popular o banco de dados com dados iniciais ou de exemplo.
        # Você pode rodá-lo executando 'rails db:seed' no terminal.

        puts "Iniciando a criação das Secretarias de exemplo..."

        # Cria ou encontra Secretarias (Departments) para usar no aplicativo.
        # Isso garante que sempre haverá algumas opções no dropdown do formulário.
        Department.find_or_create_by!(name: "Limpeza e Conservação", email: "limpeza.conservacao@exemplo.com.br") do |dept|
          puts " - Criado: Limpeza e Conservação" unless dept.persisted?
        end

        Department.find_or_create_by!(name: "Meio Ambiente", email: "meio.ambiente@exemplo.com.br") do |dept|
          puts " - Criado: Meio Ambiente" unless dept.persisted?
        end

        Department.find_or_create_by!(name: "Educação", email: "educacao@exemplo.com.br") do |dept|
          puts " - Criado: Educação" unless dept.persisted?
        end

        Department.find_or_create_by!(name: "Saúde Pública", email: "saude.publica@exemplo.com.br") do |dept|
          puts " - Criado: Saúde Pública" unless dept.persisted?
        end

        Department.find_or_create_by!(name: "Infraestrutura Urbana", email: "infra.urbana@exemplo.com.br") do |dept|
          puts " - Criado: Infraestrutura Urbana" unless dept.persisted?
        end

        puts "Criação de Secretarias concluída!"
        