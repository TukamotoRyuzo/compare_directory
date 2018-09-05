
Param(
  [parameter(mandatory=$true)][string]$dir1,
  [parameter(mandatory=$true)][string]$dir2
)

echo "dir1: $dir1"
echo "dir2: $dir2"

$files1 = Get-ChildItem $dir1 -Name
$files2 = Get-ChildItem $dir2 -Name

echo "files1 = $files1"
echo "files2 = $files2"

$length1 = $files1.Length
$length2 = $files2.Length

echo "length1 = $length1"
echo "length2 = $length2"

for ($i = 0; $i -lt $length1; $i++) {
  $file1 = $dir1 + "\" + $files1[$i]
  $file2 = $dir2 + "\" + $files2[$i]
  echo "Compare $file1 $file2"
  $A = Get-Content $file1
  $B = Get-Content $file2
  Compare-Object -ReferenceObject $A -DifferenceObject $B
}
