# 🚌 BusConnect

> **Suriname's #1 Schoolbus Platform** — Een webapplicatie die ouders en schoolbuschauffeurs veilig en overzichtelijk met elkaar verbindt.

---

## 👥 Het Team — The Element 3

| Studentnr. | Naam | Rol |
|---|---|---|
| 254011 | Ngaisa Basedie | Registratie, profiel & inlogpagina |
| 254012 | Shriyanie Debi-tewari | Admin panel & systeembeheer |
| 256015 | Darryl Kasandinomo | UI & Navigatie |
| 255024 | Adney Dayen | Database, SQL & meldingen |
| 256020 | Shemar Dipotaroeno | GPS, live tracker & locaties |

**School:** UNASAT — Paramaribo, Suriname
**Versie:** 1.0 | **Datum:** 29 april 2026

---

## 📋 Over het project

### Het probleem
Ouders in Suriname vinden schoolbuschauffeurs via Facebook-groepen of mond-tot-mondreclame. Er is geen centrale, betrouwbare plek. Informatie over routes, ervaring en beschikbaarheid is moeilijk te verifiëren.

### De oplossing
BusConnect is een webapplicatie waar chauffeurs zich kunnen registreren met een profiel, en ouders beschikbare chauffeurs kunnen zoeken, filteren en direct contact opnemen. Uniek: een **live GPS tracker** zodat ouders in real-time de schoolbus kunnen volgen via Google Maps.

### Doelstelling
Een betrouwbaar, centraal platform voor schoolbusvervoer in Suriname — transparant, gebruiksvriendelijk en toegankelijk voor zowel ouders als chauffeurs.

---

## 🗂️ Taakverdeling

### 👤 Ngaisa Basedie — Registratie & Profiel
| # | Taak |
|---|---|
| 1 | Chauffeurs kunnen zich registreren via een sign-in pagina |
| 2 | Verplichte profielfoto upload bij registratie |
| 3 | Chauffeurs kunnen persoonlijke gegevens invoeren en aanpassen |
| 4 | Contactinfo zichtbaar maken voor ouders |
| 5 | Route, werkervaring en rijbewijsinformatie toevoegen |
| 6 | Chauffeurs kunnen hun profiel verwijderen |

---

### 🛡️ Shriyanie Debi-tewari — Admin & Systeembeheer
| # | Taak |
|---|---|
| 1 | Admin inlogpagina |
| 2 | Chauffeurs beheren (CRUD: aanmaken, bekijken, aanpassen, verwijderen) |
| 3 | Admin ontvangt een mail bij elke nieuwe registratie |
| 4 | Chauffeurs kunnen worden verwijderd of geblokkeerd |
| 5 | Overzicht houden en database beheren |
| 6 | Routes en ritten beheren |
| 7 | Meldingen sturen naar chauffeurs |

---

### 🎨 Darryl Kasandinomo — UI & Navigatie
| # | Taak |
|---|---|
| 1 | Tabs en navigatie — Home / Over Ons / Contact / FAQ / Registreer |
| 2 | Gebruiksvriendelijk ontwerp voor ouders én chauffeurs |
| 3 | Ouders kunnen chauffeurs bekijken zónder account |
| 4 | Admin kan gegevens van ouders controleren |
| 5 | Dark mode / Light mode toggle switch |
| 6 | Responsive design — mobiel en desktop |
| 7 | Scroll-reveal animaties per sectie |
| 8 | FAQ accordion |

---

### 🗄️ Adney Dayen — Database, SQL & Meldingen
| # | Taak |
|---|---|
| 1 | MySQL database opzetten en beheren |
| 2 | Data van chauffeurs en ouders veilig opslaan in de juiste tabellen |
| 3 | SQL tabellen onderhouden |
| 4 | Chauffeurs ontvangen aanvragen van ouders |
| 5 | Bevestiging van abonnement via e-mail |
| 6 | Ouders ontvangen melding wanneer de bus is gearriveerd |
| 7 | Bevestiging van aanvraag via e-mail voor ouders |

