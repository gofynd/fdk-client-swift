

import Foundation
public extension PlatformClient {
    /*
         Model: CreateUpdateAddressSerializer
         Used By: CompanyProfile
     */

    class CreateUpdateAddressSerializer: Codable {
        public var address1: String

        public var longitude: Double

        public var country: String

        public var addressType: String

        public var city: String

        public var countryCode: String?

        public var address2: String?

        public var pincode: Int

        public var landmark: String?

        public var latitude: Double

        public var state: String

        public enum CodingKeys: String, CodingKey {
            case address1

            case longitude

            case country

            case addressType = "address_type"

            case city

            case countryCode = "country_code"

            case address2

            case pincode

            case landmark

            case latitude

            case state
        }

        public init(address1: String, address2: String? = nil, addressType: String, city: String, country: String, countryCode: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, pincode: Int, state: String) {
            self.address1 = address1

            self.longitude = longitude

            self.country = country

            self.addressType = addressType

            self.city = city

            self.countryCode = countryCode

            self.address2 = address2

            self.pincode = pincode

            self.landmark = landmark

            self.latitude = latitude

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address1 = try container.decode(String.self, forKey: .address1)

            longitude = try container.decode(Double.self, forKey: .longitude)

            country = try container.decode(String.self, forKey: .country)

            addressType = try container.decode(String.self, forKey: .addressType)

            city = try container.decode(String.self, forKey: .city)

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            state = try container.decode(String.self, forKey: .state)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}
