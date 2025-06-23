        # app/models/report.rb
        # Model para representar uma denúncia, sugestão ou dúvida enviada pelo munícipe
        class Report < ApplicationRecord
          belongs_to :department # Uma demanda pertence a uma secretaria
          # has_many_attached :attachments # Esta linha será adicionada no Passo 4

          # Validações para garantir que os dados da demanda são válidos
          validates :title, presence: true, length: { minimum: 5 } # Título deve ser presente e ter no mínimo 5 caracteres
          validates :description, presence: true, length: { minimum: 10 } # Descrição deve ser presente e ter no mínimo 10 caracteres
          validates :department, presence: true # A demanda deve estar associada a uma secretaria
        end
        