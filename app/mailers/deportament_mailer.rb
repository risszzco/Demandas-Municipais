        # app/mailers/department_mailer.rb
        class DepartmentMailer < ApplicationMailer
          default from: 'seu-email@exemplo.com' # Altere para o seu e-mail de envio

          def report_submitted(report)
            @report = report
            @department = report.department
            mail(to: @department.email, subject: "Nova Demanda de Munícipe: #{@report.title}")
          end
        end
        