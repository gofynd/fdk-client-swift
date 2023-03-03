

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var country: String

        public var updatedAt: String

        public var version: String?

        public var email: String?

        public var address1: String

        public var longitude: Double

        public var city: String

        public var landmark: String?

        public var address2: String?

        public var area: String?

        public var countryCode: String

        public var latitude: Double

        public var state: String

        public var addressType: String

        public var pincode: Int

        public var createdAt: String

        public var phone: String

        public var addressCategory: String

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case country

            case updatedAt = "updated_at"

            case version

            case email

            case address1

            case longitude

            case city

            case landmark

            case address2

            case area

            case countryCode = "country_code"

            case latitude

            case state

            case addressType = "address_type"

            case pincode

            case createdAt = "created_at"

            case phone

            case addressCategory = "address_category"

            case contactPerson = "contact_person"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.country = country

            self.updatedAt = updatedAt

            self.version = version

            self.email = email

            self.address1 = address1

            self.longitude = longitude

            self.city = city

            self.landmark = landmark

            self.address2 = address2

            self.area = area

            self.countryCode = countryCode

            self.latitude = latitude

            self.state = state

            self.addressType = addressType

            self.pincode = pincode

            self.createdAt = createdAt

            self.phone = phone

            self.addressCategory = addressCategory

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            longitude = try container.decode(Double.self, forKey: .longitude)

            city = try container.decode(String.self, forKey: .city)

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
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            latitude = try container.decode(Double.self, forKey: .latitude)

            state = try container.decode(String.self, forKey: .state)

            addressType = try container.decode(String.self, forKey: .addressType)

            pincode = try container.decode(Int.self, forKey: .pincode)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            phone = try container.decode(String.self, forKey: .phone)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
        }
    }
}
