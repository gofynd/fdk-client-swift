

import Foundation

public extension PlatformClient.Partner {
    /*
         Model: CommingSoon
         Used By: Partner
     */

    class CommingSoon: Codable {
        public var isComingSoon: Bool?

        public var upvoteCount: Double?

        public enum CodingKeys: String, CodingKey {
            case isComingSoon = "is_coming_soon"

            case upvoteCount = "upvote_count"
        }

        public init(isComingSoon: Bool? = nil, upvoteCount: Double? = nil) {
            self.isComingSoon = isComingSoon

            self.upvoteCount = upvoteCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isComingSoon = try container.decode(Bool.self, forKey: .isComingSoon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                upvoteCount = try container.decode(Double.self, forKey: .upvoteCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isComingSoon, forKey: .isComingSoon)

            try? container.encodeIfPresent(upvoteCount, forKey: .upvoteCount)
        }
    }
}

public extension PlatformClient.ApplicationClient.Partner {
    /*
         Model: CommingSoon
         Used By: Partner
     */

    class CommingSoon: Codable {
        public var isComingSoon: Bool?

        public var upvoteCount: Double?

        public enum CodingKeys: String, CodingKey {
            case isComingSoon = "is_coming_soon"

            case upvoteCount = "upvote_count"
        }

        public init(isComingSoon: Bool? = nil, upvoteCount: Double? = nil) {
            self.isComingSoon = isComingSoon

            self.upvoteCount = upvoteCount
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isComingSoon = try container.decode(Bool.self, forKey: .isComingSoon)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                upvoteCount = try container.decode(Double.self, forKey: .upvoteCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(isComingSoon, forKey: .isComingSoon)

            try? container.encodeIfPresent(upvoteCount, forKey: .upvoteCount)
        }
    }
}
