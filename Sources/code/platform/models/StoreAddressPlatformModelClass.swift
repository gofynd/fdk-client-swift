

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var contactPerson: String

        public var longitude: Double

        public var addressType: String

        public var createdAt: String

        public var address1: String

        public var phone: String

        public var email: String?

        public var pincode: Int

        public var area: String?

        public var countryCode: String

        public var landmark: String?

        public var version: String?

        public var state: String

        public var city: String

        public var address2: String?

        public var updatedAt: String

        public var addressCategory: String

        public var latitude: Double

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case contactPerson = "contact_person"

            case longitude

            case addressType = "address_type"

            case createdAt = "created_at"

            case address1

            case phone

            case email

            case pincode

            case area

            case countryCode = "country_code"

            case landmark

            case version

            case state

            case city

            case address2

            case updatedAt = "updated_at"

            case addressCategory = "address_category"

            case latitude

            case country
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.contactPerson = contactPerson

            self.longitude = longitude

            self.addressType = addressType

            self.createdAt = createdAt

            self.address1 = address1

            self.phone = phone

            self.email = email

            self.pincode = pincode

            self.area = area

            self.countryCode = countryCode

            self.landmark = landmark

            self.version = version

            self.state = state

            self.city = city

            self.address2 = address2

            self.updatedAt = updatedAt

            self.addressCategory = addressCategory

            self.latitude = latitude

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            longitude = try container.decode(Double.self, forKey: .longitude)

            addressType = try container.decode(String.self, forKey: .addressType)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            address1 = try container.decode(String.self, forKey: .address1)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

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

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            latitude = try container.decode(Double.self, forKey: .latitude)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
