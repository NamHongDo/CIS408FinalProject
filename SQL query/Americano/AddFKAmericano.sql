ALTER TABLE Americano
    ADD CONSTRAINT DK_AK
    FOREIGN KEY (Akey)
    REFERENCES masterdrinks(DKey);
