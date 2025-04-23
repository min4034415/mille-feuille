var hiya = "Reprehenderit laborum elit elit proident culpa."
let reduced = hiya.reduce("") { $0 + ($0.isEmpty ? "" : "-") + String($1) }
print(reduced)
