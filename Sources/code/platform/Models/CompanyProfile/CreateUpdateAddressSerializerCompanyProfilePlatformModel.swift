

import Foundation

public extension PlatformClient.CompanyProfile {
    /*
         Model: CreateUpdateAddressSerializer
         Used By: CompanyProfile
     */

    class CreateUpdateAddressSerializer: Codable {
        public var longitude: Double

        public var address2: String?

        public var country: String

        public var state: String

        public var city: String

        public var address1: String

        public var addressType: String

        public var latitude: Double

        public var landmark: String?

        public var pincode: Int

        public var countryCode: String?

        public enum CodingKeys: String, CodingKey {
            case longitude

            case address2

            case country

            case state

            case city

            case address1

            case addressType = "address_type"

            case latitude

            case landmark

            case pincode

            case countryCode = "country_code"
        }

        public init(address1: String, address2: String? = nil, addressType: String, city: String, country: String, countryCode: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, pincode: Int, state: String) {
            self.longitude = longitude

            self.address2 = address2

            self.country = country

            self.state = state

            self.city = city

            self.address1 = address1

            self.addressType = addressType

            self.latitude = latitude

            self.landmark = landmark

            self.pincode = pincode

            self.countryCode = countryCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            address1 = try container.decode(String.self, forKey: .address1)

            addressType = try container.decode(String.self, forKey: .addressType)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        }
    }
}
