

import Foundation
public extension PlatformClient {
    /*
         Model: RtoAddress1
         Used By: Order
     */

    class RtoAddress1: Codable {
        public var companyId: Int

        public var state: String

        public var city: String

        public var name: String

        public var locationType: String

        public var rtoaId: Int

        public var phone: String

        public var code: String?

        public var pincode: String

        public var latitude: Double

        public var storeEmail: String

        public var contactPerson: String

        public var address2: String?

        public var storeAddressJson: StoreAddress

        public var address1: String

        public var longitude: Double

        public var country: String

        public enum CodingKeys: String, CodingKey {
            case companyId = "company_id"

            case state

            case city

            case name

            case locationType = "location_type"

            case rtoaId = "rtoa_id"

            case phone

            case code

            case pincode

            case latitude

            case storeEmail = "store_email"

            case contactPerson = "contact_person"

            case address2

            case storeAddressJson = "store_address_json"

            case address1

            case longitude

            case country
        }

        public init(address1: String, address2: String? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, latitude: Double, locationType: String, longitude: Double, name: String, phone: String, pincode: String, rtoaId: Int, state: String, storeAddressJson: StoreAddress, storeEmail: String) {
            self.companyId = companyId

            self.state = state

            self.city = city

            self.name = name

            self.locationType = locationType

            self.rtoaId = rtoaId

            self.phone = phone

            self.code = code

            self.pincode = pincode

            self.latitude = latitude

            self.storeEmail = storeEmail

            self.contactPerson = contactPerson

            self.address2 = address2

            self.storeAddressJson = storeAddressJson

            self.address1 = address1

            self.longitude = longitude

            self.country = country
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            companyId = try container.decode(Int.self, forKey: .companyId)

            state = try container.decode(String.self, forKey: .state)

            city = try container.decode(String.self, forKey: .city)

            name = try container.decode(String.self, forKey: .name)

            locationType = try container.decode(String.self, forKey: .locationType)

            rtoaId = try container.decode(Int.self, forKey: .rtoaId)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            latitude = try container.decode(Double.self, forKey: .latitude)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            address1 = try container.decode(String.self, forKey: .address1)

            longitude = try container.decode(Double.self, forKey: .longitude)

            country = try container.decode(String.self, forKey: .country)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(rtoaId, forKey: .rtoaId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(country, forKey: .country)
        }
    }
}
