

import Foundation
public extension PlatformClient {
    /*
         Model: BillingAddress1
         Used By: Order
     */

    class BillingAddress1: Codable {
        public var address2: String?

        public var createdAt: String

        public var address1: String

        public var state: String

        public var area: String?

        public var pincode: Int

        public var version: String?

        public var latitude: Double

        public var landmark: String?

        public var countryCode: String

        public var addressType: String

        public var country: String

        public var city: String

        public var addressCategory: String

        public var updatedAt: String

        public var contactPerson: String

        public var email: String?

        public var longitude: Double

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case address2

            case createdAt = "created_at"

            case address1

            case state

            case area

            case pincode

            case version

            case latitude

            case landmark

            case countryCode = "country_code"

            case addressType = "address_type"

            case country

            case city

            case addressCategory = "address_category"

            case updatedAt = "updated_at"

            case contactPerson = "contact_person"

            case email

            case longitude

            case phone
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.address2 = address2

            self.createdAt = createdAt

            self.address1 = address1

            self.state = state

            self.area = area

            self.pincode = pincode

            self.version = version

            self.latitude = latitude

            self.landmark = landmark

            self.countryCode = countryCode

            self.addressType = addressType

            self.country = country

            self.city = city

            self.addressCategory = addressCategory

            self.updatedAt = updatedAt

            self.contactPerson = contactPerson

            self.email = email

            self.longitude = longitude

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            address1 = try container.decode(String.self, forKey: .address1)

            state = try container.decode(String.self, forKey: .state)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            addressType = try container.decode(String.self, forKey: .addressType)

            country = try container.decode(String.self, forKey: .country)

            city = try container.decode(String.self, forKey: .city)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encode(phone, forKey: .phone)
        }
    }
}
