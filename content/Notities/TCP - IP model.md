#kladversie

🗂️ Onderwerp: [[Basis van netwerken]]
🎖️ Licentie: [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/)
📅 Aangemaakt: 10-06-2024

---
Het TCP / IP model is gelijkaardig aan het OSI-model in termen van gebruiken van lagen. Ze luiden als volgt:

| #   | Naam van de laag | Functie                                           | [[Netwerk protocollen]]                               | Eenheid van gegevens |
| --- | ---------------- | ------------------------------------------------- | ----------------------------------------------------- | -------------------- |
| 5   | Applicatielaag   | Interactie tussen<br>gebruikers en<br>applicaties | [[HTTP]], [[SMTP]], [[FTP]],<br>[[DNS]], Telnet, etc. | Data                 |
| 4   | Transportlaag    | (Betrouwbare)<br>end-to-end<br>communicatie       | [[TCP]], [[UDP]]                                      | [[Segment]]          |
| 3   | Netwerklaag      | Routen en<br>adressering van<br>paketten          | [[IP]], [[ICMP]], [[ARP]]                             | [[Pakket]]           |
| 2   | Datalinklaag     | Toegang tot het<br>fysieke medium                 | Ethernet, Wi-Fi, etc.<br>Mac-adres                    | [[Frame]]            |
| 1   | Fysieke laag     |                                                   | Ethernet-kabel,<br>netwerkinterface                   | [[Bits en Bytes]]    |
Het TCP / IP model is praktischer, het spiegelt de realiteit. Ze is handig wanneer je wilt te weten komen hoe data door je netwerk stroomt en hoe een netwerk praktisch data verwerkt.

# Encapsulatie
Wanneer je een mail stuurt moet de mail door alle lagen van het TCP / IP model gaan. Per laag worden er instructies toegevoegd. Dit proces voor van data naar bits en bytes over te gaan noemt men encapsulatie.

5. Applicatielaag: Ze start als ruwe data, de tekst in je mail.
4. Transportlaag: Bij het transporteren wordt er een header toegevoegd. Ze geeft info hoe men het segment moet versturen, welk protocol, … 
3. Netwerklaag: Bij de netwerklaag wordt er nog een header toegevoegd deze houdt in waar men het pakket moet versturen (IP)
2. Datalinklaag: Bij de datalinklaag worden de instructies voor het bekabelde of draadloze internet toegevoegd en worden de instructies vertaald voor de specifieke interface. 
3. Fysieke laag: De data wordt omgezet in bits en bytes.

# Decapsulatie
Wanneer die mail verstuurd is en naar de ontvanger onderweg is moet hij alweer door al die lagen gaan, enkel is dit omgekeerd. Om van bits en bytes over te gaan naar data gaan we decapsuleren.
* Volg de encapsulatie maar omgekeerd.