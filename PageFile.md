## Pagefile Configuration

If you're running *Fallout Anomaly* on a system with **16 GB of RAM or less**, setting a custom **pagefile** on the same drive as the game can significantly improve stability and reduce crashes caused by memory limitations—especially when using large modlists.

To make this process easier, we've created an automated batch script that handles everything for you.

---

### Script Information

- **VirusTotal Scan:**  
  [View Scan Results](https://www.virustotal.com/gui/file/4a1e05f67bbd7228db1fc20c624bdec7d272f86c0afcdee352227eb6d8fa97cb?nocache=1)

- **Source Code:**  
  [View on GitHub](https://github.com/NomadsReach/Fallout-Anomaly/blob/master/PageFileSourceCode/Set-Pagefile-CustomDrive.bat)

---

### How to Use

1. **Download the script**:  
   [Click here to download](https://github.com/NomadsReach/Fallout-Anomaly/releases/download/Page_File/Set-Pagefile-CustomDrive.bat)

2. **Right-click** the downloaded file and select **“Run as Administrator.”**

3. When prompted, **enter the drive letter** where *Fallout Anomaly* is installed.

4. The script will automatically calculate and apply a recommended pagefile size based on your system’s RAM.

5. **Type `Y` and press Enter** to restart your computer and apply the changes.

---

Properly configuring your pagefile helps prevent crashes and improves performance, especially on systems with limited RAM running heavily modded builds of *Fallout Anomaly*.

---

## Manual Configuration Instructions

If you prefer to set the pagefile manually, follow these steps:

1. Press **Windows + R** to open the Run dialog box.  
2. Type `sysdm.cpl` and press **Enter** to open **System Properties**.  
3. Go to the **Advanced** tab.  
4. Under **Performance**, click **Settings**.  
5. In the **Performance Options** window, select the **Advanced** tab.  
6. Under **Virtual Memory**, click **Change**.  
7. Uncheck **“Automatically manage paging file size for all drives.”**  
8. Select the drive where *Fallout Anomaly* is installed.  
9. Choose **Custom size**, and set **both values the same** using the 1.5× RAM rule:

### Pagefile Size Formula

**Pagefile Size (MB) = RAM (GB) × 1024 × 1.5**

Set **both** the Initial and Maximum size to this value.

---

### Examples

#### If you have 16 GB of RAM:

1. Convert to megabytes:  
   `16 × 1024 = 16,384 MB`

2. Multiply by 1.5:  
   `16,384 × 1.5 = 24,576 MB`

**Set Initial size = 24576**  
**Set Maximum size = 24576**

---

#### If you have 32 GB of RAM:

1. Convert to megabytes:  
   `32 × 1024 = 32,768 MB`

2. Multiply by 1.5:  
   `32,768 × 1.5 = 49,152 MB`

**Set Initial size = 49152**  
**Set Maximum size = 49152**

---

10. Click **Set**, then click **OK** on all windows to apply the changes.  
11. **Restart your computer** for the settings to take effect.

---

### Why This Matters

Large modlists can push *Fallout 4* beyond its memory limits, especially on systems with 16 GB or less RAM. Setting a fixed-size custom pagefile helps avoid memory-related crashes and improves overall performance and stability.

---

### Visual Guide

![Step 1](https://github.com/NomadsReach/Fallout-Anomaly/assets/144523850/0615e759-be9b-485f-b5b7-c8a8e9623896)  
![Step 2](https://github.com/NomadsReach/Fallout-Anomaly/assets/144523850/6e9030cc-35db-4ecb-95a7-2dcd273ad3e5)  
![Step 3](https://github.com/NomadsReach/Fallout-Anomaly/assets/144523850/67b3680c-2982-4b8d-b159-33d939ee34b6)

---

## Important: Reboot your PC after applying the changes.
