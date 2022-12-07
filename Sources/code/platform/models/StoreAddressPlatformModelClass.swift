

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAddress
         Used By: Orders
     */

    class StoreAddress: Codable {
        public var addressType: String

        public var longitude: Double

        public var state: String

        public var addressCategory: String

        public var contactPerson: String

        public var email: String?

        public var version: String?

        public var pincode: Int

        public var address2: String?

        public var country: String

        public var latitude: Double

        public var createdAt: String

        public var address1: String

        public var countryCode: String

        public var phone: String

        public var city: String

        public var updatedAt: String

        public var area: String?

        public var landmark: String?

        public enum CodingKeys: String, CodingKey {
            case addressType = "address_type"

            case longitude

            case state

            case addressCategory = "address_category"

            case contactPerson = "contact_person"

            case email

            case version

            case pincode

            case address2

            case country

            case latitude

            case createdAt = "created_at"

            case address1

            case countryCode = "country_code"

            case phone

            case city

            case updatedAt = "updated_at"

            case area

            case landmark
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.addressType = addressType

            self.longitude = longitude

            self.state = state

            self.addressCategory = addressCategory

            self.contactPerson = contactPerson

            self.email = email

            self.version = version

            self.pincode = pincode

            self.address2 = address2

            self.country = country

            self.latitude = latitude

            self.createdAt = createdAt

            self.address1 = address1

            self.countryCode = countryCode

            self.phone = phone

            self.city = city

            self.updatedAt = updatedAt

            self.area = area

            self.landmark = landmark
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addressType = try container.decode(String.self, forKey: .addressType)

            longitude = try container.decode(Double.self, forKey: .longitude)

            state = try container.decode(String.self, forKey: .state)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                email = try container.decode(String.self, forKey: .email)

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

            pincode = try container.decode(Int.self, forKey: .pincode)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            latitude = try container.decode(Double.self, forKey: .latitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            address1 = try container.decode(String.self, forKey: .address1)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            phone = try container.decode(String.self, forKey: .phone)

            city = try container.decode(String.self, forKey: .city)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(landmark, forKey: .landmark)
        }
    }
}
