

import Foundation
public extension PlatformClient {
    /*
         Model: DefaultAddress
         Used By: Order
     */

    class DefaultAddress: Codable {
        public var lastName: String?

        public var name: String?

        public var provinceCode: String?

        public var countryCode: String?

        public var isDefault: Bool?

        public var id: Int?

        public var customerId: Int?

        public var firstName: String?

        public var address1: String?

        public var phone: String?

        public var countryName: String?

        public var company: String?

        public var address2: String?

        public var city: String?

        public var province: String?

        public var country: String?

        public var zip: String?

        public enum CodingKeys: String, CodingKey {
            case lastName = "last_name"

            case name

            case provinceCode = "province_code"

            case countryCode = "country_code"

            case isDefault = "is_default"

            case id

            case customerId = "customer_id"

            case firstName = "first_name"

            case address1

            case phone

            case countryName = "country_name"

            case company

            case address2

            case city

            case province

            case country

            case zip
        }

        public init(address1: String? = nil, address2: String? = nil, city: String? = nil, company: String? = nil, country: String? = nil, countryCode: String? = nil, countryName: String? = nil, customerId: Int? = nil, firstName: String? = nil, id: Int? = nil, isDefault: Bool? = nil, lastName: String? = nil, name: String? = nil, phone: String? = nil, province: String? = nil, provinceCode: String? = nil, zip: String? = nil) {
            self.lastName = lastName

            self.name = name

            self.provinceCode = provinceCode

            self.countryCode = countryCode

            self.isDefault = isDefault

            self.id = id

            self.customerId = customerId

            self.firstName = firstName

            self.address1 = address1

            self.phone = phone

            self.countryName = countryName

            self.company = company

            self.address2 = address2

            self.city = city

            self.province = province

            self.country = country

            self.zip = zip
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                name = try container.decode(String.self, forKey: .name)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                provinceCode = try container.decode(String.self, forKey: .provinceCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isDefault = try container.decode(Bool.self, forKey: .isDefault)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerId = try container.decode(Int.self, forKey: .customerId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                firstName = try container.decode(String.self, forKey: .firstName)

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
                phone = try container.decode(String.self, forKey: .phone)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryName = try container.decode(String.self, forKey: .countryName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                company = try container.decode(String.self, forKey: .company)

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
                city = try container.decode(String.self, forKey: .city)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                province = try container.decode(String.self, forKey: .province)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                country = try container.decode(String.self, forKey: .country)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                zip = try container.decode(String.self, forKey: .zip)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(provinceCode, forKey: .provinceCode)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(isDefault, forKey: .isDefault)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(customerId, forKey: .customerId)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(countryName, forKey: .countryName)

            try? container.encodeIfPresent(company, forKey: .company)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(province, forKey: .province)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(zip, forKey: .zip)
        }
    }
}
