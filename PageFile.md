Here’s a revised and polished version of your **Pagefile Configuration** guide for *Fallout Anomaly*. It keeps your structure but improves clarity, grammar, and formatting consistency:

---

##  Pagefile Configuration

If you're running *Fallout Anomaly* on a system with **16 GB of RAM or less**, setting a custom **pagefile** on the same drive as the game can dramatically improve stability and reduce crashes caused by memory limitations—especially when using large modlists.

To simplify the process, we've created an automated batch script that does it for you.

---

###  Script Information

- **VirusTotal Scan:**  
  [View Scan Results](https://www.virustotal.com/gui/file/4a1e05f67bbd7228db1fc20c624bdec7d272f86c0afcdee352227eb6d8fa97cb?nocache=1)

- **Source Code:**  
  [View on GitHub](https://github.com/NomadsReach/Fallout-Anomaly/blob/master/PageFileSourceCode/Set-Pagefile-CustomDrive.bat)

---

###  How to Use

1. **Download the script**:  
   [Click here to download](https://github.com/b325db72-a49f-4134-86e9-d54aa1b619ad)

2. **Right-click** the downloaded file and select **“Run as Administrator.”**

3. When prompted, **enter the drive letter** where *Fallout Anomaly* is installed.

4. The script will automatically calculate and apply a recommended pagefile size based on your system’s RAM.

5. **Type `Y` and press Enter** to restart your computer and apply the changes.

---

Properly configuring your pagefile helps prevent crashes and improves performance on lower-RAM systems running heavily modded builds of *Fallout Anomaly*.

---

## 🛠 Manual Instructions

If you prefer to set the pagefile manually, follow these steps:

1. Press **Windows + R** to open the Run dialog box.  
2. Type `sysdm.cpl` and press **Enter** to open **System Properties**.  
3. Go to the **Advanced** tab.  
4. Under **Performance**, click **Settings**.  
5. In the **Performance Options** window, select the **Advanced** tab.  
6. Under **Virtual Memory**, click **Change**.  
7. Uncheck **“Automatically manage paging file size for all drives.”**  
8. Select the drive where *Fallout Anomaly* is installed.  
9. Choose **Custom size**, and set both values to:
   - **Initial size (MB):** `20480` (20 GB) for 16 GB RAM  
   - **Maximum size (MB):** `20480`  
   - For 32 GB RAM, use `40960` for both fields  
10. Click **Set**, then **OK** on all windows.  
11. **Restart your computer** for changes to take effect.

---

### 💡 Why This Matters

Large modlists can push *Fallout 4* beyond its memory limits, especially on systems with 16 GB or less RAM. Setting a custom pagefile helps prevent memory-related crashes and improves overall game stability.

---

### 🖼 Visual Guide

![Step 1](https://github.com/NomadsReach/Fallout-Anomaly/assets/144523850/0615e759-be9b-485f-b5b7-c8a8e9623896)  
![Step 2](https://github.com/NomadsReach/Fallout-Anomaly/assets/144523850/6e9030cc-35db-4ecb-95a7-2dcd273ad3e5)  
![Step 3](https://github.com/NomadsReach/Fallout-Anomaly/assets/144523850/67b3680c-2982-4b8d-b159-33d939ee34b6)

---

## 🔁 **Don’t forget to reboot your PC after applying changes.**

Let me know if you want this copy exported for your GitHub or Discord formatting!
