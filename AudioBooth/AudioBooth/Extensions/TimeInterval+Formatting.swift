import Foundation

extension TimeInterval {
  func formatTimeRemaining() -> String {
    let formatted =
      Duration.seconds(self)
      .formatted(.units(allowed: [.hours, .minutes], width: .narrow))

    return String(
      format: String(localized: "%@ remaining"),
      formatted
    )
  }
}
