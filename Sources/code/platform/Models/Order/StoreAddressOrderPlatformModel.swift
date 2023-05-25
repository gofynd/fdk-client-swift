

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var latitude: Double

        public var area: String?

        public var address1: String

        public var addressCategory: String

        public var addressType: String

        public var countryCode: String

        public var updatedAt: String

        public var longitude: Double

        public var pincode: Int

        public var createdAt: String

        public var city: String

        public var phone: String

        public var state: String

        public var email: String?

        public var version: String?

        public var address2: String?

        public var contactPerson: String

        public var country: String

        public var landmark: String?

        public enum CodingKeys: String, CodingKey {
            case latitude

            case area

            case address1

            case addressCategory = "address_category"

            case addressType = "address_type"

            case countryCode = "country_code"

            case updatedAt = "updated_at"

            case longitude

            case pincode

            case createdAt = "created_at"

            case city

            case phone

            case state

            case email

            case version

            case address2

            case contactPerson = "contact_person"

            case country

            case landmark
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.latitude = latitude

            self.area = area

            self.address1 = address1

            self.addressCategory = addressCategory

            self.addressType = addressType

            self.countryCode = countryCode

            self.updatedAt = updatedAt

            self.longitude = longitude

            self.pincode = pincode

            self.createdAt = createdAt

            self.city = city

            self.phone = phone

            self.state = state

            self.email = email

            self.version = version

            self.address2 = address2

            self.contactPerson = contactPerson

            self.country = country

            self.landmark = landmark
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            addressType = try container.decode(String.self, forKey: .addressType)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            longitude = try container.decode(Double.self, forKey: .longitude)

            pincode = try container.decode(Int.self, forKey: .pincode)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(String.self, forKey: .phone)

            state = try container.decode(String.self, forKey: .state)

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

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(landmark, forKey: .landmark)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var latitude: Double

        public var area: String?

        public var address1: String

        public var addressCategory: String

        public var addressType: String

        public var countryCode: String

        public var updatedAt: String

        public var longitude: Double

        public var pincode: Int

        public var createdAt: String

        public var city: String

        public var phone: String

        public var state: String

        public var email: String?

        public var version: String?

        public var address2: String?

        public var contactPerson: String

        public var country: String

        public var landmark: String?

        public enum CodingKeys: String, CodingKey {
            case latitude

            case area

            case address1

            case addressCategory = "address_category"

            case addressType = "address_type"

            case countryCode = "country_code"

            case updatedAt = "updated_at"

            case longitude

            case pincode

            case createdAt = "created_at"

            case city

            case phone

            case state

            case email

            case version

            case address2

            case contactPerson = "contact_person"

            case country

            case landmark
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.latitude = latitude

            self.area = area

            self.address1 = address1

            self.addressCategory = addressCategory

            self.addressType = addressType

            self.countryCode = countryCode

            self.updatedAt = updatedAt

            self.longitude = longitude

            self.pincode = pincode

            self.createdAt = createdAt

            self.city = city

            self.phone = phone

            self.state = state

            self.email = email

            self.version = version

            self.address2 = address2

            self.contactPerson = contactPerson

            self.country = country

            self.landmark = landmark
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            addressType = try container.decode(String.self, forKey: .addressType)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            longitude = try container.decode(Double.self, forKey: .longitude)

            pincode = try container.decode(Int.self, forKey: .pincode)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(String.self, forKey: .phone)

            state = try container.decode(String.self, forKey: .state)

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

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            country = try container.decode(String.self, forKey: .country)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(landmark, forKey: .landmark)
        }
    }
}
