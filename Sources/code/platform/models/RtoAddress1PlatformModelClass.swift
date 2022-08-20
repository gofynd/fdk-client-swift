

import Foundation
public extension PlatformClient {
    /*
         Model: RtoAddress1
         Used By: Order
     */

    class RtoAddress1: Codable {
        public var contactPerson: String

        public var longitude: Double

        public var name: String

        public var city: String

        public var storeAddressJson: StoreAddress

        public var state: String

        public var country: String

        public var address1: String

        public var companyId: Int

        public var phone: String

        public var storeEmail: String

        public var pincode: String

        public var locationType: String

        public var rtoaId: Int

        public var code: String?

        public var address2: String?

        public var latitude: Double

        public enum CodingKeys: String, CodingKey {
            case contactPerson = "contact_person"

            case longitude

            case name

            case city

            case storeAddressJson = "store_address_json"

            case state

            case country

            case address1

            case companyId = "company_id"

            case phone

            case storeEmail = "store_email"

            case pincode

            case locationType = "location_type"

            case rtoaId = "rtoa_id"

            case code

            case address2

            case latitude
        }

        public init(address1: String, address2: String? = nil, city: String, code: String? = nil, companyId: Int, contactPerson: String, country: String, latitude: Double, locationType: String, longitude: Double, name: String, phone: String, pincode: String, rtoaId: Int, state: String, storeAddressJson: StoreAddress, storeEmail: String) {
            self.contactPerson = contactPerson

            self.longitude = longitude

            self.name = name

            self.city = city

            self.storeAddressJson = storeAddressJson

            self.state = state

            self.country = country

            self.address1 = address1

            self.companyId = companyId

            self.phone = phone

            self.storeEmail = storeEmail

            self.pincode = pincode

            self.locationType = locationType

            self.rtoaId = rtoaId

            self.code = code

            self.address2 = address2

            self.latitude = latitude
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            contactPerson = try container.decode(String.self, forKey: .contactPerson)

            longitude = try container.decode(Double.self, forKey: .longitude)

            name = try container.decode(String.self, forKey: .name)

            city = try container.decode(String.self, forKey: .city)

            storeAddressJson = try container.decode(StoreAddress.self, forKey: .storeAddressJson)

            state = try container.decode(String.self, forKey: .state)

            country = try container.decode(String.self, forKey: .country)

            address1 = try container.decode(String.self, forKey: .address1)

            companyId = try container.decode(Int.self, forKey: .companyId)

            phone = try container.decode(String.self, forKey: .phone)

            storeEmail = try container.decode(String.self, forKey: .storeEmail)

            pincode = try container.decode(String.self, forKey: .pincode)

            locationType = try container.decode(String.self, forKey: .locationType)

            rtoaId = try container.decode(Int.self, forKey: .rtoaId)

            do {
                code = try container.decode(String.self, forKey: .code)

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

            latitude = try container.decode(Double.self, forKey: .latitude)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(contactPerson, forKey: .contactPerson)

            try? container.encodeIfPresent(longitude, forKey: .longitude)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(storeAddressJson, forKey: .storeAddressJson)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(storeEmail, forKey: .storeEmail)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(locationType, forKey: .locationType)

            try? container.encodeIfPresent(rtoaId, forKey: .rtoaId)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(latitude, forKey: .latitude)
        }
    }
}
