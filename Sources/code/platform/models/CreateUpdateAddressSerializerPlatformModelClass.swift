

import Foundation
public extension PlatformClient {
    /*
         Model: CreateUpdateAddressSerializer
         Used By: CompanyProfile
     */

    class CreateUpdateAddressSerializer: Codable {
        public var pincode: Int

        public var address1: String

        public var state: String

        public var longitude: Double

        public var latitude: Double

        public var landmark: String?

        public var countryCode: String?

        public var country: String

        public var addressType: String

        public var address2: String?

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case pincode

            case address1

            case state

            case longitude

            case latitude

            case landmark

            case countryCode = "country_code"

            case country

            case addressType = "address_type"

            case address2

            case city
        }

        public init(address1: String, address2: String? = nil, addressType: String, city: String, country: String, countryCode: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, pincode: Int, state: String) {
            self.pincode = pincode

            self.address1 = address1

            self.state = state

            self.longitude = longitude

            self.latitude = latitude

            self.landmark = landmark

            self.countryCode = countryCode

            self.country = country

            self.addressType = addressType

            self.address2 = address2

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(Int.self, forKey: .pincode)

            address1 = try container.decode(String.self, forKey: .address1)

            state = try container.decode(String.self, forKey: .state)

            longitude = try container.decode(Double.self, forKey: .longitude)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            addressType = try container.decode(String.self, forKey: .addressType)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }
}
