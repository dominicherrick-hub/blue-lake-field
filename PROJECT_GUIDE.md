# Blue Lake KICK — Project Guide
*Last updated: June 10, 2026*

---

## What Is This System?

Blue Lake KICK is a set of web-based tools built for Blue Lake Services field operations and marketing. Think of it as a custom app suite that lives on the internet and runs on any phone, tablet, or computer — no installation required.

There are three core pieces working together:

| Piece | What It Does | Who Makes It |
|---|---|---|
| **GitHub** | Stores all the code files (like a Google Drive for code) | Microsoft/GitHub |
| **Netlify** | Puts the code on the internet so anyone can visit it | Netlify |
| **Supabase** | Stores all the data (prospect names, addresses, job notes, etc.) | Supabase |

**Simple version:** GitHub holds the files → Netlify shows them as a website → Supabase stores everything the app saves.

---

## Accounts & Logins

> ⚠️ **Security note:** Passwords are not stored here. Use a password manager. The email below is the account email for all services.

| Service | Login Email | Username / Account Name | URL |
|---|---|---|---|
| **GitHub** | dominic.herrick@gmail.com | `dominicherrick-hub` | github.com |
| **Netlify** | dominic.herrick@gmail.com | Blue Lake Services team | app.netlify.com |
| **Supabase** | dominic.herrick@gmail.com | *(project: mkrygrgdyjsvnifypxkm)* | supabase.com |

---

## The Live Website

The app is live at:

**https://courageous-kashata-01acaa.netlify.app**

- This is the address you open on your phone in the field
- It automatically updates within ~30 seconds whenever a file is changed on GitHub
- `index.html` is the file that loads when you visit this address

---

## What Files Exist and What They Do

All files live in two places: your local computer folder **and** on GitHub at `github.com/dominicherrick-hub/blue-lake-field`.

| File | What It Is |
|---|---|
| `index.html` | **The main field app** — this is what loads at the live URL. Same as BlueLake_FieldCRM.html. |
| `BlueLake_FieldCRM.html` | Mobile field CRM: prospect list, GPS nearby, doorstep HUD, field coach card |
| `BlueLake_CRM.html` | Desktop CRM for office use |
| `BlueLake_BusinessCard.html` | Digital business card |
| `annual_plan_system.html` | Annual planning and goal tracking tool |
| `crm_template_v2.html` | Earlier CRM template (kept for reference) |
| `direct_mail_postcard.html` | Postcard designer for direct mail campaigns |
| `gbp_optimization_checklist.html` | Google Business Profile optimization checklist |
| `marketing_operations_guide.html` | Marketing operations reference guide |
| `property_report.html` | Property report generator |
| `github_setup.py` | Python script used to upload files to GitHub (run this to push updates) |
| `PROJECT_GUIDE.md` | This document |

**Local folder on Chris's computer:**
`C:\Users\domin\Documents\Claude\Projects\Blue Lake KICK Automation System\`

---

## How the Data Works (Supabase)

Supabase is the database behind the app. It stores:
- All prospect and client records (name, address, phone, email, notes)
- Property data (square footage, year built, estimated value, roof age)
- Job stages (Lead → Prospect → Estimate → Active → Won/Lost)
- Job values and visit history

The app connects to Supabase automatically when you log in. Your login for the app itself (the field app at the Netlify URL) uses Supabase authentication — same email.

**Supabase project URL:** `https://mkrygrgdyjsvnifypxkm.supabase.co`

---

## How to Update the Live Site

When you want to change something in the app:

1. **Edit the file** in your local folder (`index.html` or whichever file you're changing) — Claude can do this for you
2. **Run `github_setup.py`** — double-click it or right-click → "Open with Python"
   - This uploads the changed files to GitHub
   - Netlify detects the change automatically
3. **Wait ~30 seconds**, then hard-refresh the site on your phone (hold the refresh button → "Hard Reload")

That's it. No passwords needed for this step — the script handles it automatically.

---

## Who Built This / How to Get Help

This system was built using Claude (Anthropic's AI) inside the **Cowork** app on Claude's desktop application. To make changes or additions:

1. Open the Claude desktop app
2. Open the **Blue Lake KICK Automation System** project
3. Describe what you want changed in plain English

Claude has memory of this project and all previous decisions, so new sessions pick up where the last one left off.

---

## Quick Reference Card

| Question | Answer |
|---|---|
| What's the live app URL? | https://courageous-kashata-01acaa.netlify.app |
| Where is the code stored online? | github.com/dominicherrick-hub/blue-lake-field |
| What email is used for all accounts? | dominic.herrick@gmail.com |
| How do I push an update live? | Run `github_setup.py`, wait 30 seconds |
| Where is the local project folder? | `C:\Users\domin\Documents\Claude\Projects\Blue Lake KICK Automation System\` |
| What file loads when I open the app? | `index.html` |
