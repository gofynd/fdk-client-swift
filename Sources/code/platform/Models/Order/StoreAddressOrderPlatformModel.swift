

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var city: String

        public var phone: String

        public var area: String?

        public var longitude: Double

        public var address2: String?

        public var country: String

        public var address1: String

        public var pincode: Int

        public var createdAt: String

        public var latitude: Double

        public var landmark: String?

        public var contactPerson: String

        public var countryCode: String

        public var state: String

        public var updatedAt: String

        public var version: String?

        public var addressType: String

        public var addressCategory: String

        public var email: String?

        public enum CodingKeys: String, CodingKey {
            case city

            case phone

            case area

            case longitude

            case address2

            case country

            case address1

            case pincode

            case createdAt = "created_at"

            case latitude

            case landmark

            case contactPerson = "contact_person"

            case countryCode = "country_code"

            case state

            case updatedAt = "updated_at"

            case version

            case addressType = "address_type"

            case addressCategory = "address_category"

            case email
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.city = city

            self.phone = phone

            self.area = area

            self.longitude = longitude

            self.address2 = address2

            self.country = country

            self.address1 = address1

            self.pincode = pincode

            self.createdAt = createdAt

            self.latitude = latitude

            self.landmark = landmark

            self.contactPerson = contactPerson

            self.countryCode = countryCode

            self.state = state

            self.updatedAt = updatedAt

            self.version = version

            self.addressType = addressType

            self.addressCategory = addressCategory

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            address1 = try container.decode(String.self, forKey: .address1)

            pincode = try container.decode(Int.self, forKey: .pincode)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            state = try container.decode(String.self, forKey: .state)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressType = try container.decode(String.self, forKey: .addressType)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var city: String

        public var phone: String

        public var area: String?

        public var longitude: Double

        public var address2: String?

        public var country: String

        public var address1: String

        public var pincode: Int

        public var createdAt: String

        public var latitude: Double

        public var landmark: String?

        public var contactPerson: String

        public var countryCode: String

        public var state: String

        public var updatedAt: String

        public var version: String?

        public var addressType: String

        public var addressCategory: String

        public var email: String?

        public enum CodingKeys: String, CodingKey {
            case city

            case phone

            case area

            case longitude

            case address2

            case country

            case address1

            case pincode

            case createdAt = "created_at"

            case latitude

            case landmark

            case contactPerson = "contact_person"

            case countryCode = "country_code"

            case state

            case updatedAt = "updated_at"

            case version

            case addressType = "address_type"

            case addressCategory = "address_category"

            case email
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.city = city

            self.phone = phone

            self.area = area

            self.longitude = longitude

            self.address2 = address2

            self.country = country

            self.address1 = address1

            self.pincode = pincode

            self.createdAt = createdAt

            self.latitude = latitude

            self.landmark = landmark

            self.contactPerson = contactPerson

            self.countryCode = countryCode

            self.state = state

            self.updatedAt = updatedAt

            self.version = version

            self.addressType = addressType

            self.addressCategory = addressCategory

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            city = try container.decode(String.self, forKey: .city)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            address1 = try container.decode(String.self, forKey: .address1)

            pincode = try container.decode(Int.self, forKey: .pincode)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            state = try container.decode(String.self, forKey: .state)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressType = try container.decode(String.self, forKey: .addressType)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(email, forKey: .email)
        }
    }
}
