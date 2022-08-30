

import Foundation
public extension PlatformClient {
    /*
         Model: RtoAddress1
         Used By: Order
     */

    class RtoAddress1: Codable {
        public var contactPerson: String

        public var phone: String

        public var rtoaId: Int

        public var latitude: Double

        public var address2: String?

        public var locationType: String

        public var country: String

        public var state: String

        public var name: String

        public var address1: String

        public var storeEmail: String

        public var pincode: String

        public var storeAddressJson: StoreAddress

        public var longitude: Double

        public var code: String?

        public var city: String

        public var companyId: Int

        public enum CodingKeys: String, CodingKey {
            case contactPerson = "contact_person"

            case phone

            case rtoaId = "rtoa_id"

            case latitude

            case address2

            case locationType = "location_type"

            case country

            case state

            case name

            case address1

            case storeEmail = "store_email"

            case pincode

            case storeAddressJson = "store_address_json"

            case longitude

            case code

            case city

            case companyId = "company_id"
        }

        public init(address1: String, address2: String? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, latitude: Double, locationType: String, longitude: Double, name: String, phone: String, pincode: String, rtoaId: Int, state: String, storeAddressJson: StoreAddress, storeEmail: String) {
            self.contactPerson = contactPerson

            self.phone = phone

            self.rtoaId = rtoaId

            self.latitude = latitude

            self.address2 = address2

            self.locationType = locationType

            self.country = country

            self.state = state

            self.name = name

            self.address1 = address1

            self.storeEmail = storeEmail

            self.pincode = pincode

            self.storeAddressJson = storeAddressJson

            self.longitude = longitude

            self.code = code

            self.city = city

            self.companyId = companyId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            phone = try container.decode(String.self, forKey: .phone)

            rtoaId = try container.decode(Int.self, forKey: .rtoaId)

            latitude = try container.decode(Double.self, forKey: .latitude)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            locationType = try container.decode(String.self, forKey: .locationType)

            country = try container.decode(String.self, forKey: .country)

            state = try container.decode(String.self, forKey: .state)

            name = try container.decode(String.self, forKey: .name)

            address1 = try container.decode(String.self, forKey: .address1)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            pincode = try container.decode(String.self, forKey: .pincode)

            storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            longitude = try container.decode(Double.self, forKey: .longitude)

            do {
                code = try container.decode(String.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            companyId = try container.decode(Int.self, forKey: .companyId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(rtoaId, forKey: .rtoaId)

            try? container.encodeIfPresent(latitude, forKey: .latitude)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(companyId, forKey: .companyId)
        }
    }
}
