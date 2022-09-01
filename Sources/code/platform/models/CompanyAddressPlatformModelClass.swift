

import Foundation
public extension PlatformClient {
    /*
         Model: CompanyAddress
         Used By: Order
     */

    class CompanyAddress: Codable {
        public var pincode: Int

        public var countryCode: String

        public var address2: String?

        public var addressType: String

        public var latitude: Double

        public var address1: String

        public var longitude: Double

        public var country: String

        public var state: String

        public var city: String

        public var landmark: String?

        public enum CodingKeys: String, CodingKey {
            case pincode

            case countryCode = "country_code"

            case address2

            case addressType = "address_type"

            case latitude

            case address1

            case longitude

            case country

            case state

            case city

            case landmark
        }

        public init(address1: String, address2: String? = nil, addressType: String, city: String, country: String, countryCode: String, landmark: String? = nil, latitude: Double, longitude: Double, pincode: Int, state: String) {
            self.pincode = pincode

            self.countryCode = countryCode

            self.address2 = address2

            self.addressType = addressType

            self.latitude = latitude

            self.address1 = address1

            self.longitude = longitude

            self.country = country

            self.state = state

            self.city = city

            self.landmark = landmark
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(Int.self, forKey: .pincode)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressType = try container.decode(String.self, forKey: .addressType)

            latitude = try container.decode(Double.self, forKey: .latitude)

            address1 = try container.decode(String.self, forKey: .address1)

            longitude = try container.decode(Double.self, forKey: .longitude)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(landmark, forKey: .landmark)
        }
    }
}
