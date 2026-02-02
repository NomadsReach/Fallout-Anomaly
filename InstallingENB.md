# Root Builder — ENB Installation Guide (READ THIS)

> [!IMPORTANT]
> This modlist uses **Root Builder**. All ENBs **MUST** be installed using a `Root` folder structure.
> Installing ENBs incorrectly **will cause your ENB to not work**.

---

## ⚠️ HARD RULES (NO EXCEPTIONS)

* ENBs **MUST** be installed inside a `Root` folder.
* It is **SAFE** to overwrite **Fallout Anomaly ENB**.
* **NEVER** overwrite or use a custom `enblocal.ini`. This file has already been fine tuned for Anomaly. Please just leave it alone.
* **DO NOT** overwrite **Fallout Anomaly Core ENB DLL and Memory Mgmt**.
* **DO NOT** install ENBs directly into the Fallout 4 game directory.

---

## 📂 REQUIRED FOLDER STRUCTURE

Your ENB mod in MO2 **MUST** look like this:

```text
Your ENB Mod
├─ meta.ini
└─ Root
   ├─ enbseries/
   └─ enbseries.ini
