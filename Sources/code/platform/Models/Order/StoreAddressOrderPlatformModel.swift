

import Foundation

public extension PlatformClient.Order {
    /*
         Model: StoreAddress
         Used By: Order
     */

    class StoreAddress: Codable {
        public var landmark: String?

        public var addressCategory: String

        public var createdAt: String

        public var state: String

        public var contactPerson: String

        public var email: String?

        public var area: String?

        public var phone: String

        public var addressType: String

        public var pincode: Int

        public var city: String

        public var address2: String?

        public var countryCode: String

        public var longitude: Double

        public var country: String

        public var address1: String

        public var updatedAt: String

        public var version: String?

        public var latitude: Double

        public enum CodingKeys: String, CodingKey {
            case landmark

            case addressCategory = "address_category"

            case createdAt = "created_at"

            case state

            case contactPerson = "contact_person"

            case email

            case area

            case phone

            case addressType = "address_type"

            case pincode

            case city

            case address2

            case countryCode = "country_code"

            case longitude

            case country

            case address1

            case updatedAt = "updated_at"

            case version

            case latitude
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.landmark = landmark

            self.addressCategory = addressCategory

            self.createdAt = createdAt

            self.state = state

            self.contactPerson = contactPerson

            self.email = email

            self.area = area

            self.phone = phone

            self.addressType = addressType

            self.pincode = pincode

            self.city = city

            self.address2 = address2

            self.countryCode = countryCode

            self.longitude = longitude

            self.country = country

            self.address1 = address1

            self.updatedAt = updatedAt

            self.version = version

            self.latitude = latitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            state = try container.decode(String.self, forKey: .state)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

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

            phone = try container.decode(String.self, forKey: .phone)

            addressType = try container.decode(String.self, forKey: .addressType)

            pincode = try container.decode(Int.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            longitude = try container.decode(Double.self, forKey: .longitude)

            country = try container.decode(String.self, forKey: .country)

            address1 = try container.decode(String.self, forKey: .address1)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(version, forKey: .version)

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
        public var landmark: String?

        public var addressCategory: String

        public var createdAt: String

        public var state: String

        public var contactPerson: String

        public var email: String?

        public var area: String?

        public var phone: String

        public var addressType: String

        public var pincode: Int

        public var city: String

        public var address2: String?

        public var countryCode: String

        public var longitude: Double

        public var country: String

        public var address1: String

        public var updatedAt: String

        public var version: String?

        public var latitude: Double

        public enum CodingKeys: String, CodingKey {
            case landmark

            case addressCategory = "address_category"

            case createdAt = "created_at"

            case state

            case contactPerson = "contact_person"

            case email

            case area

            case phone

            case addressType = "address_type"

            case pincode

            case city

            case address2

            case countryCode = "country_code"

            case longitude

            case country

            case address1

            case updatedAt = "updated_at"

            case version

            case latitude
        }

        public init(address1: String, address2: String? = nil, addressCategory: String, addressType: String, area: String? = nil, city: String, contactPerson: String, country: String, countryCode: String, createdAt: String, email: String? = nil, landmark: String? = nil, latitude: Double, longitude: Double, phone: String, pincode: Int, state: String, updatedAt: String, version: String? = nil) {
            self.landmark = landmark

            self.addressCategory = addressCategory

            self.createdAt = createdAt

            self.state = state

            self.contactPerson = contactPerson

            self.email = email

            self.area = area

            self.phone = phone

            self.addressType = addressType

            self.pincode = pincode

            self.city = city

            self.address2 = address2

            self.countryCode = countryCode

            self.longitude = longitude

            self.country = country

            self.address1 = address1

            self.updatedAt = updatedAt

            self.version = version

            self.latitude = latitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                landmark = try container.decode(String.self, forKey: .landmark)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressCategory = try container.decode(String.self, forKey: .addressCategory)

            createdAt = try container.decode(String.self, forKey: .createdAt)

            state = try container.decode(String.self, forKey: .state)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

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

            phone = try container.decode(String.self, forKey: .phone)

            addressType = try container.decode(String.self, forKey: .addressType)

            pincode = try container.decode(Int.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            longitude = try container.decode(Double.self, forKey: .longitude)

            country = try container.decode(String.self, forKey: .country)

            address1 = try container.decode(String.self, forKey: .address1)

            updatedAt = try container.decode(String.self, forKey: .updatedAt)

            do {
                version = try container.decode(String.self, forKey: .version)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            latitude = try container.decode(Double.self, forKey: .latitude)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(addressCategory, forKey: .addressCategory)

            try? container.encodeIfPresent(createdAt, forKey: .createdAt)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encode(phone, forKey: .phone)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)

            try? container.encodeIfPresent(version, forKey: .version)

            try? container.encodeIfPresent(latitude, forKey: .latitude)
        }
    }
}
