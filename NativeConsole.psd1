@{
    # Script module or binary module file associated with this manifest.
    ModuleToProcess = 'NativeConsole.psm1'
    # Version number of this module.
    ModuleVersion = '1.0.0'
    # ID used to uniquely identify this module
    GUID = ''
    # Author of this module
    Author = 'Cameron Sowder'
    # Copyright statement for this module
    Copyright = 'MIT'
    # Description of the functionality provided by this module
    Description = 'A module to interact with native console methods'
   # Functions to export from this module
    FunctionsToExport = '*'
    # Cmdlets to export from this module
    CmdletsToExport = '*'
    # Variables to export from this module
    VariablesToExport = '*'
    # Aliases to export from this module
    AliasesToExport = '*'
    # List of all files packaged with this module
    FileList = @(
        'NativeConsole.psd1',
        'NativeConsole.psm1'
    )
}
