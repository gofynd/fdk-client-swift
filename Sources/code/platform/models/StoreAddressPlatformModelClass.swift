

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var contactPerson: String

        public var updatedAt: String

        public var landmark: String?

        public var addressCategory: String

        public var longitude: Double

        public var state: String

        public var addressType: String

        public var country: String

        public var latitude: Double

        public var email: String?

        public var phone: String

        public var createdAt: String

        public var countryCode: String

        public var address1: String

        public var city: String

        public var pincode: Int

        public var area: String?

        public var version: String?

        public var address2: String?

        public enum CodingKeys: String, CodingKey {
            case contactPerson = "contact_person"

            case updatedAt = "updated_at"

            case landmark

            case addressCategory = "address_category"

            case longitude

            case state

            case addressType = "address_type"

            case country

            case latitude

            case email

            case phone

            case createdAt = "created_at"

            case countryCode = "country_code"

            case address1

            case city

            case pincode

            case area

            case version

            case address2
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.contactPerson = contactPerson

            self.updatedAt = updatedAt

            self.landmark = landmark

            self.addressCategory = addressCategory

            self.longitude = longitude

            self.state = state

            self.addressType = addressType

            self.country = country

            self.latitude = latitude

            self.email = email

            self.phone = phone

            self.createdAt = createdAt

            self.countryCode = countryCode

            self.address1 = address1

            self.city = city

            self.pincode = pincode

            self.area = area

            self.version = version

            self.address2 = address2
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            longitude = try container.decode(Double.self, forKey: .longitude)

            state = try container.decode(String.self, forKey: .state)

            addressType = try container.decode(String.self, forKey: .addressType)

            country = try container.decode(String.self, forKey: .country)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            address1 = try container.decode(String.self, forKey: .address1)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(Int.self, forKey: .pincode)

            do {
                area = try container.decode(String.self, forKey: .area)

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

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(address2, forKey: .address2)
        }
    }
}
