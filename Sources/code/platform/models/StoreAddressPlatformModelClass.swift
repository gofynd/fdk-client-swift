

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var address2: String?

        public var pincode: Int

        public var createdAt: String

        public var country: String

        public var area: String?

        public var countryCode: String

        public var landmark: String?

        public var contactPerson: String

        public var phone: String

        public var addressType: String

        public var city: String

        public var longitude: Double

        public var email: String?

        public var state: String

        public var updatedAt: String

        public var address1: String

        public var latitude: Double

        public var addressCategory: String

        public var version: String?

        public enum CodingKeys: String, CodingKey {
            case address2

            case pincode

            case createdAt = "created_at"

            case country

            case area

            case countryCode = "country_code"

            case landmark

            case contactPerson = "contact_person"

            case phone

            case addressType = "address_type"

            case city

            case longitude

            case email

            case state

            case updatedAt = "updated_at"

            case address1

            case latitude

            case addressCategory = "address_category"

            case version
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.address2 = address2

            self.pincode = pincode

            self.createdAt = createdAt

            self.country = country

            self.area = area

            self.countryCode = countryCode

            self.landmark = landmark

            self.contactPerson = contactPerson

            self.phone = phone

            self.addressType = addressType

            self.city = city

            self.longitude = longitude

            self.email = email

            self.state = state

            self.updatedAt = updatedAt

            self.address1 = address1

            self.latitude = latitude

            self.addressCategory = addressCategory

            self.version = version
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(Int.self, forKey: .pincode)

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
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            phone = try container.decode(String.self, forKey: .phone)

            addressType = try container.decode(String.self, forKey: .addressType)

            city = try container.decode(String.self, forKey: .city)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            address1 = try container.decode(String.self, forKey: .address1)

            latitude = try container.decode(Double.self, forKey: .latitude)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(version, forKey: .version)
        }
    }
}
