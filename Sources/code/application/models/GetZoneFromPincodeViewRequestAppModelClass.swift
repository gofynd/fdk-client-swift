

import Foundation
public extension ApplicationClient {
    /*
         Model: GetZoneFromPincodeViewRequest
         Used By: Logistic
     */
    class GetZoneFromPincodeViewRequest: Codable {
        public var pincode: String

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case pincode

            case country
        }

        public init(country: String, pincode: String) {
            self.pincode = pincode

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(String.self, forKey: .pincode)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
