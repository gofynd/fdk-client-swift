

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var state: String

        public var addressType: String

        public var countryCode: String

        public var longitude: Double

        public var landmark: String?

        public var country: String

        public var updatedAt: String

        public var city: String

        public var address2: String?

        public var email: String?

        public var latitude: Double

        public var area: String?

        public var addressCategory: String

        public var address1: String

        public var pincode: Int

        public var createdAt: String

        public var contactPerson: String

        public var version: String?

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case state

            case addressType = "address_type"

            case countryCode = "country_code"

            case longitude

            case landmark

            case country

            case updatedAt = "updated_at"

            case city

            case address2

            case email

            case latitude

            case area

            case addressCategory = "address_category"

            case address1

            case pincode

            case createdAt = "created_at"

            case contactPerson = "contact_person"

            case version

            case phone
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.state = state

            self.addressType = addressType

            self.countryCode = countryCode

            self.longitude = longitude

            self.landmark = landmark

            self.country = country

            self.updatedAt = updatedAt

            self.city = city

            self.address2 = address2

            self.email = email

            self.latitude = latitude

            self.area = area

            self.addressCategory = addressCategory

            self.address1 = address1

            self.pincode = pincode

            self.createdAt = createdAt

            self.contactPerson = contactPerson

            self.version = version

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            addressType = try container.decode(String.self, forKey: .addressType)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            city = try container.decode(String.self, forKey: .city)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            address1 = try container.decode(String.self, forKey: .address1)

            pincode = try container.decode(Int.self, forKey: .pincode)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encode(phone, forKey: .phone)
        }
    }
}
