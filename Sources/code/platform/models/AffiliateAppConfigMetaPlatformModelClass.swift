

import Foundation
public extension PlatformClient {
    /*
         Model: AffiliateAppConfigMeta
         Used By: OrderManage
     */

    class AffiliateAppConfigMeta: Codable {
        public var value: String

        public var name: String

        public enum CodingKeys: String, CodingKey {
            case value

            case name
        }

        public init(name: String, value: String) {
            self.value = value

            self.name = name
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            value = try container.decode(String.self, forKey: .value)

            name = try container.decode(String.self, forKey: .name)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(value, forKey: .value)

            try? container.encodeIfPresent(name, forKey: .name)
        }
    }
}
