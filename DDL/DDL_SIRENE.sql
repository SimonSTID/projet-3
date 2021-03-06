CREATE TABLE sirene(
    SIREN TEXT,
    NIC TEXT,
    L1_NORMALISEE TEXT,
    DEPET TEXT,
    COMET TEXT,
    ENSEIGNE TEXT,
    APET700 TEXT,
    NOMEN_LONG TEXT,
    SIGLE TEXT
    );


ALTER TABLE SIRENE ADD COLUMN CODE_INSEE TEXT;
UPDATE SIRENE SET CODE_INSEE = DEPET || COMET WHERE DEPET IS NOT NULL AND COMET IS NOT NULL;
CREATE INDEX code_insee_idx ON SIRENE(CODE_INSEE);
CREATE INDEX departement_idx ON SIRENE(DEPET);

