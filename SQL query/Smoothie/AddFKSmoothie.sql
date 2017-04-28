ALTER TABLE Smoothie
    ADD CONSTRAINT DK_MK
    FOREIGN KEY (Skey)
    REFERENCES masterdrinks(DKey);
