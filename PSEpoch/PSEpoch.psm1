
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
Export-ModuleMember -Function *
