# compare_directory
ディレクトリ単位でファイル内容が同一か調べるpowershellコマンド

## 使い方
`compare_directory.ps1 [ディレクトリ1] [ディレクトリ2]`

- 例  
`compare_directory.ps1 test1 test2`
- 結果  
- 同一の場合  
```
test1\1.txt == test2\1.txt
test1\2.txt == test2\2.txt
```
- 異なる場合  
```
test1\1.txt != test2\1.txt
test1\2.txt != test2\2.txt
```
