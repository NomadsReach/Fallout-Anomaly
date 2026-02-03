# Root Builder — ENB Installation and Reshade Guide (READ THIS)

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

<details>
<summary><b>📂 REQUIRED FOLDER STRUCTURE (Expand)</b></summary>

Your ENB mod in MO2 **MUST** look like this:

Your ENB Mod

├─ meta.ini

└─ Root

   ├─ enbseries/

   └─ enbseries.ini

</details>

---

# <details> <summary>🛠️ RESHADE INSTALLATION STEPS (Expand)</summary>

### Phase 1: The Installer

1. **Run the exe.**
2. **Select Path:** Point it to the `fallout4.exe` found in:
`mods\ReShade_Setup_\Install Stage Folder`.
3. **Confirm:** Click **OK** for single player.
4. **Select API:** Pick **DirectX 10/11/12**.
5. **Select Effects:** Click **Uncheck All**, then **Check All**, then click **Next**.
6. **Add-ons:** Click **Skip**.

### Phase 2: File Setup

1. **Open the folder:** Go into the `Install Stage Folder`.
2. **Cleanup:** Delete `Fallout4.exe`.
3. **Rename:** Change `dxgi.dll` to **`ReshadeD3D11.dll`**. (Required for the ENB to work).
4. **Move:** Copy all files from here and paste them into your main `Reshade_Setup\Root` folder.
5. **Delete:** You can now delete the empty `Install Stage Folder`.

</details>

---

## 💡 PRO TIPS

* **Preset Organization:** To make it easier for you when you install a reshade, make a new folder called "reshade ini goes here" and put your ini in there to make it easier for you to find in game in the reshade menu.

**Congrats, reshade is now installed.**
