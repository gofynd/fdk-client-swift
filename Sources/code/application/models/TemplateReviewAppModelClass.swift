import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: TemplateReview
         Used By: Feedback
     */
    class TemplateReview: Codable {
        public var description: String?

        public var header: String?

        public var imageMeta: ReviewMediaMeta?

        public var title: String?

        public var videoMeta: ReviewMediaMeta?

        public var voteAllowed: Bool?

        public enum CodingKeys: String, CodingKey {
            case description

            case header

            case imageMeta = "image_meta"

            case title

            case videoMeta = "video_meta"

            case voteAllowed = "vote_allowed"
        }

        public init(description: String?, header: String?, imageMeta: ReviewMediaMeta?, title: String?, videoMeta: ReviewMediaMeta?, voteAllowed: Bool?) {
            self.description = description

            self.header = header

            self.imageMeta = imageMeta

            self.title = title

            self.videoMeta = videoMeta

            self.voteAllowed = voteAllowed
        }

        public func duplicate() -> TemplateReview {
            let dict = self.dictionary!
            let copy = TemplateReview(dictionary: dict)!
            return copy
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
                imageMeta = try container.decode(ReviewMediaMeta.self, forKey: .imageMeta)

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
                videoMeta = try container.decode(ReviewMediaMeta.self, forKey: .videoMeta)

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
