

import Foundation

public extension PlatformClient.Logistic {
    /*
         Model: GetZoneFromPincodeViewRequest
         Used By: Logistic
     */

    class GetZoneFromPincodeViewRequest: Codable {
        public var country: String

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case country

            case pincode
        }

        public init(country: String, pincode: String) {
            self.country = country

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}

public extension PlatformClient.ApplicationClient.Logistic {
    /*
         Model: GetZoneFromPincodeViewRequest
         Used By: Logistic
     */

    class GetZoneFromPincodeViewRequest: Codable {
        public var country: String

        public var pincode: String

        public enum CodingKeys: String, CodingKey {
            case country

            case pincode
        }

        public init(country: String, pincode: String) {
            self.country = country

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