---

### 📍 Shemar Dipotaroeno — GPS & Live Tracker
| # | Taak |
|---|---|
| 1 | GPS / live tracker implementeren |
| 2 | Chauffeur kan locatietoegang inschakelen |
| 3 | Ouders kunnen live locatie van de schoolbus bekijken |
| 4 | Ouders kunnen zoeken/filteren op route of locatie |
| 5 | Admin kan live tracker monitoren |
| 6 | Admin kan locaties bekijken |
| 7 | Mobiel en desktop toegankelijk |

---

## ⚙️ Installatie & Setup

### Vereisten (iedereen)
```bash
# 1. Node.js installeren — https://nodejs.org
node -v

# 2. Git installeren en configureren
git config --global user.name "Jouw Naam"
git config --global user.email "jouw@email.com"

# 3. MySQL installeren — https://dev.mysql.com/downloads/

# 4. Visual Studio Code + Live Server extensie installeren
```

### Project starten
```bash
# Clone de repository
git clone https://github.com/<gebruikersnaam>/busconnect.git
cd busconnect

# Installeer dependencies
npm install

# Start de server
node server.js
```

Open je browser op `http://localhost:3000`

---

## 🔀 GitHub Workflow (branches)

Elk teamlid werkt op een **eigen branch** en dient een Pull Request in zodat de teamleider kan mergen naar `main`.

```bash
# Maak jouw branch aan (eenmalig)
git checkout -b jouw-naam

# Wijzigingen opslaan en pushen
git add .
git commit -m "feat: korte beschrijving van wat je hebt gedaan"
git push origin jouw-naam
```

### Branch overzicht
| Branch | Eigenaar |
|---|---|
| `main` | Teamleider — alleen via Pull Request |
| `ngaisa-basedie` | Registratie & Profiel |
| `shriyanie-debi-tewari` | Admin & Beheer |
| `darryl-kasandinomo` | UI & Navigatie |
| `adney-dayen` | Database & Meldingen |
| `shemar-dipotaroeno` | GPS & Tracker |

---

## 📁 Bestandsstructuur

```
busconnect/
├── index.html          # Hoofdpagina (SPA)
├── main.css            # Alle styling
├── main.js             # Navigatie, dark mode, FAQ, formulieren
├── server.js           # Node.js backend
├── package.json        # Dependencies
├── buslogo.png         # Logo
├── bus.png             # Favicon / icoon
└── README.md           # Dit bestand
```

---

## 🌐 Functionele eisen — samenvatting

### Algemeen
- Gebruiksvriendelijk op mobiel én desktop
- Iedereen heeft Node.js, VS Code, Git en MySQL geïnstalleerd

### Voor chauffeurs
- Registreren, profiel aanmaken, foto uploaden
- Route en werkervaring toevoegen
- GPS inschakelen voor live tracking

### Voor ouders
- Chauffeurs bekijken zonder account
- Filteren op school, wijk en beschikbaarheid
- Live locatie van de bus volgen
- Contact opnemen en bevestiging ontvangen

### Voor de admin
- Inloggen en gebruikers beheren (CRUD)
- Meldingen sturen, routes beheren
- Live tracker monitoren

---

## 📚 Bronnen

- [GFC Nieuws Suriname — Schoolvervoer](https://www.gfcnieuws.com/schoolvervoer-blijft-een-bron-van-zorgen-in-suriname/)
- [UNASAT](https://unasat.ngineerlab.com/)
- [MorningBus](https://morningbus.com/)
- [BusWhere](https://www.buswhere.com/)
- [BusBuddy](https://busbuddy.net/)
- [W3Schools](https://www.w3schools.com)

---

*© 2026 BusConnect — The Element 3 · UNASAT · Paramaribo, Suriname 🇸🇷*
