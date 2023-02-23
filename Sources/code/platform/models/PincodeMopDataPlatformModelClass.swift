

import Foundation
public extension PlatformClient {
    /*
         Model: PincodeMopData
         Used By: Serviceability
     */

    class PincodeMopData: Codable {
        public var pincodes: [Int]

        public var country: String

        public var action: String

        public enum CodingKeys: String, CodingKey {
            case pincodes

            case country

            case action
        }

        public init(action: String, country: String, pincodes: [Int]) {
            self.pincodes = pincodes

            self.country = country

            self.action = action
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincodes = try container.decode([Int].self, forKey: .pincodes)

            country = try container.decode(String.self, forKey: .country)

            action = try container.decode(String.self, forKey: .action)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincodes, forKey: .pincodes)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(action, forKey: .action)
        }
    }
}
