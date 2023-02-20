

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var addressType: String

        public var area: String?

        public var address2: String?

        public var updatedAt: String

        public var countryCode: String

        public var country: String

        public var createdAt: String

        public var email: String?

        public var addressCategory: String

        public var phone: String

        public var pincode: Int

        public var longitude: Double

        public var address1: String

        public var latitude: Double

        public var contactPerson: String

        public var landmark: String?

        public var state: String

        public var city: String

        public var version: String?

        public enum CodingKeys: String, CodingKey {
            case addressType = "address_type"

            case area

            case address2

            case updatedAt = "updated_at"

            case countryCode = "country_code"

            case country

            case createdAt = "created_at"

            case email

            case addressCategory = "address_category"

            case phone

            case pincode

            case longitude

            case address1

            case latitude

            case contactPerson = "contact_person"

            case landmark

            case state

            case city

            case version
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.addressType = addressType

            self.area = area

            self.address2 = address2

            self.updatedAt = updatedAt

            self.countryCode = countryCode

            self.country = country

            self.createdAt = createdAt

            self.email = email

            self.addressCategory = addressCategory

            self.phone = phone

            self.pincode = pincode

            self.longitude = longitude

            self.address1 = address1

            self.latitude = latitude

            self.contactPerson = contactPerson

            self.landmark = landmark

            self.state = state

            self.city = city

            self.version = version
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addressType = try container.decode(String.self, forKey: .addressType)

            do {
                area = try container.decode(String.self, forKey: .area)

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

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            country = try container.decode(String.self, forKey: .country)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            phone = try container.decode(String.self, forKey: .phone)

            pincode = try container.decode(Int.self, forKey: .pincode)

            longitude = try container.decode(Double.self, forKey: .longitude)

            address1 = try container.decode(String.self, forKey: .address1)

            latitude = try container.decode(Double.self, forKey: .latitude)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(version, forKey: .version)
        }
    }
}
