import Combine

class PlaygroundConsole : TextOutputStream, CustomStringConvertible {
    var text = String()
    func write(_ string: String) {
        text.append(string)
    }
    var description : String { text}
}
let console = PlaygroundConsole()

// Based on https://stackoverflow.com/a/47223166
func print(_ items: Any..., separator: String = " ", terminator: String = "\n") {
    let output = items.map { "\($0)" }.joined(separator: separator)
    console.write(output + terminator)
}
