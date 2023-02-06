

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAddress
         Used By: Orders
     */

    class StoreAddress: Codable {
        public var address2: String?

        public var address1: String

        public var latitude: Double

        public var city: String

        public var addressCategory: String

        public var countryCode: String

        public var updatedAt: String

        public var addressType: String

        public var longitude: Double

        public var area: String?

        public var state: String

        public var landmark: String?

        public var email: String?

        public var contactPerson: String

        public var version: String?

        public var country: String

        public var pincode: Int

        public var createdAt: String

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case address2

            case address1

            case latitude

            case city

            case addressCategory = "address_category"

            case countryCode = "country_code"

            case updatedAt = "updated_at"

            case addressType = "address_type"

            case longitude

            case area

            case state

            case landmark

            case email

            case contactPerson = "contact_person"

            case version

            case country

            case pincode

            case createdAt = "created_at"

            case phone
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.address2 = address2

            self.address1 = address1

            self.latitude = latitude

            self.city = city

            self.addressCategory = addressCategory

            self.countryCode = countryCode

            self.updatedAt = updatedAt

            self.addressType = addressType

            self.longitude = longitude

            self.area = area

            self.state = state

            self.landmark = landmark

            self.email = email

            self.contactPerson = contactPerson

            self.version = version

            self.country = country

            self.pincode = pincode

            self.createdAt = createdAt

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            latitude = try container.decode(Double.self, forKey: .latitude)

            city = try container.decode(String.self, forKey: .city)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            addressType = try container.decode(String.self, forKey: .addressType)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                area = try container.decode(String.self, forKey: .area)

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

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(Int.self, forKey: .pincode)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(phone, forKey: .phone)
        }
    }
}
