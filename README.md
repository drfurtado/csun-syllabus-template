# CSUN Syllabus Templates

⚠️ **Note:** When opening the generated .docx files in Microsoft Word, you may see a message asking "This document contains fields that may refer to other files. Do you want to update the fields in this document?" This is normal and expected due to the table of contents. Click "Yes" to ensure all document fields are up to date.

📚 **Important:** Before using these templates, please review the content of the this [website](https://w2.csun.edu/educational-policies-committee/resources/syllabus-best-practices) which contains a collection of resources from Academic First Year Experiences and Faculty Development regarding best practices for creating a high-quality syllabus.

⚠️ **alert:** This repository was created and maintained by [Dr. Furtado](https://drfurtado.github.io/site/). If you find any discrepancy between these templates and existing published official templates from CSUN, please open an issue on this repository. I will review and update the templates as needed.

This repository contains syllabus templates for California State University, Northridge (CSUN) faculty members, designed to meet all Faculty Senate requirements.


## Two Ways to Use These Templates

### Option 1: Direct Download (Recommended for Most Users)

For faculty who just want to use the templates:

1. Click one of these download links:
   - 📝 [Traditional Course Template](csun-syllabus-template-traditional.docx?raw=true) - Comprehensive template for traditional courses
   - 💻 [Online/Hybrid Course Template](csun-syllabus-template-online_hybrid.docx?raw=true) - Comprehensive template for online/hybrid courses

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

## Overview
This repository contains Quarto templates for creating consistent CSUN course syllabi. Two main templates are provided:
1. Traditional Course Template (`csun-syllabus-template-traditional.qmd`)
2. Online/Hybrid Course Template (`csun-syllabus-template-online_hybrid.qmd`)

## Recent Updates
- Created two comprehensive templates (traditional and online/hybrid)
- Added dedicated "Online/Hybrid Specific Information" section for online/hybrid courses
- Improved grading scale presentation with a 6-column layout
- Added Learning Management System section to both templates
- Enhanced attendance policy section with specific hybrid course considerations
- Maintained consistent core content across both templates while accommodating modality-specific needs

## Template Features

### Common Elements (Both Templates)
- Course and instructor information
- Student learning outcomes
- Grading policies and scale
- University policies and resources
- Basic needs support
- Contact information exchange
- Learning Management System information

### Online/Hybrid-Specific Features
The online/hybrid template includes additional sections for:

- Technical requirements
- Virtual office hours
- Online participation requirements
- Communication guidelines
- Technical support
- Course structure (synchronous/asynchronous components)

## Usage
1. Choose the appropriate template based on your course modality
2. Fill in the bracketed sections with your course-specific information
3. Remove any sections that don't apply to your course
4. Generate the final document using Quarto

## Requirements
- Quarto
- A text editor
- Microsoft Word (for viewing the generated .docx files)

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

## Best Practices
- Keep all sections that are relevant to your course
- Update the course schedule regularly
- Include all required university policies
- Maintain clear communication guidelines
- Review and update contact information each semester

## Contributing
Feel free to suggest improvements or report issues through GitHub issues.

## License
This work is licensed under a [Creative Commons Attribution-NonCommercial 4.0 International License](https://creativecommons.org/licenses/by-nc/4.0/).

You are free to:
- Share — copy and redistribute the material in any medium or format
- Adapt — remix, transform, and build upon the material

Under the following terms:
- Attribution — You must give appropriate credit, provide a link to the license, and indicate if changes were made.
- NonCommercial — You may not use the material for commercial purposes.

![CC BY-NC 4.0](https://licensebuttons.net/l/by-nc/4.0/88x31.png)

## Questions or Issues?

If you encounter any problems with the templates or have suggestions for improvement, please:

1. Open an issue in this repository if needed