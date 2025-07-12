# ConvertTo-UnixTimestamp

## Synopsis
Converts a DateTime object to a Unix timestamp.

## Description
Converts a DateTime object to a Unix timestamp.

## Parameters
### -DateTime
The DateTime object to convert.

**Type**: DateTime  
**Mandatory**: True  
**Position**: 1  
**Default value**: None  
**Accept pipeline input**: True (ByValue)  
**Accept wildcard characters**: False  

## Examples
### Converts the DateTime object for today's date to a Unix timestamp.
```PowerShell
ConvertTo-UnixTimestamp -DateTime (Get-Date)
```

Example output:
```
1752252878823
```

## Requirements
- PowerShell 7.0+