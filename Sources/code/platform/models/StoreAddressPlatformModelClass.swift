

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var email: String?

        public var address2: String?

        public var state: String

        public var area: String?

        public var longitude: Double

        public var address1: String

        public var phone: String

        public var pincode: Int

        public var addressCategory: String

        public var landmark: String?

        public var countryCode: String

        public var city: String

        public var version: String?

        public var updatedAt: String

        public var contactPerson: String

        public var createdAt: String

        public var latitude: Double

        public var country: String

        public var addressType: String

        public enum CodingKeys: String, CodingKey {
            case email

            case address2

            case state

            case area

            case longitude

            case address1

            case phone

            case pincode

            case addressCategory = "address_category"

            case landmark

            case countryCode = "country_code"

            case city

            case version

            case updatedAt = "updated_at"

            case contactPerson = "contact_person"

            case createdAt = "created_at"

            case latitude

            case country

            case addressType = "address_type"
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.email = email

            self.address2 = address2

            self.state = state

            self.area = area

            self.longitude = longitude

            self.address1 = address1

            self.phone = phone

            self.pincode = pincode

            self.addressCategory = addressCategory

            self.landmark = landmark

            self.countryCode = countryCode

            self.city = city

            self.version = version

            self.updatedAt = updatedAt

            self.contactPerson = contactPerson

            self.createdAt = createdAt

            self.latitude = latitude

            self.country = country

            self.addressType = addressType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(String.self, forKey: .email)

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

            state = try container.decode(String.self, forKey: .state)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            address1 = try container.decode(String.self, forKey: .address1)

            phone = try container.decode(String.self, forKey: .phone)

            pincode = try container.decode(Int.self, forKey: .pincode)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            city = try container.decode(String.self, forKey: .city)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            latitude = try container.decode(Double.self, forKey: .latitude)

            country = try container.decode(String.self, forKey: .country)

            addressType = try container.decode(String.self, forKey: .addressType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(addressType, forKey: .addressType)
        }
    }
}
