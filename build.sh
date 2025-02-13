#!/bin/bash

# Detect OS and set appropriate commands
if [[ "$OSTYPE" == "darwin"* ]] || [[ "$OSTYPE" == "linux-gnu"* ]]; then
    PYTHON_CMD="python3"
elif [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "cygwin" ]] || [[ "$OSTYPE" == "win32" ]]; then
    PYTHON_CMD="python"
else
    echo "Unsupported operating system"
    exit 1
fi

# Verify logo exists
if [ ! -f "csun-logo-syllabi.png" ]; then
    echo "CSUN logo file (csun-logo-syllabi.png) not found"
    exit 1
fi

# Check for required tools
command -v $PYTHON_CMD >/dev/null 2>&1 || { echo "Python not found. Please install Python 3."; exit 1; }
command -v quarto >/dev/null 2>&1 || { echo "Quarto not found. Please install Quarto."; exit 1; }

# Install Python dependencies if needed
$PYTHON_CMD -m pip install -r requirements.txt || { echo "Failed to install Python dependencies"; exit 1; }

# Create reference document using appropriate method
echo "Creating reference document..."
if [[ "$OSTYPE" == "msys" ]] || [[ "$OSTYPE" == "cygwin" ]] || [[ "$OSTYPE" == "win32" ]]; then
    pwsh -File create-word-template.ps1 || { 
        echo "PowerShell script failed. Trying Python script..."
        $PYTHON_CMD create-reference-doc.py
    }
else
    $PYTHON_CMD create-reference-doc.py || { echo "Failed to create reference document"; exit 1; }
fi

# Verify reference document was created
if [ ! -f "csun-syllabus-reference.docx" ]; then
    echo "Failed to create reference document"
    exit 1
fi

# Render templates with Quarto
echo "Rendering syllabus templates..."
for template in csun-syllabus-template.qmd csun-online-syllabus-template.qmd; do
    echo "Processing $template..."
    quarto render "$template" || { echo "Failed to render $template"; exit 1; }
done

# Verify all required files exist
echo "Verifying output files and resources..."
required_files=(
    "csun-syllabus-template.docx"
    "csun-syllabus-template-notoc.docx"
    "csun-online-syllabus-template.docx"
    "csun-online-syllabus-template-notoc.docx"
    "csun-logo-syllabi.png"
    "csun-syllabus-reference.docx"
)

missing_files=0
for file in "${required_files[@]}"; do
    if [ ! -f "$file" ]; then
        echo "Missing required file: $file"
        missing_files=1
    fi
done

if [ $missing_files -eq 0 ]; then
    echo "Successfully generated all template files with resources:"
    for file in "${required_files[@]}"; do
        echo "- $file"
    done
    echo -e "\nTemplates are ready to use!"
else
    echo "Some required files are missing. Please check the errors above."
    exit 1
fi