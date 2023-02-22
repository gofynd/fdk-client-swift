

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var state: String

        public var addressCategory: String

        public var phone: String

        public var address1: String

        public var area: String?

        public var address2: String?

        public var version: String?

        public var latitude: Double

        public var pincode: Int

        public var email: String?

        public var countryCode: String

        public var city: String

        public var createdAt: String

        public var updatedAt: String

        public var country: String

        public var contactPerson: String

        public var longitude: Double

        public var landmark: String?

        public var addressType: String

        public enum CodingKeys: String, CodingKey {
            case state

            case addressCategory = "address_category"

            case phone

            case address1

            case area

            case address2

            case version

            case latitude

            case pincode

            case email

            case countryCode = "country_code"

            case city

            case createdAt = "created_at"

            case updatedAt = "updated_at"

            case country

            case contactPerson = "contact_person"

            case longitude

            case landmark

            case addressType = "address_type"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.state = state

            self.addressCategory = addressCategory

            self.phone = phone

            self.address1 = address1

            self.area = area

            self.address2 = address2

            self.version = version

            self.latitude = latitude

            self.pincode = pincode

            self.email = email

            self.countryCode = countryCode

            self.city = city

            self.createdAt = createdAt

            self.updatedAt = updatedAt

            self.country = country

            self.contactPerson = contactPerson

            self.longitude = longitude

            self.landmark = landmark

            self.addressType = addressType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            phone = try container.decode(String.self, forKey: .phone)

            address1 = try container.decode(String.self, forKey: .address1)

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

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            pincode = try container.decode(Int.self, forKey: .pincode)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            city = try container.decode(String.self, forKey: .city)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            country = try container.decode(String.self, forKey: .country)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressType = try container.decode(String.self, forKey: .addressType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(addressType, forKey: .addressType)
        }
    }
}
