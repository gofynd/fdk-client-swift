

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var address2: String?

        public var city: String

        public var address1: String

        public var landmark: String?

        public var updatedAt: String

        public var countryCode: String

        public var latitude: Double

        public var pincode: Int

        public var email: String?

        public var addressType: String

        public var country: String

        public var area: String?

        public var addressCategory: String

        public var version: String?

        public var createdAt: String

        public var state: String

        public var phone: String

        public var longitude: Double

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case address2

            case city

            case address1

            case landmark

            case updatedAt = "updated_at"

            case countryCode = "country_code"

            case latitude

            case pincode

            case email

            case addressType = "address_type"

            case country

            case area

            case addressCategory = "address_category"

            case version

            case createdAt = "created_at"

            case state

            case phone

            case longitude

            case contactPerson = "contact_person"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.address2 = address2

            self.city = city

            self.address1 = address1

            self.landmark = landmark

            self.updatedAt = updatedAt

            self.countryCode = countryCode

            self.latitude = latitude

            self.pincode = pincode

            self.email = email

            self.addressType = addressType

            self.country = country

            self.area = area

            self.addressCategory = addressCategory

            self.version = version

            self.createdAt = createdAt

            self.state = state

            self.phone = phone

            self.longitude = longitude

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            latitude = try container.decode(Double.self, forKey: .latitude)

            pincode = try container.decode(Int.self, forKey: .pincode)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressType = try container.decode(String.self, forKey: .addressType)

            country = try container.decode(String.self, forKey: .country)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            state = try container.decode(String.self, forKey: .state)

            phone = try container.decode(String.self, forKey: .phone)

            longitude = try container.decode(Double.self, forKey: .longitude)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
        }
    }
}
