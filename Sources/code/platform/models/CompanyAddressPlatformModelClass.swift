

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyAddress
         Used By: Order
     */

    class CompanyAddress: Codable {
        public var landmark: String?

        public var state: String

        public var address2: String?

        public var address1: String

        public var latitude: Double

        public var addressType: String

        public var countryCode: String

        public var pincode: Int

        public var country: String

        public var city: String

        public var longitude: Double

        public enum CodingKeys: String, CodingKey {
            case landmark

            case state

            case address2

            case address1

            case latitude

            case addressType = "address_type"

            case countryCode = "country_code"

            case pincode

            case country

            case city

            case longitude
        }

        public init(address1: String, address2: String? = nil, addressType: String, city: String, country: String, countryCode: String, landmark: String? = nil, latitude: Double, longitude: Double, pincode: Int, state: String) {
            self.landmark = landmark

            self.state = state

            self.address2 = address2

            self.address1 = address1

            self.latitude = latitude

            self.addressType = addressType

            self.countryCode = countryCode

            self.pincode = pincode

            self.country = country

            self.city = city

            self.longitude = longitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            latitude = try container.decode(Double.self, forKey: .latitude)

            addressType = try container.decode(String.self, forKey: .addressType)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            pincode = try container.decode(Int.self, forKey: .pincode)

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            longitude = try container.decode(Double.self, forKey: .longitude)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(longitude, forKey: .longitude)
        }
    }
}
