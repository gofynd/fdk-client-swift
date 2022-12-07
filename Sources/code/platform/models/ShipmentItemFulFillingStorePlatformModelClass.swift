

import Foundation
public extension PlatformClient {
    /*
         Model: ShipmentItemFulFillingStore
         Used By: Order
     */

    class ShipmentItemFulFillingStore: Codable {
        public var id: String

        public var code: String

        public enum CodingKeys: String, CodingKey {
            case id

            case code
        }

        public init(code: String, id: String) {
            self.id = id

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            id = try container.decode(String.self, forKey: .id)

            code = try container.decode(String.self, forKey: .code)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
