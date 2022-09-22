

import Foundation
public extension PlatformClient {
    /*
         Model: RtoAddress1
         Used By: Order
     */

    class RtoAddress1: Codable {
        public var state: String

        public var companyId: Int

        public var name: String

        public var phone: String

        public var rtoaId: Int

        public var country: String

        public var pincode: String

        public var city: String

        public var contactPerson: String

        public var latitude: Double

        public var locationType: String

        public var storeAddressJson: StoreAddress

        public var storeEmail: String

        public var address2: String?

        public var code: String?

        public var longitude: Double

        public var address1: String

        public enum CodingKeys: String, CodingKey {
            case state

            case companyId = "company_id"

            case name

            case phone

            case rtoaId = "rtoa_id"

            case country

            case pincode

            case city

            case contactPerson = "contact_person"

            case latitude

            case locationType = "location_type"

            case storeAddressJson = "store_address_json"

            case storeEmail = "store_email"

            case address2

            case code

            case longitude

            case address1
        }

        public init(address1: String, address2: String? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, latitude: Double, locationType: String, longitude: Double, name: String, phone: String, pincode: String, rtoaId: Int, state: String, storeAddressJson: StoreAddress, storeEmail: String) {
            self.state = state

            self.companyId = companyId

            self.name = name

            self.phone = phone

            self.rtoaId = rtoaId

            self.country = country

            self.pincode = pincode

            self.city = city

            self.contactPerson = contactPerson

            self.latitude = latitude

            self.locationType = locationType

            self.storeAddressJson = storeAddressJson

            self.storeEmail = storeEmail

            self.address2 = address2

            self.code = code

            self.longitude = longitude

            self.address1 = address1
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            state = try container.decode(String.self, forKey: .state)

            companyId = try container.decode(Int.self, forKey: .companyId)

            name = try container.decode(String.self, forKey: .name)

            phone = try container.decode(String.self, forKey: .phone)

            rtoaId = try container.decode(Int.self, forKey: .rtoaId)

            country = try container.decode(String.self, forKey: .country)

            pincode = try container.decode(String.self, forKey: .pincode)

            city = try container.decode(String.self, forKey: .city)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            latitude = try container.decode(Double.self, forKey: .latitude)

            locationType = try container.decode(String.self, forKey: .locationType)

            storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            longitude = try container.decode(Double.self, forKey: .longitude)

            address1 = try container.decode(String.self, forKey: .address1)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(rtoaId, forKey: .rtoaId)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(address1, forKey: .address1)
        }
    }
}
