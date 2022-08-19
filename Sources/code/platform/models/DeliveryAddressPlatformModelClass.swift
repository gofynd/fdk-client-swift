

import Foundation
public extension PlatformClient {
    /*
         Model: DeliveryAddress
         Used By: Order
     */

    class DeliveryAddress: Codable {
        public var landmark: String?

        public var address2: String?

        public var pincode: Int

        public var phone: String

        public var address: String

        public var country: String

        public var state: String

        public var address1: String

        public var name: String

        public var addressCategory: String

        public var createdAt: String

        public var latitude: Double

        public var countryCode: String?

        public var version: String?

        public var email: String?

        public var area: String?

        public var city: String

        public var longitude: Double

        public var updatedAt: String

        public var contactPerson: String

        public var addressType: String

        public enum CodingKeys: String, CodingKey {
            case landmark

            case address2

            case pincode

            case phone

            case address

            case country

            case state

            case address1

            case name

            case addressCategory = "address_category"

            case createdAt = "created_at"

            case latitude

            case countryCode = "country_code"

            case version

            case email

            case area

            case city

            case longitude

            case updatedAt = "updated_at"

            case contactPerson = "contact_person"

            case addressType = "address_type"
        }

        public init(address: String, address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String? = nil, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, name: String, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.landmark = landmark

            self.address2 = address2

            self.pincode = pincode

            self.phone = phone

            self.address = address

            self.country = country

            self.state = state

            self.address1 = address1

            self.name = name

            self.addressCategory = addressCategory

            self.createdAt = createdAt

            self.latitude = latitude

            self.countryCode = countryCode

            self.version = version

            self.email = email

            self.area = area

            self.city = city

            self.longitude = longitude

            self.updatedAt = updatedAt

            self.contactPerson = contactPerson

            self.addressType = addressType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            pincode = try container.decode(Int.self, forKey: .pincode)

            phone = try container.decode(String.self, forKey: .phone)

            address = try container.decode(String.self, forKey: .address)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            address1 = try container.decode(String.self, forKey: .address1)

            name = try container.decode(String.self, forKey: .name)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

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
                email = try container.decode(String.self, forKey: .email)

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

            city = try container.decode(String.self, forKey: .city)

            longitude = try container.decode(Double.self, forKey: .longitude)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            addressType = try container.decode(String.self, forKey: .addressType)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(address, forKey: .address)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(addressType, forKey: .addressType)
        }
    }
}
