

import Foundation
public extension PlatformClient {
    /*
         Model: ZoneProductTypes
         Used By: Serviceability
     */

    class ZoneProductTypes: Codable {
        public var tags: [String]

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case tags

            case type
        }

        public init(tags: [String], type: String) {
            self.tags = tags

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            tags = try container.decode([String].self, forKey: .tags)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(tags, forKey: .tags)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
