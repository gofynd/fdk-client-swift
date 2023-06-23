

import Foundation

public extension PlatformClient.Order {
    /*
         Model: UserDetailsData
         Used By: Order
     */

    class UserDetailsData: Codable {
        public var pincode: String

        public var address1: String?

        public var landmark: String?

        public var name: String

        public var email: String?

        public var area: String?

        public var country: String

        public var addressType: String?

        public var phone: String

        public var state: String

        public var city: String

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case pincode

            case address1

            case landmark

            case name

            case email

            case area

            case country

            case addressType = "address_type"

            case phone

            case state

            case city

            case address
        }

        public init(address: String, address1: String? = nil, addressType: String? = nil, area: String? = nil, city: String, country: String, email: String? = nil, landmark: String? = nil, name: String, phone: String, pincode: String, state: String) {
            self.pincode = pincode

            self.address1 = address1

            self.landmark = landmark

            self.name = name

            self.email = email

            self.area = area

            self.country = country

            self.addressType = addressType

            self.phone = phone

            self.state = state

            self.city = city

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

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

            name = try container.decode(String.self, forKey: .name)

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

            country = try container.decode(String.self, forKey: .country)

            do {
                addressType = try container.decode(String.self, forKey: .addressType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: UserDetailsData
         Used By: Order
     */

    class UserDetailsData: Codable {
        public var pincode: String

        public var address1: String?

        public var landmark: String?

        public var name: String

        public var email: String?

        public var area: String?

        public var country: String

        public var addressType: String?

        public var phone: String

        public var state: String

        public var city: String

        public var address: String

        public enum CodingKeys: String, CodingKey {
            case pincode

            case address1

            case landmark

            case name

            case email

            case area

            case country

            case addressType = "address_type"

            case phone

            case state

            case city

            case address
        }

        public init(address: String, address1: String? = nil, addressType: String? = nil, area: String? = nil, city: String, country: String, email: String? = nil, landmark: String? = nil, name: String, phone: String, pincode: String, state: String) {
            self.pincode = pincode

            self.address1 = address1

            self.landmark = landmark

            self.name = name

            self.email = email

            self.area = area

            self.country = country

            self.addressType = addressType

            self.phone = phone

            self.state = state

            self.city = city

            self.address = address
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                address1 = try container.decode(String.self, forKey: .address1)

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

            name = try container.decode(String.self, forKey: .name)

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

            country = try container.decode(String.self, forKey: .country)

            do {
                addressType = try container.decode(String.self, forKey: .addressType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            address = try container.decode(String.self, forKey: .address)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(landmark, forKey: .landmark)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(area, forKey: .area)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(addressType, forKey: .addressType)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(address, forKey: .address)
        }
    }
}
