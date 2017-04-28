ALTER TABLE Latte
    ADD CONSTRAINT fk_foreign_key_name
    FOREIGN KEY (Lkey)
    REFERENCES masterdrinks(DKey);
