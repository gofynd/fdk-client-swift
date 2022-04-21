

import Foundation
public extension PlatformClient {
    /*
         Model: ReviewRequest
         Used By: Feedback
     */

    class ReviewRequest: Codable {
        public var description: String

        public var header: String

        public var imageMeta: MediaMetaRequest

        public var isVoteAllowed: Bool

        public var title: String

        public var videoMeta: MediaMetaRequest

        public enum CodingKeys: String, CodingKey {
            case description

            case header

            case imageMeta = "image_meta"

            case isVoteAllowed = "is_vote_allowed"

            case title

            case videoMeta = "video_meta"
        }

        public init(description: String, header: String, imageMeta: MediaMetaRequest, isVoteAllowed: Bool, title: String, videoMeta: MediaMetaRequest) {
            self.description = description

            self.header = header

            self.imageMeta = imageMeta

            self.isVoteAllowed = isVoteAllowed

            self.title = title

            self.videoMeta = videoMeta
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            description = try container.decode(String.self, forKey: .description)

            header = try container.decode(String.self, forKey: .header)

            imageMeta = try container.decode(MediaMetaRequest.self, forKey: .imageMeta)

            isVoteAllowed = try container.decode(Bool.self, forKey: .isVoteAllowed)

            title = try container.decode(String.self, forKey: .title)

            videoMeta = try container.decode(MediaMetaRequest.self, forKey: .videoMeta)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(header, forKey: .header)

            try? container.encodeIfPresent(imageMeta, forKey: .imageMeta)

            try? container.encodeIfPresent(isVoteAllowed, forKey: .isVoteAllowed)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(videoMeta, forKey: .videoMeta)
        }
    }
}
