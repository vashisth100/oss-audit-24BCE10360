# Open-Source Audit: LibreOffice (WSL - Ubuntu)

| Field         | Details                        |
|---------------|-------------------------------|
| Student Name  | Priyanshu Vashisth            |
| Roll Number   | 24BCE10360                    |
| Course        | Open-Source Software          |
| Date          | March 2026                    |

---

## Chosen Software

**LibreOffice** — A free and open-source office suite developed by [The Document Foundation](https://www.documentfoundation.org/).

---

## System Details

| Property            | Value                                      |
|---------------------|--------------------------------------------|
| Environment         | WSL (Windows Subsystem for Linux)          |
| Distribution        | Ubuntu (WSL)                               |
| Kernel              | Run `uname -r` to check                   |
| LibreOffice Version | Run `libreoffice --version` to check       |

---

## File Structure

```
oss-audit-24BCE10360/
├── README.md
├── Project_Report.pdf
├── scripts/
│   ├── script1_system_identity.sh
│   ├── script2_package_inspector.sh
│   ├── script3_disk_auditor.sh
│   ├── script4_log_analyzer.sh
│   └── script5_manifesto_generator.sh
└── screenshots/
    ├── script1_run.png
    ├── script2_run.png
    ├── script3_run.png
    ├── script4_run.png
    └── script5_run.png
```

---

## How to Run

**Step 1:** Open WSL (Ubuntu)

**Step 2:** Navigate to the scripts folder
```bash
cd /mnt/d/scripts
```

**Step 3:** Fix Windows line endings (if scripts were created on Windows)
```bash
sed -i 's/\r$//' *.sh
```

**Step 4:** Grant execute permissions
```bash
chmod +x *.sh
```

**Step 5:** Run the scripts
```bash
./script1_system_identity.sh
./script2_package_inspector.sh
./script3_disk_auditor.sh
./script4_log_analyzer.sh
./script5_manifesto_generator.sh
```

---

## LibreOffice Installation (Optional)

If LibreOffice is not already installed, run:
```bash
sudo apt update
sudo apt install libreoffice
```

---

## Dependencies

- `bash`
- `dpkg`
- `grep`, `awk`, `sed`, `cut`

---

## Notes

- All scripts are executed using **WSL Ubuntu**.
- Fedora-specific commands have been replaced with their **Ubuntu/Debian equivalents**.
- If scripts were created in Windows, run `sed -i 's/\r$//' *.sh` before executing to remove carriage returns.

---

## Conclusion

This project performs a complete audit of **LibreOffice** using shell scripting in a WSL Ubuntu environment, covering system identity, package inspection, disk usage, log analysis, and manifesto generation.

