        <!DOCTYPE html>
        <html>
        <head>
          <meta content='text/html; charset=UTF-8' http-equiv='Content-Type' />
        </head>
        <body>
          <h1>Nova Demanda de Munícipe</h1>
          <p>Uma nova demanda foi enviada através do aplicativo:</p>

          <p><strong>Título:</strong> <%= @report.title %></p>
          <p><strong>Descrição:</strong> <%= @report.description %></p>
          <p><strong>Área Responsável:</strong> <%= @department.name %></p>
          <p><strong>Enviado Anonimamente:</strong> <%= @report.anonymous ? 'Sim' : 'Não' %></p>

          <% if @report.attachments.any? %>
            <p><strong>Anexos:</strong></p>
            <ul>
              <% @report.attachments.each do |attachment| %>
                <li><%= link_to attachment.filename, rails_blob_url(attachment) %></li>
              <% end %>
            </ul>
          <% end %>

          <p>Por favor, analise e tome as medidas cabíveis.</p>
          <p>Atenciosamente,</p>
          <p>Equipe de Gestão Pública Municipal</p>
        </body>
        </html>
        