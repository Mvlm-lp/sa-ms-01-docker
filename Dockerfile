# Usa a imagem oficial do PlantUML e GLPI para chamados
FROM plantuml/plantuml-server:jetty AS plantuml

# Segunda etapa: GLPI (sistema de chamados)
FROM diouxx/glpi

# Expondo as portas necessárias
EXPOSE 80 8080

# Copiar configurações
COPY config/settings.ini /var/www/html/glpi/config/
COPY config/database.sql /docker-entrypoint-initdb.d/

# Comando para iniciar os serviços
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
