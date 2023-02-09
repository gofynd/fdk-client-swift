

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var addressType: String

        public var landmark: String?

        public var country: String

        public var email: String?

        public var addressCategory: String

        public var contactPerson: String

        public var latitude: Double

        public var state: String

        public var city: String

        public var address2: String?

        public var area: String?

        public var createdAt: String

        public var address1: String

        public var updatedAt: String

        public var phone: String

        public var longitude: Double

        public var pincode: Int

        public var countryCode: String

        public var version: String?

        public enum CodingKeys: String, CodingKey {
            case addressType = "address_type"

            case landmark

            case country

            case email

            case addressCategory = "address_category"

            case contactPerson = "contact_person"

            case latitude

            case state

            case city

            case address2

            case area

            case createdAt = "created_at"

            case address1

            case updatedAt = "updated_at"

            case phone

            case longitude

            case pincode

            case countryCode = "country_code"

            case version
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.addressType = addressType

            self.landmark = landmark

            self.country = country

            self.email = email

            self.addressCategory = addressCategory

            self.contactPerson = contactPerson

            self.latitude = latitude

            self.state = state

            self.city = city

            self.address2 = address2

            self.area = area

            self.createdAt = createdAt

            self.address1 = address1

            self.updatedAt = updatedAt

            self.phone = phone

            self.longitude = longitude

            self.pincode = pincode

            self.countryCode = countryCode

            self.version = version
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            addressType = try container.decode(String.self, forKey: .addressType)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            latitude = try container.decode(Double.self, forKey: .latitude)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            createdAt = try container.decode(String.self, forKey: .createdAt)

            address1 = try container.decode(String.self, forKey: .address1)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            phone = try container.decode(String.self, forKey: .phone)

            longitude = try container.decode(Double.self, forKey: .longitude)

            pincode = try container.decode(Int.self, forKey: .pincode)

            countryCode = try container.decode(String.self, forKey: .countryCode)

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

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(version, forKey: .version)
        }
    }
}
