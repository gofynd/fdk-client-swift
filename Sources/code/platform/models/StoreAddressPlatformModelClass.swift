

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var address1: String

        public var pincode: Int

        public var phone: String

        public var country: String

        public var version: String?

        public var latitude: Double

        public var countryCode: String

        public var area: String?

        public var city: String

        public var longitude: Double

        public var landmark: String?

        public var contactPerson: String

        public var addressCategory: String

        public var createdAt: String

        public var state: String

        public var addressType: String

        public var updatedAt: String

        public var email: String?

        public var address2: String?

        public enum CodingKeys: String, CodingKey {
            case address1

            case pincode

            case phone

            case country

            case version

            case latitude

            case countryCode = "country_code"

            case area

            case city

            case longitude

            case landmark

            case contactPerson = "contact_person"

            case addressCategory = "address_category"

            case createdAt = "created_at"

            case state

            case addressType = "address_type"

            case updatedAt = "updated_at"

            case email

            case address2
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.address1 = address1

            self.pincode = pincode

            self.phone = phone

            self.country = country

            self.version = version

            self.latitude = latitude

            self.countryCode = countryCode

            self.area = area

            self.city = city

            self.longitude = longitude

            self.landmark = landmark

            self.contactPerson = contactPerson

            self.addressCategory = addressCategory

            self.createdAt = createdAt

            self.state = state

            self.addressType = addressType

            self.updatedAt = updatedAt

            self.email = email

            self.address2 = address2
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address1 = try container.decode(String.self, forKey: .address1)

            pincode = try container.decode(Int.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            country = try container.decode(String.self, forKey: .country)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            state = try container.decode(String.self, forKey: .state)

            addressType = try container.decode(String.self, forKey: .addressType)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(address2, forKey: .address2)
        }
    }
}
