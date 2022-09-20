

import Foundation
public extension ApplicationClient {
    /*
         Model: VoteCount
         Used By: Feedback
     */
    class VoteCount: Codable {
        public var downvote: Int?

        public var upvote: Int?

        public enum CodingKeys: String, CodingKey {
            case downvote

            case upvote
        }

        public init(downvote: Int? = nil, upvote: Int? = nil) {
            self.downvote = downvote

            self.upvote = upvote
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                downvote = try container.decode(Int.self, forKey: .downvote)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                upvote = try container.decode(Int.self, forKey: .upvote)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(downvote, forKey: .downvote)

            try? container.encodeIfPresent(upvote, forKey: .upvote)
        }
    }
}
