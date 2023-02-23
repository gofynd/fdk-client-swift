

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var addressCategory: String

        public var createdAt: String

        public var longitude: Double

        public var latitude: Double

        public var updatedAt: String

        public var address1: String

        public var phone: String

        public var addressType: String

        public var version: String?

        public var address2: String?

        public var country: String

        public var pincode: Int

        public var state: String

        public var landmark: String?

        public var city: String

        public var email: String?

        public var area: String?

        public var countryCode: String

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case addressCategory = "address_category"

            case createdAt = "created_at"

            case longitude

            case latitude

            case updatedAt = "updated_at"

            case address1

            case phone

            case addressType = "address_type"

            case version

            case address2

            case country

            case pincode

            case state

            case landmark

            case city

            case email

            case area

            case countryCode = "country_code"

            case contactPerson = "contact_person"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.addressCategory = addressCategory

            self.createdAt = createdAt

            self.longitude = longitude

            self.latitude = latitude

            self.updatedAt = updatedAt

            self.address1 = address1

            self.phone = phone

            self.addressType = addressType

            self.version = version

            self.address2 = address2

            self.country = country

            self.pincode = pincode

            self.state = state

            self.landmark = landmark

            self.city = city

            self.email = email

            self.area = area

            self.countryCode = countryCode

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            longitude = try container.decode(Double.self, forKey: .longitude)

            latitude = try container.decode(Double.self, forKey: .latitude)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            address1 = try container.decode(String.self, forKey: .address1)

            phone = try container.decode(String.self, forKey: .phone)

            addressType = try container.decode(String.self, forKey: .addressType)

            do {
                version = try container.decode(String.self, forKey: .version)

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

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(Int.self, forKey: .pincode)

            state = try container.decode(String.self, forKey: .state)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                email = try container.decode(String.self, forKey: .email)

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

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
        }
    }
}
