

import Foundation
public extension PlatformClient {
    /*
         Model: ProductResponse
         Used By: Catalog
     */

    class ProductResponse: Codable {
        public var data: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case data
        }

        public init(data: [String: Any]) {
            self.data = data
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            data = try container.decode([String: Any].self, forKey: .data)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(data, forKey: .data)
        }
    }
}
