

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var state: String

        public var city: String

        public var addressType: String

        public var address2: String?

        public var updatedAt: String

        public var version: String?

        public var longitude: Double

        public var country: String

        public var email: String?

        public var createdAt: String

        public var pincode: Int

        public var address1: String

        public var countryCode: String

        public var addressCategory: String

        public var contactPerson: String

        public var area: String?

        public var landmark: String?

        public var latitude: Double

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case state

            case city

            case addressType = "address_type"

            case address2

            case updatedAt = "updated_at"

            case version

            case longitude

            case country

            case email

            case createdAt = "created_at"

            case pincode

            case address1

            case countryCode = "country_code"

            case addressCategory = "address_category"

            case contactPerson = "contact_person"

            case area

            case landmark

            case latitude

            case phone
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.state = state

            self.city = city

            self.addressType = addressType

            self.address2 = address2

            self.updatedAt = updatedAt

            self.version = version

            self.longitude = longitude

            self.country = country

            self.email = email

            self.createdAt = createdAt

            self.pincode = pincode

            self.address1 = address1

            self.countryCode = countryCode

            self.addressCategory = addressCategory

            self.contactPerson = contactPerson

            self.area = area

            self.landmark = landmark

            self.latitude = latitude

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            addressType = try container.decode(String.self, forKey: .addressType)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            country = try container.decode(String.self, forKey: .country)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            createdAt = try container.decode(String.self, forKey: .createdAt)

            pincode = try container.decode(Int.self, forKey: .pincode)

            address1 = try container.decode(String.self, forKey: .address1)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

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

            latitude = try container.decode(Double.self, forKey: .latitude)

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encode(phone, forKey: .phone)
        }
    }
}
