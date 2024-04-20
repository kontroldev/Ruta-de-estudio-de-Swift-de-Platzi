import Foundation

let ghost = "¡¡Fantasma!! 👻"

for codeunit in ghost.utf8{
    print(codeunit, terminator: " ")
}

print(" ")
for codeunit in ghost.utf16{
    print(codeunit, terminator: " ")
}



