# Open-Source Audit: LibreOffice on Fedora 43

**Student Name:** PRIYANSHU VASHISTH </br>
**Roll Number:** 24BCE10360   </br>
**Course:** Open-Source Software  </br>
**Date:** March 2026

## Chosen Software
LibreOffice — A free and open-source office suite, developed by The Document Foundation.

## System Details
- Distribution: Fedora 43
- Kernel: $(priyanshu -r)
- LibreOffice Version: 26.2.0.3

## File Structure
GitHub Repository Structure
```bash
oss-audit-24BCE10303/
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


## Scripts Description

| Script | Purpose | Key Concepts |
|--------|---------|--------------|
| script1_system_identity.sh | System information report | Variables, command substitution |
| script2_package_inspector.sh | Check LibreOffice installation | rpm queries, case statements |
| script3_disk_auditor.sh | Directory permissions audit | For loops, arrays, permissions |
| script4_log_analyzer.sh | Log file error analysis | While read loops, grep, counters |
| script5_manifesto_generator.sh | Interactive philosophy generator | User input, file writing |

## How to Run

### Prerequisites
- Fedora 43 (or any Linux distribution with Bash)
- LibreOffice installed (`sudo dnf install libreoffice`)

### Run Scripts
```bash
# Make scripts executable
chmod +x scripts/*.sh

# Run each script
./scripts/script1_system_identity.sh
./scripts/script2_package_inspector.sh
./scripts/script3_disk_auditor.sh
./scripts/script4_log_analyzer.sh /var/log/messages
./scripts/script5_manifesto_generator.sh
```

## Dependencies
-	bash (built-in)
-	rpm (Fedora/RHEL package manager)
-	grep, awk, cut (standard Unix utilities)
  
## Notes
All scripts are tested on Fedora 43. For other distributions, adjust package manager commands.
This completes the full LibreOffice Audit project for Fedora 43. All scripts are ready to run, and the report provides comprehensive coverage of the origin story, license analysis, ethical reflections, Linux footprint, ecosystem mapping, and comparison with proprietary alternatives.


