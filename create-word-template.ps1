$word = New-Object -ComObject Word.Application
$word.Visible = $false

$doc = $word.Documents.Add()

# Set page margins (0.5 inches)
$doc.PageSetup.TopMargin = 36    # 0.5 inches in points
$doc.PageSetup.BottomMargin = 36
$doc.PageSetup.LeftMargin = 36
$doc.PageSetup.RightMargin = 36

# Create header with logo and text
$section = $doc.Sections.Item(1)
$header = $section.Headers.Item(1)

# Add a table in the header
$headerTable = $header.Range.Tables.Add($header.Range, 1, 2)
$headerTable.Alignment = 1  # Center alignment

# Left cell: Logo
$leftCell = $headerTable.Cell(1, 1)
$leftCell.Range.InlineShapes.AddPicture("$PSScriptRoot\csun-logo-syllabi.png")
$leftCell.Range.InlineShapes.Item(1).Width = 113  # ~4cm in points

# Right cell: Course info
$rightCell = $headerTable.Cell(1, 2)
$rightCell.Range.ParagraphFormat.Alignment = 2  # Right alignment
$rightCell.Range.Font.Name = "Arial"
$rightCell.Range.Font.Size = 12
$rightCell.Range.Text = "[Course Number]`r`n[Term]"

# Make table borderless
$headerTable.Borders.Enable = $false

# Add space after header
$header.Range.ParagraphFormat.SpaceAfter = 24  # 24 points of space

# Set CSUN styles
$doc.Styles("Heading 1").Font.Name = "Arial"
$doc.Styles("Heading 1").Font.Size = 16
$doc.Styles("Heading 1").Font.Color = 13395760 # CSUN Red in RGB
$doc.Styles("Heading 1").Font.Bold = $true

$doc.Styles("Heading 2").Font.Name = "Arial"
$doc.Styles("Heading 2").Font.Size = 14
$doc.Styles("Heading 2").Font.Color = 13395760
$doc.Styles("Heading 2").Font.Bold = $true

$doc.Styles("Normal").Font.Name = "Arial"
$doc.Styles("Normal").Font.Size = 12
$doc.Styles("Normal").ParagraphFormat.LineSpacingRule = 1.5

# Modify List Paragraph style for single spacing
$listStyle = $doc.Styles("List Paragraph")
$listStyle.Font.Name = "Arial"
$listStyle.Font.Size = 12
$listStyle.ParagraphFormat.LineSpacingRule = 1.0
$listStyle.ParagraphFormat.LeftIndent = 18  # 0.25 inches in points

$bulletStyle = $doc.Styles("List Bullet")
$bulletStyle.BaseStyle = $listStyle
$bulletStyle.Font.Name = "Arial"
$bulletStyle.Font.Size = 12
$bulletStyle.ParagraphFormat.LineSpacingRule = 1.0
$bulletStyle.ParagraphFormat.LeftIndent = 18

# Add picture style
$pictureStyle = $doc.Styles.Add("Picture", 1)
$pictureStyle.ParagraphFormat.Alignment = 1  # Center alignment
$pictureStyle.ParagraphFormat.SpaceAfter = 20 # 20 points spacing after

# Get or create table style
try {
    $tableStyle = $doc.Styles("Table Grid")
} catch {
    $tableStyle = $doc.Styles.Add("Table Grid", 2)
}
$tableStyle.Font.Name = "Arial"
$tableStyle.Font.Size = 11
$tableStyle.ParagraphFormat.SpaceAfter = 6
$tableStyle.ParagraphFormat.Alignment = 0  # Left alignment

# Save the template
$doc.SaveAs("$PSScriptRoot\csun-syllabus-reference.docx")
$doc.Close()
$word.Quit()

[System.Runtime.Interopservices.Marshal]::ReleaseComObject($word)