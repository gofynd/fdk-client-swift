

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var area: String?

        public var addressType: String

        public var landmark: String?

        public var longitude: Double

        public var countryCode: String

        public var updatedAt: String

        public var state: String

        public var latitude: Double

        public var contactPerson: String

        public var version: String?

        public var addressCategory: String

        public var createdAt: String

        public var phone: String

        public var country: String

        public var pincode: Int

        public var city: String

        public var email: String?

        public var address1: String

        public var address2: String?

        public enum CodingKeys: String, CodingKey {
            case area

            case addressType = "address_type"

            case landmark

            case longitude

            case countryCode = "country_code"

            case updatedAt = "updated_at"

            case state

            case latitude

            case contactPerson = "contact_person"

            case version

            case addressCategory = "address_category"

            case createdAt = "created_at"

            case phone

            case country

            case pincode

            case city

            case email

            case address1

            case address2
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.area = area

            self.addressType = addressType

            self.landmark = landmark

            self.longitude = longitude

            self.countryCode = countryCode

            self.updatedAt = updatedAt

            self.state = state

            self.latitude = latitude

            self.contactPerson = contactPerson

            self.version = version

            self.addressCategory = addressCategory

            self.createdAt = createdAt

            self.phone = phone

            self.country = country

            self.pincode = pincode

            self.city = city

            self.email = email

            self.address1 = address1

            self.address2 = address2
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressType = try container.decode(String.self, forKey: .addressType)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            state = try container.decode(String.self, forKey: .state)

            latitude = try container.decode(Double.self, forKey: .latitude)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            phone = try container.decode(String.self, forKey: .phone)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(Int.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(address2, forKey: .address2)
        }
    }
}
