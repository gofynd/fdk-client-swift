

import Foundation
public extension PlatformClient {
    /*
         Model: CreateUpdateAddressSerializer
         Used By: CompanyProfile
     */

    class CreateUpdateAddressSerializer: Codable {
        public var address1: String

        public var country: String

        public var city: String

        public var longitude: Double

        public var pincode: Int

        public var countryCode: String?

        public var addressType: String

        public var latitude: Double

        public var address2: String?

        public var state: String

        public var landmark: String?

        public enum CodingKeys: String, CodingKey {
            case address1

            case country

            case city

            case longitude

            case pincode

            case countryCode = "country_code"

            case addressType = "address_type"

            case latitude

            case address2

            case state

            case landmark
        }

        public init(address1: String, address2: String? = nil, addressType: String, city: String, country: String, countryCode: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, pincode: Int, state: String) {
            self.address1 = address1

            self.country = country

            self.city = city

            self.longitude = longitude

            self.pincode = pincode

            self.countryCode = countryCode

            self.addressType = addressType

            self.latitude = latitude

            self.address2 = address2

            self.state = state

            self.landmark = landmark
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address1 = try container.decode(String.self, forKey: .address1)

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            longitude = try container.decode(Double.self, forKey: .longitude)

            pincode = try container.decode(Int.self, forKey: .pincode)

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressType = try container.decode(String.self, forKey: .addressType)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(landmark, forKey: .landmark)
        }
    }
}
