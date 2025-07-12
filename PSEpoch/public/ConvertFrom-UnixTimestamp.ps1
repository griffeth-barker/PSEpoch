function ConvertFrom-UnixTimestamp {
    <#
    .SYNOPSIS
        Converts a Unix timestamp to a DateTime object.
    .DESCRIPTION
        Converts a Unix timestamp to a DateTime object.
    .PARAMETER Milliseconds
        The Unix timestamp to convert.
    .INPUTS
        String
    .OUTPUTS
        DateTime
    .EXAMPLE
        ConvertFrom-UnixTimestamp -Milliseconds 1747927975516
        # Converts the Unix timestamp to a DateTime object.
        # Example output:
        #   Thursday, May 22, 2025 8:32:55 AM
    #>

    param(
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        [string]$Milliseconds
    )

    begin {}

    process {
        $output = ( [DateTime]::UnixEpoch ).AddMilliseconds( $Milliseconds ).ToLocalTime()
        Write-Output $output
    }

    end {}
}