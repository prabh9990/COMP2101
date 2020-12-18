function welcome {
write-output "Welcome to planet $env:computername Overlord $env:username"
$now = get-date -format 'HH:MM tt on dddd'
write-output "It's $now."
}


function get-cpuinfo {
get-ciminstance cim_processor | 
select Name, MaxClockSpeed, CurrentClockSpeed, NumberOfCores, Manufacturer
}


function get-mydisks {

(new-object -typename psobject -property @{
 Model=(get-disk).Model;
 Manufacturer=(get-disk).Manufacturer;
 SerialNumber=(get-disk).SerialNumber;
 FirmwareVersion=(get-disk).FirmwareVersion;
 Size=(get-disk).Size;

 }) | ft

}