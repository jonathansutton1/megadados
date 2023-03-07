USE torneio;

ALTER TABLE jogador
    DROP FOREIGN KEY jogador_ibfk_1;

ALTER TABLE jogador
    ADD CONSTRAINT fk_equipe FOREIGN KEY (nome_equipe) REFERENCES equipe (nome)
    ON DELETE CASCADE
    ON UPDATE CASCADE;
