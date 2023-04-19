

import Foundation

public extension PlatformClient.Order {
    /*
         Model: PaymentModeInfo
         Used By: Order
     */

    class PaymentModeInfo: Codable {
        public var logo: String

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case logo

            case type
        }

        public init(logo: String, type: String) {
            self.logo = logo

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            logo = try container.decode(String.self, forKey: .logo)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: PaymentModeInfo
         Used By: Order
     */

    class PaymentModeInfo: Codable {
        public var logo: String

        public var type: String

        public enum CodingKeys: String, CodingKey {
            case logo

            case type
        }

        public init(logo: String, type: String) {
            self.logo = logo

            self.type = type
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            logo = try container.decode(String.self, forKey: .logo)

            type = try container.decode(String.self, forKey: .type)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(type, forKey: .type)
        }
    }
}
