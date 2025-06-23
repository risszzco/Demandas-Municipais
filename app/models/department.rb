        # app/models/department.rb
        # Model para representar as secretarias ou áreas da prefeitura
        class Department < ApplicationRecord
          has_many :reports # Uma secretaria pode ter várias demandas

          # Validações para garantir a qualidade dos dados da secretaria
          validates :name, presence: true, uniqueness: true # Nome da secretaria deve ser único e presente
          validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP } # E-mail deve ser presente e ter formato válido
        end
        