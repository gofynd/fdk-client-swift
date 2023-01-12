

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var addressType: String

        public var address1: String

        public var updatedAt: String

        public var city: String

        public var address2: String?

        public var addressCategory: String

        public var state: String

        public var landmark: String?

        public var latitude: Double

        public var countryCode: String

        public var phone: String

        public var email: String?

        public var createdAt: String

        public var country: String

        public var version: String?

        public var contactPerson: String

        public var longitude: Double

        public var area: String?

        public var pincode: Int

        public enum CodingKeys: String, CodingKey {
            case addressType = "address_type"

            case address1

            case updatedAt = "updated_at"

            case city

            case address2

            case addressCategory = "address_category"

            case state

            case landmark

            case latitude

            case countryCode = "country_code"

            case phone

            case email

            case createdAt = "created_at"

            case country

            case version

            case contactPerson = "contact_person"

            case longitude

            case area

            case pincode
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.addressType = addressType

            self.address1 = address1

            self.updatedAt = updatedAt

            self.city = city

            self.address2 = address2

            self.addressCategory = addressCategory

            self.state = state

            self.landmark = landmark

            self.latitude = latitude

            self.countryCode = countryCode

            self.phone = phone

            self.email = email

            self.createdAt = createdAt

            self.country = country

            self.version = version

            self.contactPerson = contactPerson

            self.longitude = longitude

            self.area = area

            self.pincode = pincode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addressType = try container.decode(String.self, forKey: .addressType)

            address1 = try container.decode(String.self, forKey: .address1)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            city = try container.decode(String.self, forKey: .city)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            state = try container.decode(String.self, forKey: .state)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            country = try container.decode(String.self, forKey: .country)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(pincode, forKey: .pincode)
        }
    }
}
