

import Foundation
public extension PlatformClient {
    /*
         Model: PlatformDeliveryAddress
         Used By: Order
     */

    class PlatformDeliveryAddress: Codable {
        public var country: String?

        public var updatedAt: String?

        public var address1: String?

        public var city: String?

        public var area: String?

        public var version: String?

        public var latitude: Int?

        public var landmark: String?

        public var longitude: Int?

        public var address2: String?

        public var contactPerson: String?

        public var email: String?

        public var pincode: String?

        public var addressCategory: String?

        public var phone: String?

        public var createdAt: String?

        public var addressType: String?

        public var state: String?

        public enum CodingKeys: String, CodingKey {
            case country

            case updatedAt = "updated_at"

            case address1

            case city

            case area

            case version

            case latitude

            case landmark

            case longitude

            case address2

            case contactPerson = "contact_person"

            case email

            case pincode

            case addressCategory = "address_category"

            case phone

            case createdAt = "created_at"

            case addressType = "address_type"

            case state
        }

        public init(address1: String? = nil, address2: String? = nil, addressCategory: String? = nil, addressType: String? = nil, area: String? = nil, city: String? = nil, contactPerson: String? = nil, country: String? = nil, createdAt: String? = nil, email: String? = nil, landmark: String? = nil, latitude: Int? = nil, longitude: Int? = nil, phone: String? = nil, pincode: String? = nil, state: String? = nil, updatedAt: String? = nil, version: String? = nil) {
            self.country = country

            self.updatedAt = updatedAt

            self.address1 = address1

            self.city = city

            self.area = area

            self.version = version

            self.latitude = latitude

            self.landmark = landmark

            self.longitude = longitude

            self.address2 = address2

            self.contactPerson = contactPerson

            self.email = email

            self.pincode = pincode

            self.addressCategory = addressCategory

            self.phone = phone

            self.createdAt = createdAt

            self.addressType = addressType

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                updatedAt = try container.decode(String.self, forKey: .updatedAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                address1 = try container.decode(String.self, forKey: .address1)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                city = try container.decode(String.self, forKey: .city)

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

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                latitude = try container.decode(Int.self, forKey: .latitude)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                longitude = try container.decode(Int.self, forKey: .longitude)

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
                contactPerson = try container.decode(String.self, forKey: .contactPerson)

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
                pincode = try container.decode(String.self, forKey: .pincode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addressCategory = try container.decode(String.self, forKey: .addressCategory)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                phone = try container.decode(String.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                createdAt = try container.decode(String.self, forKey: .createdAt)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addressType = try container.decode(String.self, forKey: .addressType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                state = try container.decode(String.self, forKey: .state)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}
