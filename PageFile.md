## Pagefile Configuration 

If you're running *Fallout Anomaly* on a system with **16 GB of RAM or less**, setting a custom **pagefile** on the same drive as the game can significantly improve stability and reduce performance-related issues. This is especially important when using large modlists that push memory usage to its limits.

To make this easier, we've created a simple batch script that handles everything for you.

---

### Script Information:
- **VirusTotal Report:**  
  [View Scan Results](https://www.virustotal.com/gui/file/4a1e05f67bbd7228db1fc20c624bdec7d272f86c0afcdee352227eb6d8fa97cb?nocache=1)  
- **Open Source Code:**  
  [View on GitHub](https://github.com/NomadsReach/Fallout-Anomaly/blob/master/PageFileSourceCode/Set-Pagefile-CustomDrive.bat)

---

### How to Use:

1. **Download the batch file:**  
   Click here to download: [Github](https://github.com/b325db72-a49f-4134-86e9-d54aa1b619ad)

2. **Right-click the file** and select **“Run as Administrator.”**

3. When prompted, **enter the drive letter** where *Fallout Anomaly* will be installed. The script will then calculate and set the recommended pagefile size based on your system’s RAM.

4. **Type `Y` and press Enter** to restart your computer and apply the changes.

---

Properly configuring your pagefile in this way can greatly reduce the chance of memory-related crashes and improve performance when running modded builds of *Fallout Anomaly*, especially on systems with limited RAM.
