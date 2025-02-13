```mermaid
%% Download Process Flowchart
graph TD
    A[Visit CSUN Templates Website] -->|Click Download Button| B[Download .docx File]
    B --> C[Open in Microsoft Word]
    C --> D[Fill in Course Information]
    D --> E[Update Table of Contents]
    E --> F[Ready to Use!]

%% Build Process Flowchart
graph TD
    A2[Clone Repository] -->|git clone| B2[Install Dependencies]
    B2 -->|pip install| C2[Run Build Script]
    C2 -->|./build.sh| D2[Generate Reference Doc]
    D2 --> E2[Render Templates]
    E2 --> F2[Output .docx Files]

%% Compare Workflows
graph LR
    subgraph Direct Download
    A3[Download] --> B3[Edit] --> C3[Use]
    end
    subgraph Build from Source
    D3[Clone] --> E3[Build] --> F3[Customize] --> G3[Use]
    end