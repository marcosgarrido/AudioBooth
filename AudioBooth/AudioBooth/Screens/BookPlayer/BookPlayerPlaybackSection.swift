import SwiftUI

struct BookPlayerPlaybackSection: View {
  @ObservedObject var model: BookPlayer.Model

  var body: some View {
    VStack(spacing: 32) {
      PlaybackProgressView(model: $model.playbackProgress)
      BookPlayerControls(model: model)
    }
  }
}
