
# Define source and destination paths
$source = "\\local\...\softwareFolder"
$destination = "S:\softwareFolder"

try {
    # Check if source exists
    if (Test-Path $source) {
        # Check if destination already exists
        if (Test-Path $destination) {
            Write-Host "Error : Destination folder already exists: $destination"
        } else {
            # Copy folder and contents
            Copy-Item -Path $source -Destination $destination -Recurse -Force
            Write-Host "OK : Folder copied successfully from $source to $destination"
        }
    } else {
        Write-Host "Error :  Source folder does not exist: $source"
    }
}
catch {
    Write-Host "Error : An error occurred: $($_.Exception.Message)"
}
