ALTER TABLE Icecream
    ADD CONSTRAINT DK_IK
    FOREIGN KEY (Ikey)
    REFERENCES masterdrinks(DKey);
