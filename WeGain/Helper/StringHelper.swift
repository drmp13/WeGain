import Foundation

extension String {
  func capitalizingFirstLetter() -> String {
    return prefix(1).capitalized + dropFirst()
  }

  mutating func capitalizeFirstLetter() {
    self = self.capitalizingFirstLetter()
  }

  // formatting text for currency textField
    func separateDecimal(separator:String=".") -> String {
    var parts = [String]();
    if var amount = Int(self.replacingOccurrences(of: separator, with: "")), amount > 0 {

      var part: Int

      while amount > 0 {
        part = amount % 1000
        if part < 100 && amount >= 1000 {
          let padStart = String(String("\(part)".reversed()).padding(toLength: 3, withPad: "0", startingAt: 0).reversed())
          parts.insert(padStart, at: 0)
        } else {
          parts.insert("\(part)", at: 0)
        }
        amount /= 1000
      }

      return parts.joined(separator: separator);
    } else {
      return self
    }
  }
    
    func deseparateDecimal(separator: String=".") -> String{
        return self.replacingOccurrences(of: separator, with: "")
    }
}
