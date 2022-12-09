

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var state: String

        public var updatedAt: String

        public var version: String?

        public var countryCode: String

        public var area: String?

        public var longitude: Double

        public var contactPerson: String

        public var addressType: String

        public var country: String

        public var email: String?

        public var phone: String

        public var address1: String

        public var pincode: Int

        public var landmark: String?

        public var address2: String?

        public var addressCategory: String

        public var createdAt: String

        public var latitude: Double

        public var city: String

        public enum CodingKeys: String, CodingKey {
            case state

            case updatedAt = "updated_at"

            case version

            case countryCode = "country_code"

            case area

            case longitude

            case contactPerson = "contact_person"

            case addressType = "address_type"

            case country

            case email

            case phone

            case address1

            case pincode

            case landmark

            case address2

            case addressCategory = "address_category"

            case createdAt = "created_at"

            case latitude

            case city
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.state = state

            self.updatedAt = updatedAt

            self.version = version

            self.countryCode = countryCode

            self.area = area

            self.longitude = longitude

            self.contactPerson = contactPerson

            self.addressType = addressType

            self.country = country

            self.email = email

            self.phone = phone

            self.address1 = address1

            self.pincode = pincode

            self.landmark = landmark

            self.address2 = address2

            self.addressCategory = addressCategory

            self.createdAt = createdAt

            self.latitude = latitude

            self.city = city
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            addressType = try container.decode(String.self, forKey: .addressType)

            country = try container.decode(String.self, forKey: .country)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)

            address1 = try container.decode(String.self, forKey: .address1)

            pincode = try container.decode(Int.self, forKey: .pincode)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

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

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            latitude = try container.decode(Double.self, forKey: .latitude)

            city = try container.decode(String.self, forKey: .city)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(city, forKey: .city)
        }
    }
}
