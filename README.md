# CSUN Syllabus Templates

This repository contains syllabus templates for California State University, Northridge (CSUN) faculty members, designed to meet all Faculty Senate[^1] requirements.

## Two Ways to Use These Templates

### Option 1: Direct Download (Recommended for Most Users)
For faculty who just want to use the templates:

1. Click one of these download links:
   - 📝 [Traditional Long Template](csun-syllabus-template.docx?raw=true) - Full format with table of contents
   - 📄 [Traditional Short Template](csun-syllabus-template-notoc.docx?raw=true) - Concise format with two-column tables
   - 💻 [Online/Hybrid Long Template](csun-online-syllabus-template.docx?raw=true) - Full online/hybrid format with TOC
   - 🔄 [Online/Hybrid Short Template](csun-online-syllabus-template-notoc.docx?raw=true) - Concise online/hybrid with two-column tables

2. Open in Microsoft Word and fill in your course information

That's it! No technical setup required.

### Option 2: Build from Source
For developers or users who want to customize the template generation:

```bash
# 1. Clone this repository
git clone https://github.com/drfurtado/csun-syllabus-template.git

# 2. Install requirements
pip install -r requirements.txt

# 3. Run the build script
./build.sh  # (or .\build.sh on Windows)
```

See [Developer Guide](#for-developers-build-from-source) below for detailed instructions.

## For Developers (Build from Source)

If you want to customize the templates or contribute to their development:

### Prerequisites
- Git
- Python 3.7+ with pip
- [Quarto](https://quarto.org/docs/get-started/)
- Microsoft Word (for viewing/editing final templates)

### Building from Source

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/your-org/kincsun-templates.git
   cd kincsun-templates
   ```

2. **Install Dependencies:**
   ```bash
   pip install -r requirements.txt
   ```

3. **Build Templates:**
   ```bash
   # On Unix/macOS:
   chmod +x build.sh
   ./build.sh
   
   # On Windows:
   # Run in PowerShell as Administrator:
   Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope Process
   .\build.sh
   ```

The build script will:
- Create a reference document with CSUN styles
- Generate all template variations using Quarto
- Place output files in the current directory

## Available Templates

1. **Traditional Long Template** ([Download](csun-syllabus-template.docx))
   - Full format with table of contents and section numbering
   - Detailed sections with single-column tables
   - Comprehensive sections for traditional course delivery
   - Meets all Faculty Senate requirements

2. **Traditional Short Template** ([Download](csun-syllabus-template-notoc.docx))
   - Concise format with two-column tables
   - No table of contents or section numbering
   - Same comprehensive content in a more compact layout
   - Ideal for shorter syllabi or when a simpler format is preferred

3. **Online/Hybrid Long Template** ([Download](csun-online-syllabus-template.docx))
   - Full format with table of contents for online/hybrid courses
   - Enhanced technology and virtual participation requirements
   - Detailed online communication guidelines
   - Virtual office hours and technical support information

4. **Online/Hybrid Short Template** ([Download](csun-online-syllabus-template-notoc.docx))
   - Concise two-column format for online/hybrid courses
   - Streamlined layout without table of contents
   - Clear virtual learning requirements and expectations
   - Essential online/hybrid course components in compact form

## Features

- Official CSUN branding and colors
- Consistent formatting using Arial font
- Pre-formatted sections for all required syllabus components
- Technology requirements and communication guidelines
- Easy-to-fill template fields in [brackets]
- Accessible format following CSUN guidelines

## How to Use

1. Choose and download the appropriate template for your course modality:
   - Use the standard template for traditional in-person courses
   - Use the streamlined template for shorter syllabi
   - Use the online/hybrid template for remote or blended courses
   - Use the table format template for a structured, easy-to-scan layout
2. Open the .docx file in Microsoft Word
3. Replace all text in [brackets] with your course information
4. Update or remove sections as needed for your course
5. For templates with TOC, right-click the table of contents and select "Update Field" to refresh after making changes

## Source Files

The templates are generated from Quarto documents (.qmd) which allows for easy maintenance and consistent formatting. Key files include:

- `csun-syllabus-template.qmd` - The main template source
- `csun-online-syllabus-template.qmd` - Online/hybrid course template source
- `csun-syllabus-reference.docx` - Word styling reference document
- `resources/` - Official CSUN syllabus requirements and guidelines
- Python and PowerShell scripts for template generation

## Questions or Issues?

If you encounter any problems with the templates or have suggestions for improvement, please:

1. Check the resources folder for current CSUN requirements
2. Review the CONTRIBUTING.md file for guidance
3. Open an issue in this repository if needed

[^1]: For detailed syllabus requirements, visit the Faculty Senate guidelines at https://canvas.csun.edu/courses/93131/pages/syllabus