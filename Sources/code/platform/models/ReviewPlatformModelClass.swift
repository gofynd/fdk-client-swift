

import Foundation
public extension PlatformClient {
    /*
         Model: Review
         Used By: Feedback
     */

    class Review: Codable {
        public var description: String?

        public var header: String?

        public var imageMeta: MediaMeta?

        public var title: String?

        public var videoMeta: MediaMeta?

        public var voteAllowed: Bool?

        public enum CodingKeys: String, CodingKey {
            case description

            case header

            case imageMeta = "image_meta"

            case title

            case videoMeta = "video_meta"

            case voteAllowed = "vote_allowed"
        }

        public init(description: String? = nil, header: String? = nil, imageMeta: MediaMeta? = nil, title: String? = nil, videoMeta: MediaMeta? = nil, voteAllowed: Bool? = nil) {
            self.description = description

            self.header = header

            self.imageMeta = imageMeta

            self.title = title

            self.videoMeta = videoMeta

            self.voteAllowed = voteAllowed
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                description = try container.decode(String.self, forKey: .description)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                header = try container.decode(String.self, forKey: .header)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                imageMeta = try container.decode(MediaMeta.self, forKey: .imageMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                videoMeta = try container.decode(MediaMeta.self, forKey: .videoMeta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                voteAllowed = try container.decode(Bool.self, forKey: .voteAllowed)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(description, forKey: .description)

            try? container.encodeIfPresent(header, forKey: .header)

            try? container.encodeIfPresent(imageMeta, forKey: .imageMeta)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(videoMeta, forKey: .videoMeta)

            try? container.encodeIfPresent(voteAllowed, forKey: .voteAllowed)
        }
    }
}
