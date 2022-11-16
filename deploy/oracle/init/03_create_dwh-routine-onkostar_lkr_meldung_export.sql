ALTER SESSION SET CONTAINER = COGN12;
create table DWH_ROUTINE.STG_ONKOSTAR_LKR_MELDUNG_EXPORT
(
    ID              NUMBER(10),
    LKR_MELDUNG     NUMBER(10) not null,
    LKR_EXPORT      NUMBER(10) not null,
    TYP             NUMBER(10) not null,
    XML_DATEN       CLOB,
    VERSIONSNUMMER  NUMBER(10),
    REFERENZ_NUMMER VARCHAR2(50 char)
)
    /


INSERT INTO DWH_ROUTINE.STG_ONKOSTAR_LKR_MELDUNG_EXPORT (ID, LKR_MELDUNG, LKR_EXPORT, TYP, XML_DATEN, VERSIONSNUMMER,
                                                         REFERENZ_NUMMER)
VALUES (1, 225, 1, 1, to_clob('<?xml version="1.0" encoding="UTF-8"?>
<ADT_GEKID xmlns="http://www.gekid.de/namespace" Schema_Version="2.1.2">
    <Absender Absender_ID="UKER" Software_ID="ONKOSTAR" Installations_ID="2.9.2">
        <Absender_Bezeichnung>UKER</Absender_Bezeichnung>
        <Absender_Ansprechpartner/>
        <Absender_Anschrift>Maximiliansplatz 2, 91054 Erlangen</Absender_Anschrift>
    </Absender>
    <Menge_Patient>
        <Patient>
            <Patienten_Stammdaten Patient_ID="1055555550">
                <KrankenversichertenNr>Q00000000</KrankenversichertenNr>
                <KrankenkassenNr>10000000</KrankenkassenNr>
                <Patienten_Nachname>Doe</Patienten_Nachname>
                <Patienten_Vornamen>John</Patienten_Vornamen>
                <Patienten_Geschlecht>M</Patienten_Geschlecht>
                <Patienten_Geburtsdatum>11.09.1900</Patienten_Geburtsdatum>
                <Menge_Adresse>
                    <Adresse>
                        <Patienten_Strasse>Johnstr. 7</Patienten_Strasse>
                        <Patienten_Land>DE</Patienten_Land>
                        <Patienten_PLZ>91000</Patienten_PLZ>
                        <Patienten_Ort>Johncity</Patienten_Ort>
                    </Adresse>
                </Menge_Adresse>
            </Patienten_Stammdaten>
<Menge_Meldung>
    <Meldung Meldung_ID="FK0000225" Melder_ID="FK">
      <Meldedatum>02.05.2021</Meldedatum>
      <Meldebegruendung>I</Meldebegruendung>
      <Meldeanlass>diagnose</Meldeanlass>
      <Tumorzuordnung Tumor_ID="1">
        <Primaertumor_ICD_Code>D06.1</Primaertumor_ICD_Code>
        <Primaertumor_ICD_Version>10 2021 GM</Primaertumor_ICD_Version>
        <Diagnosedatum>12.02.2021</Diagnosedatum>
        <Seitenlokalisation>T</Seitenlokalisation>
      </Tumorzuordnung>  ') ||
            to_clob('<Diagnose Tumor_ID="1">
        <Primaertumor_ICD_Code>D06.1</Primaertumor_ICD_Code>
        <Primaertumor_ICD_Version>10 2021 GM</Primaertumor_ICD_Version>
        <Primaertumor_Topographie_ICD_O>C53.1</Primaertumor_Topographie_ICD_O>
        <Primaertumor_Topographie_ICD_O_Version>32</Primaertumor_Topographie_ICD_O_Version>
        <Diagnosedatum>12.02.2021</Diagnosedatum>
        <Diagnosesicherung>7</Diagnosesicherung>
        <Seitenlokalisation>T</Seitenlokalisation>
        <Menge_Histologie>
          <Histologie Histologie_ID="2963">
            <Tumor_Histologiedatum>12.02.2021</Tumor_Histologiedatum>
            <Histologie_EinsendeNr>12103806</Histologie_EinsendeNr>
            <Morphologie_Code>9999/9</Morphologie_Code>
            <Morphologie_ICD_O_Version>32</Morphologie_ICD_O_Version>
            <Morphologie_Freitext>CIN II</Morphologie_Freitext>
            <Grading>H</Grading>
          </Histologie>
          <Histologie Histologie_ID="2968">
            <Tumor_Histologiedatum>17.03.2021</Tumor_Histologiedatum>
            <Histologie_EinsendeNr>12107294</Histologie_EinsendeNr>
            <Morphologie_Code>8888/8</Morphologie_Code>
            <Morphologie_ICD_O_Version>32</Morphologie_ICD_O_Version>
            <Morphologie_Freitext>CIN III</Morphologie_Freitext>
            <Grading>H</Grading>
          </Histologie>
        </Menge_Histologie>
        <cTNM TNM_ID="2969">
          <TNM_Datum>17.03.3333</TNM_Datum>
          <TNM_Version>8</TNM_Version>
          <TNM_c_p_u_Praefix_T>p</TNM_c_p_u_Praefix_T>
          <TNM_T>is(is)</TNM_T>
          <TNM_c_p_u_Praefix_N>c</TNM_c_p_u_Praefix_N>
          <TNM_N>0</TNM_N>
          <TNM_c_p_u_Praefix_M>c</TNM_c_p_u_Praefix_M>
          <TNM_M>0</TNM_M>
        </cTNM>
        <pTNM TNM_ID="2968">
          <TNM_Datum>17.03.2021</TNM_Datum>
          <TNM_Version>8</TNM_Version>
          <TNM_c_p_u_Praefix_T>p</TNM_c_p_u_Praefix_T>
          <TNM_T>is</TNM_T>
        </pTNM>
        <Menge_Weitere_Klassifikation>
          <Weitere_Klassifikation>
            <Datum>25.01.2021</Datum>
            <Name>UICC</Name>
            <Stadium>IIA</Stadium>
          </Weitere_Klassifikation>
        </Menge_Weitere_Klassifikation>
      </Diagnose>
    </Meldung>
  </Menge_Meldung>
  </Patient>
</Menge_Patient>
<Menge_Melder>
    <Melder Melder_ID="NC">
        <Meldende_Stelle>NC</Meldende_Stelle>
    </Melder>
</Menge_Melder>
</ADT_GEKID>
'), 1, '1055555550');


INSERT INTO DWH_ROUTINE.STG_ONKOSTAR_LKR_MELDUNG_EXPORT (ID, LKR_MELDUNG, LKR_EXPORT, TYP, XML_DATEN, VERSIONSNUMMER,
                                                         REFERENZ_NUMMER)
VALUES (2, 225, 1, 1, to_clob('<?xml version="1.0" encoding="UTF-8"?>
<ADT_GEKID xmlns="http://www.gekid.de/namespace" Schema_Version="2.1.2">
    <Absender Absender_ID="UKER" Software_ID="ONKOSTAR" Installations_ID="2.9.2">
        <Absender_Bezeichnung>UKER</Absender_Bezeichnung>
        <Absender_Ansprechpartner/>
        <Absender_Anschrift>Maximiliansplatz 2, 91054 Erlangen</Absender_Anschrift>
    </Absender>
    <Menge_Patient>
        <Patient>
            <Patienten_Stammdaten Patient_ID="1055555550">
                <KrankenversichertenNr>Q00000000</KrankenversichertenNr>
                <KrankenkassenNr>10000000</KrankenkassenNr>
                <Patienten_Nachname>Doe</Patienten_Nachname>
                <Patienten_Vornamen>John</Patienten_Vornamen>
                <Patienten_Geschlecht>M</Patienten_Geschlecht>
                <Patienten_Geburtsdatum>11.09.1900</Patienten_Geburtsdatum>
                <Menge_Adresse>
                    <Adresse>
                        <Patienten_Strasse>Johnstr. 7</Patienten_Strasse>
                        <Patienten_Land>DE</Patienten_Land>
                        <Patienten_PLZ>91000</Patienten_PLZ>
                        <Patienten_Ort>Johncity</Patienten_Ort>
                    </Adresse>
                </Menge_Adresse>
            </Patienten_Stammdaten>
<Menge_Meldung>
    <Meldung Meldung_ID="FK0000225" Melder_ID="FK">
      <Meldedatum>06.05.2021</Meldedatum>
      <Meldebegruendung>I</Meldebegruendung>
      <Meldeanlass>diagnose</Meldeanlass>
      <Tumorzuordnung Tumor_ID="1">
        <Primaertumor_ICD_Code>D06.1</Primaertumor_ICD_Code>
        <Primaertumor_ICD_Version>10 2021 GM</Primaertumor_ICD_Version>
        <Diagnosedatum>12.02.2021</Diagnosedatum>
        <Seitenlokalisation>T</Seitenlokalisation>
      </Tumorzuordnung>
      <Diagnose Tumor_ID="1">
        <Primaertumor_ICD_Code>D06.1</Primaertumor_ICD_Code>
        <Primaertumor_ICD_Version>10 2021 GM</Primaertumor_ICD_Version>
        <Primaertumor_Topographie_ICD_O>C53.1</Primaertumor_Topographie_ICD_O>
        <Primaertumor_Topographie_ICD_O_Version>32</Primaertumor_Topographie_ICD_O_Version>
        <Diagnosedatum>12.02.2021</Diagnosedatum>
        <Diagnosesicherung>7</Diagnosesicherung>
        <Seitenlokalisation>T</Seitenlokalisation>
        <Menge_Histologie> ') ||
    to_clob('<Histologie Histologie_ID="2963">
            <Tumor_Histologiedatum>12.02.2021</Tumor_Histologiedatum>
            <Histologie_EinsendeNr>12103806</Histologie_EinsendeNr>
            <Morphologie_Code>8077/2</Morphologie_Code>
            <Morphologie_ICD_O_Version>32</Morphologie_ICD_O_Version>
            <Morphologie_Freitext>CIN II</Morphologie_Freitext>
            <Grading>H</Grading>
          </Histologie>
          <Histologie Histologie_ID="2968">
            <Tumor_Histologiedatum>17.03.2021</Tumor_Histologiedatum>
            <Histologie_EinsendeNr>12107294</Histologie_EinsendeNr>
            <Morphologie_Code>8077/2</Morphologie_Code>
            <Morphologie_ICD_O_Version>32</Morphologie_ICD_O_Version>
            <Morphologie_Freitext>CIN III</Morphologie_Freitext>
            <Grading>H</Grading>
          </Histologie>
        </Menge_Histologie>
        <cTNM TNM_ID="2969">
          <TNM_Datum>17.03.2021</TNM_Datum>
          <TNM_Version>8</TNM_Version>
          <TNM_c_p_u_Praefix_T>p</TNM_c_p_u_Praefix_T>
          <TNM_T>is(is)</TNM_T>
          <TNM_c_p_u_Praefix_N>c</TNM_c_p_u_Praefix_N>
          <TNM_N>0</TNM_N>
          <TNM_c_p_u_Praefix_M>c</TNM_c_p_u_Praefix_M>
          <TNM_M>0</TNM_M>
        </cTNM>
        <pTNM TNM_ID="2968">
          <TNM_Datum>17.03.2021</TNM_Datum>
          <TNM_Version>8</TNM_Version>
          <TNM_c_p_u_Praefix_T>p</TNM_c_p_u_Praefix_T>
          <TNM_T>is</TNM_T>
        </pTNM>
        <Menge_Weitere_Klassifikation>
          <Weitere_Klassifikation>
            <Datum>25.01.2021</Datum>
            <Name>UICC</Name>
            <Stadium>IIA</Stadium>
          </Weitere_Klassifikation>
        </Menge_Weitere_Klassifikation>
      </Diagnose>
    </Meldung>
  </Menge_Meldung>
  </Patient>
</Menge_Patient>
<Menge_Melder>
    <Melder Melder_ID="NC">
        <Meldende_Stelle>NC</Meldende_Stelle>
    </Melder>
</Menge_Melder>
</ADT_GEKID>
'), 2, '1055555550');

INSERT INTO DWH_ROUTINE.STG_ONKOSTAR_LKR_MELDUNG_EXPORT (ID, LKR_MELDUNG, LKR_EXPORT, TYP, XML_DATEN, VERSIONSNUMMER,
                                                         REFERENZ_NUMMER)
VALUES (3, 226, 1, 1, to_clob('<?xml version="1.0" encoding="UTF-8"?>
<ADT_GEKID xmlns="http://www.gekid.de/namespace" Schema_Version="2.1.2">
    <Absender Absender_ID="UKER" Software_ID="ONKOSTAR" Installations_ID="2.9.2">
        <Absender_Bezeichnung>UKER</Absender_Bezeichnung>
        <Absender_Ansprechpartner/>
        <Absender_Anschrift>Maximiliansplatz 2, 91054 Erlangen</Absender_Anschrift>
    </Absender>
    <Menge_Patient>
        <Patient>
            <Patienten_Stammdaten Patient_ID="1055555550">
                <KrankenversichertenNr>Q00000000</KrankenversichertenNr>
                <KrankenkassenNr>10000000</KrankenkassenNr>
                <Patienten_Nachname>Doe</Patienten_Nachname>
                <Patienten_Vornamen>John</Patienten_Vornamen>
                <Patienten_Geschlecht>M</Patienten_Geschlecht>
                <Patienten_Geburtsdatum>11.09.1900</Patienten_Geburtsdatum>
                <Menge_Adresse>
                    <Adresse>
                        <Patienten_Strasse>Johnstr. 7</Patienten_Strasse>
                        <Patienten_Land>DE</Patienten_Land>
                        <Patienten_PLZ>91000</Patienten_PLZ>
                        <Patienten_Ort>Johncity</Patienten_Ort>
                    </Adresse>
                </Menge_Adresse>
            </Patienten_Stammdaten>
<Menge_Meldung>
<Meldung Meldung_ID="FK0000226" Melder_ID="FK">
    <Meldedatum>02.05.2021</Meldedatum>
    <Meldebegruendung>I</Meldebegruendung>
    <Meldeanlass>behandlungsende</Meldeanlass>
    <Tumorzuordnung Tumor_ID="1">
      <Primaertumor_ICD_Code>D06.1</Primaertumor_ICD_Code>
      <Primaertumor_ICD_Version>10 2021 GM</Primaertumor_ICD_Version>
      <Diagnosedatum>12.02.2021</Diagnosedatum>
      <Seitenlokalisation>T</Seitenlokalisation>
    </Tumorzuordnung>
    <Menge_OP>
      <OP OP_ID="2965">
        <OP_Intention>K</OP_Intention>
        <OP_Datum>17.03.2021</OP_Datum>
        <Menge_OPS>
          <OP_OPS>1-472.0</OP_OPS>
          <OP_OPS>5-671.01</OP_OPS>
        </Menge_OPS>
        <OP_OPS_Version>2021</OP_OPS_Version> ') ||
          to_clob(' <Histologie Histologie_ID="2968">
          <Tumor_Histologiedatum>17.03.2021</Tumor_Histologiedatum>
          <Histologie_EinsendeNr>12107294</Histologie_EinsendeNr>
          <Morphologie_Code>9999/9</Morphologie_Code>
          <Morphologie_ICD_O_Version>32</Morphologie_ICD_O_Version>
          <Morphologie_Freitext>CIN III</Morphologie_Freitext>
          <Grading>H</Grading>
        </Histologie>
        <TNM TNM_ID="2968">
          <TNM_Datum>17.03.2021</TNM_Datum>
          <TNM_Version>8</TNM_Version>
          <TNM_c_p_u_Praefix_T>p</TNM_c_p_u_Praefix_T>
          <TNM_T>is</TNM_T>
          <TNM_c_p_u_Praefix_N>c</TNM_c_p_u_Praefix_N>
          <TNM_N>0</TNM_N>
          <TNM_c_p_u_Praefix_M>c</TNM_c_p_u_Praefix_M>
          <TNM_M>0</TNM_M>
        </TNM>
        <Residualstatus>
          <Lokale_Beurteilung_Residualstatus>R1</Lokale_Beurteilung_Residualstatus>
          <Gesamtbeurteilung_Residualstatus>R1</Gesamtbeurteilung_Residualstatus>
        </Residualstatus>
        <Menge_Komplikation>
          <OP_Komplikation>N</OP_Komplikation>
        </Menge_Komplikation>
        <Menge_Operateur>
          <Name_Operateur>Schulmeyer, Carla</Name_Operateur>
        </Menge_Operateur>
      </OP>
    </Menge_OP>
  </Meldung>
</Menge_Meldung>
</Patient>
</Menge_Patient>
<Menge_Melder>
    <Melder Melder_ID="NC">
        <Meldende_Stelle>NC</Meldende_Stelle>
    </Melder>
</Menge_Melder>
</ADT_GEKID>
'), 1, '1055555550');


INSERT INTO DWH_ROUTINE.STG_ONKOSTAR_LKR_MELDUNG_EXPORT (ID, LKR_MELDUNG, LKR_EXPORT, TYP, XML_DATEN, VERSIONSNUMMER,
                                                         REFERENZ_NUMMER)
VALUES (4, 226, 1, 1, to_clob('<?xml version="1.0" encoding="UTF-8"?>
<ADT_GEKID xmlns="http://www.gekid.de/namespace" Schema_Version="2.1.2">
    <Absender Absender_ID="UKER" Software_ID="ONKOSTAR" Installations_ID="2.9.2">
        <Absender_Bezeichnung>UKER</Absender_Bezeichnung>
        <Absender_Ansprechpartner/>
        <Absender_Anschrift>Maximiliansplatz 2, 91054 Erlangen</Absender_Anschrift>
    </Absender>
    <Menge_Patient>
        <Patient>
            <Patienten_Stammdaten Patient_ID="1055555550">
                <KrankenversichertenNr>Q00000000</KrankenversichertenNr>
                <KrankenkassenNr>10000000</KrankenkassenNr>
                <Patienten_Nachname>Doe</Patienten_Nachname>
                <Patienten_Vornamen>John</Patienten_Vornamen>
                <Patienten_Geschlecht>M</Patienten_Geschlecht>
                <Patienten_Geburtsdatum>11.09.1900</Patienten_Geburtsdatum>
                <Menge_Adresse>
                    <Adresse>
                        <Patienten_Strasse>Johnstr. 7</Patienten_Strasse>
                        <Patienten_Land>DE</Patienten_Land>
                        <Patienten_PLZ>91000</Patienten_PLZ>
                        <Patienten_Ort>Johncity</Patienten_Ort>
                    </Adresse>
                </Menge_Adresse>
            </Patienten_Stammdaten>
<Menge_Meldung>
<Meldung Meldung_ID="FK0000226" Melder_ID="FK">
    <Meldedatum>06.05.2021</Meldedatum>
    <Meldebegruendung>I</Meldebegruendung>
    <Meldeanlass>behandlungsende</Meldeanlass>
    <Tumorzuordnung Tumor_ID="1">
      <Primaertumor_ICD_Code>D06.1</Primaertumor_ICD_Code>
      <Primaertumor_ICD_Version>10 2021 GM</Primaertumor_ICD_Version>
      <Diagnosedatum>12.02.2021</Diagnosedatum>
      <Seitenlokalisation>T</Seitenlokalisation>
    </Tumorzuordnung>
    <Menge_OP>
      <OP OP_ID="2965">
        <OP_Intention>K</OP_Intention>
        <OP_Datum>17.03.2021</OP_Datum>
        <Menge_OPS>
          <OP_OPS>1-472.0</OP_OPS>
          <OP_OPS>5-671.01</OP_OPS>
        </Menge_OPS>
        <OP_OPS_Version>2021</OP_OPS_Version> ') ||
          to_clob('<Histologie Histologie_ID="2968">
          <Tumor_Histologiedatum>17.03.2021</Tumor_Histologiedatum>
          <Histologie_EinsendeNr>12107294</Histologie_EinsendeNr>
          <Morphologie_Code>8077/2</Morphologie_Code>
          <Morphologie_ICD_O_Version>32</Morphologie_ICD_O_Version>
          <Morphologie_Freitext>CIN III</Morphologie_Freitext>
          <Grading>H</Grading>
        </Histologie>
        <TNM TNM_ID="2968">
          <TNM_Datum>17.03.2021</TNM_Datum>
          <TNM_Version>8</TNM_Version>
          <TNM_c_p_u_Praefix_T>p</TNM_c_p_u_Praefix_T>
          <TNM_T>is</TNM_T>
          <TNM_c_p_u_Praefix_N>c</TNM_c_p_u_Praefix_N>
          <TNM_N>0</TNM_N>
          <TNM_c_p_u_Praefix_M>c</TNM_c_p_u_Praefix_M>
          <TNM_M>0</TNM_M>
        </TNM>
        <Residualstatus>
          <Lokale_Beurteilung_Residualstatus>R1</Lokale_Beurteilung_Residualstatus>
          <Gesamtbeurteilung_Residualstatus>R1</Gesamtbeurteilung_Residualstatus>
        </Residualstatus>
        <Menge_Komplikation>
          <OP_Komplikation>N</OP_Komplikation>
        </Menge_Komplikation>
        <Menge_Operateur>
          <Name_Operateur>Schulmeyer, Carla</Name_Operateur>
        </Menge_Operateur>
      </OP>
    </Menge_OP>
  </Meldung>
</Menge_Meldung>
</Patient>
</Menge_Patient>
<Menge_Melder>
    <Melder Melder_ID="NC">
        <Meldende_Stelle>NC</Meldende_Stelle>
    </Melder>
</Menge_Melder>
</ADT_GEKID>'), 2, '1055555550');






INSERT INTO DWH_ROUTINE.STG_ONKOSTAR_LKR_MELDUNG_EXPORT (ID, LKR_MELDUNG, LKR_EXPORT, TYP, XML_DATEN, VERSIONSNUMMER,
                                                         REFERENZ_NUMMER)
VALUES (5, 232, 1, 1, to_clob('<?xml version="1.0" encoding="UTF-8"?>
<ADT_GEKID xmlns="http://www.gekid.de/namespace" Schema_Version="2.1.2">
    <Absender Absender_ID="UKER" Software_ID="ONKOSTAR" Installations_ID="2.9.2">
        <Absender_Bezeichnung>UKER</Absender_Bezeichnung>
        <Absender_Ansprechpartner/>
        <Absender_Anschrift>Maximiliansplatz 2, 91054 Erlangen</Absender_Anschrift>
    </Absender>
    <Menge_Patient>
        <Patient>
            <Patienten_Stammdaten Patient_ID="1055555550">
                <KrankenversichertenNr>Q00000000</KrankenversichertenNr>
                <KrankenkassenNr>10000000</KrankenkassenNr>
                <Patienten_Nachname>Doe</Patienten_Nachname>
                <Patienten_Vornamen>John</Patienten_Vornamen>
                <Patienten_Geschlecht>M</Patienten_Geschlecht>
                <Patienten_Geburtsdatum>11.09.1900</Patienten_Geburtsdatum>
                <Menge_Adresse>
                    <Adresse>
                        <Patienten_Strasse>Johnstr. 7</Patienten_Strasse>
                        <Patienten_Land>DE</Patienten_Land>
                        <Patienten_PLZ>91000</Patienten_PLZ>
                        <Patienten_Ort>Johncity</Patienten_Ort>
                    </Adresse>
                </Menge_Adresse>
            </Patienten_Stammdaten>
<Menge_Meldung>
<Meldung Meldung_ID="FK0000232" Melder_ID="FK">
    <Meldedatum>06.05.2021</Meldedatum>
    <Meldebegruendung>I</Meldebegruendung>
    <Meldeanlass>statusaenderung</Meldeanlass>
    <Tumorzuordnung Tumor_ID="1">
      <Primaertumor_ICD_Code>D06.9</Primaertumor_ICD_Code>
      <Primaertumor_ICD_Version>10 2017 GM</Primaertumor_ICD_Version>
      <Diagnosedatum>00.12.2017</Diagnosedatum>
      <Seitenlokalisation>T</Seitenlokalisation>
    </Tumorzuordnung> ') ||
          to_clob('<Menge_Verlauf>
      <Verlauf Verlauf_ID="3003">
        <Histologie Histologie_ID="3011">
          <Tumor_Histologiedatum>29.03.2021</Tumor_Histologiedatum>
          <Histologie_EinsendeNr>12108607</Histologie_EinsendeNr>
          <Morphologie_Code>8077/2</Morphologie_Code>
          <Morphologie_ICD_O_Version>32</Morphologie_ICD_O_Version>
          <Morphologie_Freitext>CIN III</Morphologie_Freitext>
          <Grading>H</Grading>
        </Histologie>
        <TNM TNM_ID="3004">
          <TNM_Datum>19.02.2021</TNM_Datum>
          <TNM_Version>8</TNM_Version>
          <TNM_r_Symbol>r</TNM_r_Symbol>
          <TNM_c_p_u_Praefix_T>p</TNM_c_p_u_Praefix_T>
          <TNM_T>is(is)</TNM_T>
          <TNM_c_p_u_Praefix_N>c</TNM_c_p_u_Praefix_N>
          <TNM_N>0</TNM_N>
          <TNM_c_p_u_Praefix_M>c</TNM_c_p_u_Praefix_M>
          <TNM_M>0</TNM_M>
        </TNM>
        <Untersuchungsdatum_Verlauf>19.02.2021</Untersuchungsdatum_Verlauf>
        <Gesamtbeurteilung_Tumorstatus>P</Gesamtbeurteilung_Tumorstatus>
        <Verlauf_Lokaler_Tumorstatus>R</Verlauf_Lokaler_Tumorstatus>
        <Verlauf_Tumorstatus_Lymphknoten>K</Verlauf_Tumorstatus_Lymphknoten>
        <Verlauf_Tumorstatus_Fernmetastasen>K</Verlauf_Tumorstatus_Fernmetastasen>
      </Verlauf>
    </Menge_Verlauf>
  </Meldung>
</Menge_Meldung>
</Patient>
</Menge_Patient>
<Menge_Melder>
  <Melder Melder_ID="NC">
      <Meldende_Stelle>NC</Meldende_Stelle>
  </Melder>
</Menge_Melder>
</ADT_GEKID>'), 1, '1055555550');




INSERT INTO DWH_ROUTINE.STG_ONKOSTAR_LKR_MELDUNG_EXPORT (ID, LKR_MELDUNG, LKR_EXPORT, TYP, XML_DATEN, VERSIONSNUMMER,
                                                         REFERENZ_NUMMER)
VALUES (6, 2278, 1, -1, to_clob('<?xml version="1.0" encoding="UTF-8"?>
<ADT_GEKID xmlns="http://www.gekid.de/namespace" Schema_Version="2.2.1">
    <Absender Absender_ID="UKER_ONKOSTAR" Software_ID="ONKOSTAR" Installations_ID="2.9.6">
        <Absender_Bezeichnung>UKER</Absender_Bezeichnung>
        <Absender_Ansprechpartner/>
        <Absender_Anschrift>Maximiliansplatz 2, 91054 Erlangen</Absender_Anschrift>
    </Absender>
    <Menge_Patient>
        <Patient>
            <Patienten_Stammdaten Patient_ID="1055555550">
                <KrankenversichertenNr>Q00000000</KrankenversichertenNr>
                <KrankenkassenNr>10000000</KrankenkassenNr>
                <Patienten_Nachname>Doe</Patienten_Nachname>
                <Patienten_Vornamen>John</Patienten_Vornamen>
                <Patienten_Geschlecht>M</Patienten_Geschlecht>
                <Patienten_Geburtsdatum>11.09.1900</Patienten_Geburtsdatum>
                <Menge_Adresse>
                    <Adresse>
                        <Patienten_Strasse>Johnstr 7</Patienten_Strasse>
                        <Patienten_Land>DE</Patienten_Land>
                        <Patienten_PLZ>91000</Patienten_PLZ>
                        <Patienten_Ort>Johncity</Patienten_Ort>
                    </Adresse>
                </Menge_Adresse>
            </Patienten_Stammdaten>
            <Menge_Meldung>
                <Meldung Meldung_ID="NC0000456" Melder_ID="NC">
                    <Meldedatum>20.05.2021</Meldedatum>
                    <Meldebegruendung>I</Meldebegruendung>
                    <Meldeanlass>behandlungsende</Meldeanlass>
                    <Tumorzuordnung Tumor_ID="1">
                        <Primaertumor_ICD_Code>D42.0</Primaertumor_ICD_Code>
                        <Primaertumor_ICD_Version>10 2021 GM</Primaertumor_ICD_Version>
                        <Diagnosedatum>04.01.2021</Diagnosedatum>
                        <Seitenlokalisation>T</Seitenlokalisation>
                    </Tumorzuordnung>') ||
          to_clob('<Menge_OP>
                        <OP OP_ID="741">
                            <OP_Intention>K</OP_Intention>
                            <OP_Datum>04.01.2021</OP_Datum>
                            <Menge_OPS>
                                <OP_OPS>5-015.4</OP_OPS>
                                <OP_OPS>5-852.g0</OP_OPS>
                                <OP_OPS>5-930.00</OP_OPS>
                                <OP_OPS>5-930.4</OP_OPS>
                                <OP_OPS>5-021.0</OP_OPS>
                                <OP_OPS>5-984</OP_OPS>
                                <OP_OPS>5-010.01</OP_OPS>
                                <OP_OPS>5-988.0</OP_OPS>
                            </Menge_OPS>
                            <OP_OPS_Version>2021</OP_OPS_Version>
                            <Histologie Histologie_ID="734">
                                <Tumor_Histologiedatum>04.01.2021</Tumor_Histologiedatum>
                                <Histologie_EinsendeNr>N 3/21</Histologie_EinsendeNr>
                                <Morphologie_Code>9539/1</Morphologie_Code>
                                <Morphologie_ICD_O_Version>32</Morphologie_ICD_O_Version>
                                <Grading>T</Grading>
                            </Histologie>
                            <Residualstatus>
                                <Lokale_Beurteilung_Residualstatus>R0</Lokale_Beurteilung_Residualstatus>
                                <Gesamtbeurteilung_Residualstatus>R0</Gesamtbeurteilung_Residualstatus>
                            </Residualstatus>
                            <Menge_Komplikation>
                                <OP_Komplikation>N</OP_Komplikation>
                            </Menge_Komplikation>
                            <Menge_Operateur>
                                <Name_Operateur>Darwin, Charles</Name_Operateur>
                            </Menge_Operateur>
                        </OP>
                    </Menge_OP>
                </Meldung>
            </Menge_Meldung>
        </Patient>
    </Menge_Patient>
    <Menge_Melder>
        <Melder Melder_ID="NC">
            <Meldende_Stelle>NC</Meldende_Stelle>
        </Melder>
    </Menge_Melder>
</ADT_GEKID>'), 0, '1055555550');





INSERT INTO DWH_ROUTINE.STG_ONKOSTAR_LKR_MELDUNG_EXPORT (ID, LKR_MELDUNG, LKR_EXPORT, TYP, XML_DATEN, VERSIONSNUMMER,
                                                         REFERENZ_NUMMER)
VALUES (7, 2112, 1, 1, to_clob('<?xml version="1.0" encoding="UTF-8"?>
<ADT_GEKID xmlns="http://www.gekid.de/namespace" Schema_Version="2.1.2">
    <Absender Absender_ID="UKER" Software_ID="ONKOSTAR" Installations_ID="2.9.2">
        <Absender_Bezeichnung>UKER</Absender_Bezeichnung>
        <Absender_Ansprechpartner/>
        <Absender_Anschrift>Maximiliansplatz 2, 91054 Erlangen</Absender_Anschrift>
    </Absender>
    <Menge_Patient>
        <Patient>
            <Patienten_Stammdaten Patient_ID="1055555550">
                <KrankenversichertenNr>Q00000000</KrankenversichertenNr>
                <KrankenkassenNr>10000000</KrankenkassenNr>
                <Patienten_Nachname>Doe</Patienten_Nachname>
                <Patienten_Vornamen>John</Patienten_Vornamen>
                <Patienten_Geschlecht>M</Patienten_Geschlecht>
                <Patienten_Geburtsdatum>11.09.1900</Patienten_Geburtsdatum>
                <Menge_Adresse>
                    <Adresse>
                        <Patienten_Strasse>Johnstr 7</Patienten_Strasse>
                        <Patienten_Land>DE</Patienten_Land>
                        <Patienten_PLZ>91000</Patienten_PLZ>
                        <Patienten_Ort>Johncity</Patienten_Ort>
                    </Adresse>
                </Menge_Adresse>
            </Patienten_Stammdaten>') ||
          to_clob('<Menge_Meldung>
                <Meldung Meldung_ID="9999990014747" Melder_ID="999999">
                    <Meldedatum>06.05.2021</Meldedatum>
                    <Meldebegruendung>I</Meldebegruendung>
                    <Meldeanlass>diagnose</Meldeanlass>
                    <Tumorzuordnung Tumor_ID="1">
                        <Primaertumor_ICD_Code>D42.0</Primaertumor_ICD_Code>
                        <Primaertumor_ICD_Version>10 2021 GM</Primaertumor_ICD_Version>
                        <Diagnosedatum>04.01.2021</Diagnosedatum>
                        <Seitenlokalisation>T</Seitenlokalisation>
                    </Tumorzuordnung>
                    <Diagnose Tumor_ID="1">
                        <Primaertumor_ICD_Code>D42.0</Primaertumor_ICD_Code>
                        <Primaertumor_ICD_Version>10 2021 GM</Primaertumor_ICD_Version>
                        <Primaertumor_Topographie_ICD_O>C70.9</Primaertumor_Topographie_ICD_O>
                        <Primaertumor_Topographie_ICD_O_Version>32</Primaertumor_Topographie_ICD_O_Version>
                        <Diagnosedatum>04.01.2021</Diagnosedatum>
                        <Diagnosesicherung>7</Diagnosesicherung>
                        <Seitenlokalisation>T</Seitenlokalisation>
                        <Menge_Histologie>
                            <Histologie Histologie_ID="734">
                                <Tumor_Histologiedatum>04.01.2021</Tumor_Histologiedatum>
                                <Histologie_EinsendeNr>N 3/21</Histologie_EinsendeNr>
                                <Morphologie_Code>9539/1</Morphologie_Code>
                                <Morphologie_ICD_O_Version>32</Morphologie_ICD_O_Version>
                                <Grading>T</Grading>
                            </Histologie>
                        </Menge_Histologie>
                        <Menge_Weitere_Klassifikation>
                            <Weitere_Klassifikation>
                                <Datum>04.01.2021</Datum>
                                <Name>WHO-2016</Name>
                                <Stadium>II</Stadium>
                            </Weitere_Klassifikation>
                        </Menge_Weitere_Klassifikation>
                    </Diagnose>
                </Meldung>
            </Menge_Meldung>
        </Patient>
    </Menge_Patient>
    <Menge_Melder>
        <Melder Melder_ID="NC">
            <Meldende_Stelle>NC</Meldende_Stelle>
        </Melder>
    </Menge_Melder>
</ADT_GEKID>'), 1, '1055555550');
