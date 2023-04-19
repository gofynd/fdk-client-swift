

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var pincode: Int

        public var updatedAt: String

        public var createdAt: String

        public var contactPerson: String

        public var longitude: Double

        public var addressType: String

        public var city: String

        public var country: String

        public var address2: String?

        public var landmark: String?

        public var state: String

        public var addressCategory: String

        public var area: String?

        public var phone: String

        public var version: String?

        public var address1: String

        public var email: String?

        public var countryCode: String

        public var latitude: Double

        public enum CodingKeys: String, CodingKey {
            case pincode

            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case contactPerson = "contact_person"

            case longitude

            case addressType = "address_type"

            case city

            case country

            case address2

            case landmark

            case state

            case addressCategory = "address_category"

            case area

            case phone

            case version

            case address1

            case email

            case countryCode = "country_code"

            case latitude
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.pincode = pincode

            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.contactPerson = contactPerson

            self.longitude = longitude

            self.addressType = addressType

            self.city = city

            self.country = country

            self.address2 = address2

            self.landmark = landmark

            self.state = state

            self.addressCategory = addressCategory

            self.area = area

            self.phone = phone

            self.version = version

            self.address1 = address1

            self.email = email

            self.countryCode = countryCode

            self.latitude = latitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(Int.self, forKey: .pincode)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            longitude = try container.decode(Double.self, forKey: .longitude)

            addressType = try container.decode(String.self, forKey: .addressType)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            state = try container.decode(String.self, forKey: .state)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            latitude = try container.decode(Double.self, forKey: .latitude)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(latitude, forKey: .latitude)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var pincode: Int

        public var updatedAt: String

        public var createdAt: String

        public var contactPerson: String

        public var longitude: Double

        public var addressType: String

        public var city: String

        public var country: String

        public var address2: String?

        public var landmark: String?

        public var state: String

        public var addressCategory: String

        public var area: String?

        public var phone: String

        public var version: String?

        public var address1: String

        public var email: String?

        public var countryCode: String

        public var latitude: Double

        public enum CodingKeys: String, CodingKey {
            case pincode

            case updatedAt = "updated_at"

            case createdAt = "created_at"

            case contactPerson = "contact_person"

            case longitude

            case addressType = "address_type"

            case city

            case country

            case address2

            case landmark

            case state

            case addressCategory = "address_category"

            case area

            case phone

            case version

            case address1

            case email

            case countryCode = "country_code"

            case latitude
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.pincode = pincode

            self.updatedAt = updatedAt

            self.createdAt = createdAt

            self.contactPerson = contactPerson

            self.longitude = longitude

            self.addressType = addressType

            self.city = city

            self.country = country

            self.address2 = address2

            self.landmark = landmark

            self.state = state

            self.addressCategory = addressCategory

            self.area = area

            self.phone = phone

            self.version = version

            self.address1 = address1

            self.email = email

            self.countryCode = countryCode

            self.latitude = latitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(Int.self, forKey: .pincode)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            longitude = try container.decode(Double.self, forKey: .longitude)

            addressType = try container.decode(String.self, forKey: .addressType)

            city = try container.decode(String.self, forKey: .city)

            country = try container.decode(String.self, forKey: .country)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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

            state = try container.decode(String.self, forKey: .state)

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            do {
                area = try container.decode(String.self, forKey: .area)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            latitude = try container.decode(Double.self, forKey: .latitude)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(latitude, forKey: .latitude)
        }
    }
}
