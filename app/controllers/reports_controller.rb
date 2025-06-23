        # app/controllers/reports_controller.rb
        # Controller para lidar com a criação e visualização dos relatórios/demandas
        class ReportsController < ApplicationController
          # Exibe o formulário para uma nova demanda
          def new
            @report = Report.new # Cria uma nova instância de Report para o formulário
            @departments = Department.all # Carrega todas as secretarias existentes para preencher o dropdown
          end

          # Processa o envio do formulário para criar uma nova demanda
          def create
            @report = Report.new(report_params) # Cria uma demanda com os parâmetros recebidos do formulário
            if @report.save # Tenta salvar a demanda no banco de dados
              # DepartmentMailer.report_submitted(@report).deliver_later # Esta linha será adicionada no Passo 4
              redirect_to @report, notice: 'Sua demanda foi enviada com sucesso!' # Redireciona com mensagem de sucesso
            else
              # Se houver erros de validação, recarrega a lista de secretarias e renderiza o formulário novamente
              @departments = Department.all
              render :new, status: :unprocessable_entity # Exibe o formulário com os erros
            end
          end

          # Exibe os detalhes de uma demanda específica
          def show
            @report = Report.find(params[:id]) # Encontra a demanda pelo ID na URL
          end

          private

          # Define os parâmetros permitidos do formulário para segurança (strong parameters)
          # 'attachments: []' será adicionado no Passo 4
          def report_params
            params.require(:report).permit(:title, :description, :department_id, :anonymous)
          end
        end
        