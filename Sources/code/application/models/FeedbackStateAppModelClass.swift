

import Foundation
public extension ApplicationClient {
    /*
         Model: FeedbackState
         Used By: Feedback
     */
    class FeedbackState: Codable {
        public var active: Bool?

        public var archive: Bool?

        public var media: String?

        public var qna: Bool?

        public var rating: Bool?

        public var review: Bool?

        public enum CodingKeys: String, CodingKey {
            case active

            case archive

            case media

            case qna

            case rating

            case review
        }

        public init(active: Bool? = nil, archive: Bool? = nil, media: String? = nil, qna: Bool? = nil, rating: Bool? = nil, review: Bool? = nil) {
            self.active = active

            self.archive = archive

            self.media = media

            self.qna = qna

            self.rating = rating

            self.review = review
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                active = try container.decode(Bool.self, forKey: .active)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                archive = try container.decode(Bool.self, forKey: .archive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                media = try container.decode(String.self, forKey: .media)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                qna = try container.decode(Bool.self, forKey: .qna)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                rating = try container.decode(Bool.self, forKey: .rating)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                review = try container.decode(Bool.self, forKey: .review)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(active, forKey: .active)

            try? container.encodeIfPresent(archive, forKey: .archive)

            try? container.encodeIfPresent(media, forKey: .media)

            try? container.encodeIfPresent(qna, forKey: .qna)

            try? container.encodeIfPresent(rating, forKey: .rating)

            try? container.encodeIfPresent(review, forKey: .review)
        }
    }
}
