

import Foundation
public extension PlatformClient {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var phone: String

        public var city: String

        public var state: String

        public var longitude: Double

        public var createdAt: String

        public var countryCode: String

        public var address1: String

        public var email: String?

        public var address2: String?

        public var addressCategory: String

        public var country: String

        public var area: String?

        public var contactPerson: String

        public var landmark: String?

        public var updatedAt: String

        public var version: String?

        public var addressType: String

        public var pincode: Int

        public var latitude: Double

        public enum CodingKeys: String, CodingKey {
            case phone

            case city

            case state

            case longitude

            case createdAt = "created_at"

            case countryCode = "country_code"

            case address1

            case email

            case address2

            case addressCategory = "address_category"

            case country

            case area

            case contactPerson = "contact_person"

            case landmark

            case updatedAt = "updated_at"

            case version

            case addressType = "address_type"

            case pincode

            case latitude
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.phone = phone

            self.city = city

            self.state = state

            self.longitude = longitude

            self.createdAt = createdAt

            self.countryCode = countryCode

            self.address1 = address1

            self.email = email

            self.address2 = address2

            self.addressCategory = addressCategory

            self.country = country

            self.area = area

            self.contactPerson = contactPerson

            self.landmark = landmark

            self.updatedAt = updatedAt

            self.version = version

            self.addressType = addressType

            self.pincode = pincode

            self.latitude = latitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(String.self, forKey: .phone)

            city = try container.decode(String.self, forKey: .city)

            state = try container.decode(String.self, forKey: .state)

            longitude = try container.decode(Double.self, forKey: .longitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            address1 = try container.decode(String.self, forKey: .address1)

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

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            country = try container.decode(String.self, forKey: .country)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

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

            addressType = try container.decode(String.self, forKey: .addressType)

            pincode = try container.decode(Int.self, forKey: .pincode)

            latitude = try container.decode(Double.self, forKey: .latitude)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(latitude, forKey: .latitude)
        }
    }
}
