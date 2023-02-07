

import Foundation
public extension PlatformClient {
    /*
         Model: BillingInfo
         Used By: Order
     */

    class BillingInfo: Codable {
        public var houseNo: String

        public var gender: String?

        public var countryCode: String

        public var state: String

        public var address2: String?

        public var primaryMobileNumber: String

        public var alternateMobileNumber: String?

        public var city: String

        public var title: String?

        public var stateCode: String

        public var pincode: String

        public var country: String

        public var alternateEmail: String?

        public var firstName: String

        public var lastName: String?

        public var floorNo: String

        public var middleName: String?

        public var address1: String

        public var primaryEmail: String

        public var customerCode: String?

        public var externalCustomerCode: String?

        public enum CodingKeys: String, CodingKey {
            case houseNo = "house_no"

            case gender

            case countryCode = "country_code"

            case state

            case address2

            case primaryMobileNumber = "primary_mobile_number"

            case alternateMobileNumber = "alternate_mobile_number"

            case city

            case title

            case stateCode = "state_code"

            case pincode

            case country

            case alternateEmail = "alternate_email"

            case firstName = "first_name"

            case lastName = "last_name"

            case floorNo = "floor_no"

            case middleName = "middle_name"

            case address1

            case primaryEmail = "primary_email"

            case customerCode = "customer_code"

            case externalCustomerCode = "external_customer_code"
        }

        public init(address1: String, address2: String? = nil, alternateEmail: String? = nil, alternateMobileNumber: String? = nil, city: String, country: String, countryCode: String, customerCode: String? = nil, externalCustomerCode: String? = nil, firstName: String, floorNo: String, gender: String? = nil, houseNo: String, lastName: String? = nil, middleName: String? = nil, pincode: String, primaryEmail: String, primaryMobileNumber: String, state: String, stateCode: String, title: String? = nil) {
            self.houseNo = houseNo

            self.gender = gender

            self.countryCode = countryCode

            self.state = state

            self.address2 = address2

            self.primaryMobileNumber = primaryMobileNumber

            self.alternateMobileNumber = alternateMobileNumber

            self.city = city

            self.title = title

            self.stateCode = stateCode

            self.pincode = pincode

            self.country = country

            self.alternateEmail = alternateEmail

            self.firstName = firstName

            self.lastName = lastName

            self.floorNo = floorNo

            self.middleName = middleName

            self.address1 = address1

            self.primaryEmail = primaryEmail

            self.customerCode = customerCode

            self.externalCustomerCode = externalCustomerCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            houseNo = try container.decode(String.self, forKey: .houseNo)

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            countryCode = try container.decode(String.self, forKey: .countryCode)

            state = try container.decode(String.self, forKey: .state)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            primaryMobileNumber = try container.decode(String.self, forKey: .primaryMobileNumber)

            do {
                alternateMobileNumber = try container.decode(String.self, forKey: .alternateMobileNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stateCode = try container.decode(String.self, forKey: .stateCode)

            pincode = try container.decode(String.self, forKey: .pincode)

            country = try container.decode(String.self, forKey: .country)

            do {
                alternateEmail = try container.decode(String.self, forKey: .alternateEmail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            floorNo = try container.decode(String.self, forKey: .floorNo)

            do {
                middleName = try container.decode(String.self, forKey: .middleName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            primaryEmail = try container.decode(String.self, forKey: .primaryEmail)

            do {
                customerCode = try container.decode(String.self, forKey: .customerCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                externalCustomerCode = try container.decode(String.self, forKey: .externalCustomerCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(houseNo, forKey: .houseNo)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(primaryMobileNumber, forKey: .primaryMobileNumber)

            try? container.encodeIfPresent(alternateMobileNumber, forKey: .alternateMobileNumber)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(stateCode, forKey: .stateCode)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(alternateEmail, forKey: .alternateEmail)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(floorNo, forKey: .floorNo)

            try? container.encodeIfPresent(middleName, forKey: .middleName)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(primaryEmail, forKey: .primaryEmail)

            try? container.encodeIfPresent(customerCode, forKey: .customerCode)

            try? container.encodeIfPresent(externalCustomerCode, forKey: .externalCustomerCode)
        }
    }
}
