

import Foundation
public extension PlatformClient {
    /*
         Model: BillingInfo
         Used By: Order
     */

    class BillingInfo: Codable {
        public var alternateEmail: String?

        public var countryCode: String?

        public var stateCode: String?

        public var country: String

        public var primaryMobileNumber: String

        public var houseNo: String?

        public var floorNo: String?

        public var city: String

        public var middleName: String?

        public var alternateMobileNumber: String?

        public var title: String?

        public var pincode: String

        public var firstName: String

        public var lastName: String?

        public var customerCode: String?

        public var address2: String?

        public var gender: String?

        public var state: String

        public var externalCustomerCode: String?

        public var primaryEmail: String

        public var address1: String

        public enum CodingKeys: String, CodingKey {
            case alternateEmail = "alternate_email"

            case countryCode = "country_code"

            case stateCode = "state_code"

            case country

            case primaryMobileNumber = "primary_mobile_number"

            case houseNo = "house_no"

            case floorNo = "floor_no"

            case city

            case middleName = "middle_name"

            case alternateMobileNumber = "alternate_mobile_number"

            case title

            case pincode

            case firstName = "first_name"

            case lastName = "last_name"

            case customerCode = "customer_code"

            case address2

            case gender

            case state

            case externalCustomerCode = "external_customer_code"

            case primaryEmail = "primary_email"

            case address1
        }

        public init(address1: String, address2: String? = nil, alternateEmail: String? = nil, alternateMobileNumber: String? = nil, city: String, country: String, countryCode: String? = nil, customerCode: String? = nil, externalCustomerCode: String? = nil, firstName: String, floorNo: String? = nil, gender: String? = nil, houseNo: String? = nil, lastName: String? = nil, middleName: String? = nil, pincode: String, primaryEmail: String, primaryMobileNumber: String, state: String, stateCode: String? = nil, title: String? = nil) {
            self.alternateEmail = alternateEmail

            self.countryCode = countryCode

            self.stateCode = stateCode

            self.country = country

            self.primaryMobileNumber = primaryMobileNumber

            self.houseNo = houseNo

            self.floorNo = floorNo

            self.city = city

            self.middleName = middleName

            self.alternateMobileNumber = alternateMobileNumber

            self.title = title

            self.pincode = pincode

            self.firstName = firstName

            self.lastName = lastName

            self.customerCode = customerCode

            self.address2 = address2

            self.gender = gender

            self.state = state

            self.externalCustomerCode = externalCustomerCode

            self.primaryEmail = primaryEmail

            self.address1 = address1
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                alternateEmail = try container.decode(String.self, forKey: .alternateEmail)

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
                stateCode = try container.decode(String.self, forKey: .stateCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            country = try container.decode(String.self, forKey: .country)

            primaryMobileNumber = try container.decode(String.self, forKey: .primaryMobileNumber)

            do {
                houseNo = try container.decode(String.self, forKey: .houseNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                floorNo = try container.decode(String.self, forKey: .floorNo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                middleName = try container.decode(String.self, forKey: .middleName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                alternateMobileNumber = try container.decode(String.self, forKey: .alternateMobileNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            pincode = try container.decode(String.self, forKey: .pincode)

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                customerCode = try container.decode(String.self, forKey: .customerCode)

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
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                externalCustomerCode = try container.decode(String.self, forKey: .externalCustomerCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            primaryEmail = try container.decode(String.self, forKey: .primaryEmail)

            address1 = try container.decode(String.self, forKey: .address1)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(alternateEmail, forKey: .alternateEmail)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(stateCode, forKey: .stateCode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(primaryMobileNumber, forKey: .primaryMobileNumber)

            try? container.encodeIfPresent(houseNo, forKey: .houseNo)

            try? container.encodeIfPresent(floorNo, forKey: .floorNo)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(middleName, forKey: .middleName)

            try? container.encodeIfPresent(alternateMobileNumber, forKey: .alternateMobileNumber)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(customerCode, forKey: .customerCode)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(externalCustomerCode, forKey: .externalCustomerCode)

            try? container.encodeIfPresent(primaryEmail, forKey: .primaryEmail)

            try? container.encodeIfPresent(address1, forKey: .address1)
        }
    }
}
