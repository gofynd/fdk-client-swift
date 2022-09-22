

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyAddress
         Used By: Order
     */

    class CompanyAddress: Codable {
        public var state: String

        public var landmark: String?

        public var country: String

        public var pincode: Int

        public var city: String

        public var addressType: String

        public var latitude: Double

        public var address2: String?

        public var countryCode: String

        public var longitude: Double

        public var address1: String

        public enum CodingKeys: String, CodingKey {
            case state

            case landmark

            case country

            case pincode

            case city

            case addressType = "address_type"

            case latitude

            case address2

            case countryCode = "country_code"

            case longitude

            case address1
        }

        public init(address1: String, address2: String? = nil, addressType: String, city: String, country: String, countryCode: String, landmark: String? = nil, latitude: Double, longitude: Double, pincode: Int, state: String) {
            self.state = state

            self.landmark = landmark

            self.country = country

            self.pincode = pincode

            self.city = city

            self.addressType = addressType

            self.latitude = latitude

            self.address2 = address2

            self.countryCode = countryCode

            self.longitude = longitude

            self.address1 = address1
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(Int.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            addressType = try container.decode(String.self, forKey: .addressType)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            longitude = try container.decode(Double.self, forKey: .longitude)

            address1 = try container.decode(String.self, forKey: .address1)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(address1, forKey: .address1)
        }
    }
}
