

import Foundation
public extension PlatformClient {
    /*
         Model: PaymentModeInfo
         Used By: Order
     */

    class PaymentModeInfo: Codable {
        public var type: String

        public var logo: String

        public enum CodingKeys: String, CodingKey {
            case type

            case logo
        }

        public init(logo: String, type: String) {
            self.type = type

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            type = try container.decode(String.self, forKey: .type)

            logo = try container.decode(String.self, forKey: .logo)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(type, forKey: .type)

            try? container.encodeIfPresent(logo, forKey: .logo)
        }
    }
}
