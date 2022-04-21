

import Foundation
public extension PlatformClient {
    /*
         Model: ListViewProduct
         Used By: Serviceability
     */

    class ListViewProduct: Codable {
        public var count: Int

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case count

            case type
        }

        public init(count: Int, type: String) {
            self.count = count

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            count = try container.decode(Int.self, forKey: .count)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(count, forKey: .count)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
