function ConvertTo-UnixTimestamp {
    <#
    .SYNOPSIS
        Converts a DateTime object to a Unix timestamp.
    .DESCRIPTION
        Converts a DateTime object to a Unix timestamp.
    .PARAMETER DateTime
        The DateTime object to convert.
    .INPUTS
        DateTime
    .OUTPUTS
        String
    .EXAMPLE
        ConvertTo-UnixTimestamp -DateTime (Get-Date)
        # Converts the DateTime object for today's date to a Unix timestamp.
        # Example output:
        #   1752252878823
    #>
    
    param(
        [Parameter(Mandatory = $true, ValueFromPipeline = $true)]
        [DateTime]$DateTime
    )

    begin {}

    process {
        $output = [math]::Round( ($DateTime.ToUniversalTime() - [DateTime]::UnixEpoch).TotalMilliseconds )
        Write-Output $output
    }

    end {}
}