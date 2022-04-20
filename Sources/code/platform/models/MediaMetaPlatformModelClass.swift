

import Foundation
public extension PlatformClient {
    /*
         Model: MediaMeta
         Used By: Feedback
     */

    class MediaMeta: Codable {
        public var maxCount: Int?

        public var size: Int?

        public var type: String?

        public enum CodingKeys: String, CodingKey {
            case maxCount = "max_count"

            case size

            case type
        }

        public init(maxCount: Int? = nil, size: Int? = nil, type: String? = nil) {
            self.maxCount = maxCount

            self.size = size

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                maxCount = try container.decode(Int.self, forKey: .maxCount)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                size = try container.decode(Int.self, forKey: .size)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                type = try container.decode(String.self, forKey: .type)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(maxCount, forKey: .maxCount)

            try? container.encodeIfPresent(size, forKey: .size)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
