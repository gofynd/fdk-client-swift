

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var phone: String

        public var latitude: Double

        public var version: String?

        public var longitude: Double

        public var address2: String?

        public var addressCategory: String

        public var address1: String

        public var landmark: String?

        public var createdAt: String

        public var country: String

        public var area: String?

        public var countryCode: String

        public var email: String?

        public var state: String

        public var city: String

        public var pincode: Int

        public var addressType: String

        public var updatedAt: String

        public var contactPerson: String

        public enum CodingKeys: String, CodingKey {
            case phone

            case latitude

            case version

            case longitude

            case address2

            case addressCategory = "address_category"

            case address1

            case landmark

            case createdAt = "created_at"

            case country

            case area

            case countryCode = "country_code"

            case email

            case state

            case city

            case pincode

            case addressType = "address_type"

            case updatedAt = "updated_at"

            case contactPerson = "contact_person"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.phone = phone

            self.latitude = latitude

            self.version = version

            self.longitude = longitude

            self.address2 = address2

            self.addressCategory = addressCategory

            self.address1 = address1

            self.landmark = landmark

            self.createdAt = createdAt

            self.country = country

            self.area = area

            self.countryCode = countryCode

            self.email = email

            self.state = state

            self.city = city

            self.pincode = pincode

            self.addressType = addressType

            self.updatedAt = updatedAt

            self.contactPerson = contactPerson
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(String.self, forKey: .phone)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            country = try container.decode(String.self, forKey: .country)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(Int.self, forKey: .pincode)

            addressType = try container.decode(String.self, forKey: .addressType)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)
        }
    }
}