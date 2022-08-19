

import Foundation
public extension PlatformClient {
    /*
         Model: DeliveryAddress
         Used By: Order
     */

    class DeliveryAddress: Codable {
        public var pincode: Int

        public var phone: String

        public var countryCode: String?

        public var contactPerson: String

        public var name: String

        public var address1: String

        public var longitude: Double

        public var address2: String?

        public var addressType: String

        public var addressCategory: String

        public var latitude: Double

        public var createdAt: String

        public var city: String

        public var landmark: String?

        public var updatedAt: String

        public var area: String?

        public var address: String

        public var email: String?

        public var version: String?

        public var country: String

        public var state: String

        public enum CodingKeys: String, CodingKey {
            case pincode

            case phone

            case countryCode = "country_code"

            case contactPerson = "contact_person"

            case name

            case address1

            case longitude

            case address2

            case addressType = "address_type"

            case addressCategory = "address_category"

            case latitude

            case createdAt = "created_at"

            case city

            case landmark

            case updatedAt = "updated_at"

            case area

            case address

            case email

            case version

            case country

            case state
        }

        public init(address: String, address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String? = nil, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, name: String, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.pincode = pincode

            self.phone = phone

            self.countryCode = countryCode

            self.contactPerson = contactPerson

            self.name = name

            self.address1 = address1

            self.longitude = longitude

            self.address2 = address2

            self.addressType = addressType

            self.addressCategory = addressCategory

            self.latitude = latitude

            self.createdAt = createdAt

            self.city = city

            self.landmark = landmark

            self.updatedAt = updatedAt

            self.area = area

            self.address = address

            self.email = email

            self.version = version

            self.country = country

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(Int.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            name = try container.decode(String.self, forKey: .name)

            address1 = try container.decode(String.self, forKey: .address1)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressType = try container.decode(String.self, forKey: .addressType)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            latitude = try container.decode(Double.self, forKey: .latitude)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            city = try container.decode(String.self, forKey: .city)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address = try container.decode(String.self, forKey: .address)

            do {
                email = try container.decode(String.self, forKey: .email)

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

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}
