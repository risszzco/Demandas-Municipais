# Demandas-Municipais

Aplicativo de Demandas Municipais
Visão Geral do Projeto
Este aplicativo web, desenvolvido em Ruby on Rails, é um protótipo funcional que visa estabelecer um canal de comunicação direto, ágil e eficiente entre munícipes e a gestão pública municipal. O objetivo principal é facilitar o envio de diversas categorias de demandas (sociais, de infraestrutura, de fiscalização, educacionais, ambientais, denúncias, sugestões e dúvidas) diretamente para as secretarias responsáveis da prefeitura.

O Problema Abordado
A comunicação tradicional entre cidadãos e a administração municipal muitas vezes é burocrática, descentralizada e carece de mecanismos transparentes, resultando em:

Demora na identificação e resolução de problemas.
Frustração e desengajamento dos munícipes.
Falta de evidências visuais para contextualizar as demandas.
Ausência de canais seguros para denúncias anônimas.
A Solução Proposta
O aplicativo oferece uma interface intuitiva onde o munícipe pode:

Escolher a área/secretaria responsável pela demanda.
Descrever o problema, sugestão ou dúvida em texto.
Anexar recursos audiovisuais (fotos ou vídeos) para contextualização.
Optar por enviar a demanda de forma anônima.
Ter a demanda automaticamente encaminhada por e-mail para a secretaria correta.
Funcionalidades Chave do Protótipo
Formulário de Submissão de Demandas: Interface amigável para registro de informações.
Seleção de Secretaria: Dropdown dinâmico para direcionamento preciso.
Upload de Anexos: Suporte a múltiplos arquivos (imagens e vídeos) via Active Storage.
Modo Anônimo: Opção para envio sem identificação do munícipe.
Disparo Automático de E-mails: Notificação das secretarias responsáveis via Action Mailer.
Página de Confirmação: Feedback visual ao munícipe após o envio bem-sucedido.
Design Responsivo: Otimizado para desktop e dispositivos móveis (web app mobile).
Como Configurar e Rodar Localmente
Siga estas instruções para configurar e executar o aplicativo em sua máquina local.

Pré-requisitos
Certifique-se de ter as seguintes ferramentas instaladas:

Ruby: Versão 3.x (recomendado).
Rails: Versão 7.x (recomendado).
Node.js & Yarn: Para o Tailwind CSS.
SQLite3: Banco de dados padrão do Rails (já deve vir com o Rails).
ImageMagick e FFmpeg: Necessários para o Active Storage processar imagens e vídeos.
Linux (Ubuntu/Debian): sudo apt-get install imagemagick ffmpeg
macOS (Homebrew): brew install imagemagick ffmpeg
Windows: Baixe os instaladores oficiais.
Passos de Configuração
Clone o Repositório:

Bash

git clone []
cd citizen_report_app
Instale as Gems:

Bash

bundle install
Configure o Tailwind CSS:

Bash

rails tailwindcss:install
Configure o Active Storage:

Bash

rails active_storage:install
Configure e Migre o Banco de Dados:

Bash

rails db:migrate
Popule o Banco de Dados (Secretarias de Exemplo):

Bash

rails db:seed
(Este comando executará o conteúdo de db/seeds.rb para criar as secretarias de exemplo.)

Configure o Envio de E-mail (Action Mailer)
Para testar o envio de e-mails em desenvolvimento, você precisará configurar suas credenciais SMTP. Edite config/environments/development.rb conforme as instruções no arquivo e use variáveis de ambiente para suas credenciais (SMTP_USERNAME e SMTP_PASSWORD).
Alternativamente, para ver os e-mails localmente sem enviá-los de verdade:
Instale o MailCatcher:

Bash

gem install mailcatcher
Inicie o MailCatcher em um terminal separado:

Bash

mailcatcher
Configure config.action_mailer.delivery_method para :smtp e smtp_settings para address: "localhost", port: 1025 em config/environments/development.rb. Após iniciar o Rails server, acesse http://localhost:1080 em seu navegador para ver os e-mails enviados pelo app.

Como Rodar o Aplicativo
Inicie o Servidor Rails:
Bash

rails s
Acesse o Aplicativo: Abra seu navegador e navegue para http://localhost:3000.
Estrutura de Branches (Exemplo)
O projeto foi desenvolvido seguindo uma estratégia de branches para organizar o fluxo de trabalho:

main (ou master): Contém a versão estável e mais recente do projeto.
feature/initial-setup: Configuração inicial do projeto Rails e do README.
feature/report-submission: Implementação dos modelos, controllers e views para o formulário de envio de demandas.
feature/email-attachments: Integração do Action Mailer para envio de e-mails e Active Storage para gerenciamento de anexos.
feature/responsive-design: Aplicação de estilos Tailwind CSS para garantir a responsividade do layout.
