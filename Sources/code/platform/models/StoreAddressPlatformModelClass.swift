

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var addressCategory: String

        public var email: String?

        public var landmark: String?

        public var version: String?

        public var updatedAt: String

        public var latitude: Double

        public var addressType: String

        public var pincode: Int

        public var area: String?

        public var address1: String

        public var countryCode: String

        public var address2: String?

        public var state: String

        public var city: String

        public var createdAt: String

        public var contactPerson: String

        public var phone: String

        public var longitude: Double

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case addressCategory = "address_category"

            case email

            case landmark

            case version

            case updatedAt = "updated_at"

            case latitude

            case addressType = "address_type"

            case pincode

            case area

            case address1

            case countryCode = "country_code"

            case address2

            case state

            case city

            case createdAt = "created_at"

            case contactPerson = "contact_person"

            case phone

            case longitude

            case country
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.addressCategory = addressCategory

            self.email = email

            self.landmark = landmark

            self.version = version

            self.updatedAt = updatedAt

            self.latitude = latitude

            self.addressType = addressType

            self.pincode = pincode

            self.area = area

            self.address1 = address1

            self.countryCode = countryCode

            self.address2 = address2

            self.state = state

            self.city = city

            self.createdAt = createdAt

            self.contactPerson = contactPerson

            self.phone = phone

            self.longitude = longitude

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                email = try container.decode(String.self, forKey: .email)

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

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            latitude = try container.decode(Double.self, forKey: .latitude)

            addressType = try container.decode(String.self, forKey: .addressType)

            pincode = try container.decode(Int.self, forKey: .pincode)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            phone = try container.decode(String.self, forKey: .phone)

            longitude = try container.decode(Double.self, forKey: .longitude)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
