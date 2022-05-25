

import Foundation
public extension PlatformClient {
    /*
         Model: CreateUpdateAddressSerializer
         Used By: CompanyProfile
     */

    class CreateUpdateAddressSerializer: Codable {
        public var state: String

        public var pincode: Int

        public var address1: String

        public var address2: String?

        public var longitude: Double

        public var city: String

        public var addressType: String

        public var latitude: Double

        public var countryCode: String?

        public var country: String

        public var landmark: String?

        public enum CodingKeys: String, CodingKey {
            case state

            case pincode

            case address1

            case address2

            case longitude

            case city

            case addressType = "address_type"

            case latitude

            case countryCode = "country_code"

            case country

            case landmark
        }

        public init(address1: String, address2: String? = nil, addressType: String, city: String, country: String, countryCode: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, pincode: Int, state: String) {
            self.state = state

            self.pincode = pincode

            self.address1 = address1

            self.address2 = address2

            self.longitude = longitude

            self.city = city

            self.addressType = addressType

            self.latitude = latitude

            self.countryCode = countryCode

            self.country = country

            self.landmark = landmark
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(Int.self, forKey: .pincode)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            city = try container.decode(String.self, forKey: .city)

            addressType = try container.decode(String.self, forKey: .addressType)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(landmark, forKey: .landmark)
        }
    }
}
