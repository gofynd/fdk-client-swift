

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var createdAt: String

        public var area: String?

        public var phone: String

        public var contactPerson: String

        public var latitude: Double

        public var landmark: String?

        public var address2: String?

        public var version: String?

        public var address1: String

        public var pincode: Int

        public var addressCategory: String

        public var country: String

        public var city: String

        public var addressType: String

        public var countryCode: String

        public var state: String

        public var longitude: Double

        public var email: String?

        public var updatedAt: String

        public enum CodingKeys: String, CodingKey {
            case createdAt = "created_at"

            case area

            case phone

            case contactPerson = "contact_person"

            case latitude

            case landmark

            case address2

            case version

            case address1

            case pincode

            case addressCategory = "address_category"

            case country

            case city

            case addressType = "address_type"

            case countryCode = "country_code"

            case state

            case longitude

            case email

            case updatedAt = "updated_at"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.createdAt = createdAt

            self.area = area

            self.phone = phone

            self.contactPerson = contactPerson

            self.latitude = latitude

            self.landmark = landmark

            self.address2 = address2

            self.version = version

            self.address1 = address1

            self.pincode = pincode

            self.addressCategory = addressCategory

            self.country = country

            self.city = city

            self.addressType = addressType

            self.countryCode = countryCode

            self.state = state

            self.longitude = longitude

            self.email = email

            self.updatedAt = updatedAt
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

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

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            pincode = try container.decode(Int.self, forKey: .pincode)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            addressType = try container.decode(String.self, forKey: .addressType)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            state = try container.decode(String.self, forKey: .state)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            updatedAt = try container.decode(String.self, forKey: .updatedAt)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
        }
    }
}
