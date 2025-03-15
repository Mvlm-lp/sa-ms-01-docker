CREATE DATABASE IF NOT EXISTS glpi;
USE glpi;

CREATE TABLE IF NOT EXISTS chamados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    descricao TEXT NOT NULL,
    status ENUM('Aberto', 'Em andamento', 'Fechado') NOT NULL DEFAULT 'Aberto',
    data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
