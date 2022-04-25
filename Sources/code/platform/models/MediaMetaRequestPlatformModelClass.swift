

import Foundation
public extension PlatformClient {
    /*
         Model: MediaMetaRequest
         Used By: Feedback
     */

    class MediaMetaRequest: Codable {
        public var maxCount: Int

        public var size: Int

        public enum CodingKeys: String, CodingKey {
            case maxCount = "max_count"

            case size
        }

        public init(maxCount: Int, size: Int) {
            self.maxCount = maxCount

            self.size = size
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            maxCount = try container.decode(Int.self, forKey: .maxCount)

            size = try container.decode(Int.self, forKey: .size)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(maxCount, forKey: .maxCount)

            try? container.encodeIfPresent(size, forKey: .size)
        }
    }
}
