# ConvertFrom-UnixTimestamp

## Synopsis
Converts a Unix timestamp to a DateTime object.

## Description
Converts a Unix timestamp to a DateTime object.

## Parameters
### -Milliseconds
The Unix timestamp to convert.

**Type**: String  
**Mandatory**: True  
**Position**: 1  
**Default value**: None  
**Accept pipeline input**: True (ByValue)  
**Accept wildcard characters**: False  

## Examples
### Converts the Unix timestamp to a DateTime object.
```PowerShell
ConvertFrom-UnixTimestamp -Milliseconds 1747927975516
```

Example output:
```
Thursday, May 22, 2025 8:32:55 AM
```

## Requirements
- PowerShell 7.0+