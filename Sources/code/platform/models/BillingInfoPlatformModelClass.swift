

import Foundation
public extension PlatformClient {
    /*
         Model: BillingInfo
         Used By: Order
     */

    class BillingInfo: Codable {
        public var title: String?

        public var city: String

        public var alternateEmail: String?

        public var primaryEmail: String

        public var country: String

        public var countryCode: String

        public var floorNo: String

        public var externalCustomerCode: String?

        public var customerCode: String?

        public var address1: String

        public var address2: String?

        public var alternateMobileNumber: String?

        public var gender: String?

        public var middleName: String?

        public var houseNo: String

        public var lastName: String?

        public var stateCode: String

        public var state: String

        public var pincode: String

        public var firstName: String

        public var primaryMobileNumber: String

        public enum CodingKeys: String, CodingKey {
            case title

            case city

            case alternateEmail = "alternate_email"

            case primaryEmail = "primary_email"

            case country

            case countryCode = "country_code"

            case floorNo = "floor_no"

            case externalCustomerCode = "external_customer_code"

            case customerCode = "customer_code"

            case address1

            case address2

            case alternateMobileNumber = "alternate_mobile_number"

            case gender

            case middleName = "middle_name"

            case houseNo = "house_no"

            case lastName = "last_name"

            case stateCode = "state_code"

            case state

            case pincode

            case firstName = "first_name"

            case primaryMobileNumber = "primary_mobile_number"
        }

        public init(address1: String, address2: String? = nil, alternateEmail: String? = nil, alternateMobileNumber: String? = nil, city: String, country: String, countryCode: String, customerCode: String? = nil, externalCustomerCode: String? = nil, firstName: String, floorNo: String, gender: String? = nil, houseNo: String, lastName: String? = nil, middleName: String? = nil, pincode: String, primaryEmail: String, primaryMobileNumber: String, state: String, stateCode: String, title: String? = nil) {
            self.title = title

            self.city = city

            self.alternateEmail = alternateEmail

            self.primaryEmail = primaryEmail

            self.country = country

            self.countryCode = countryCode

            self.floorNo = floorNo

            self.externalCustomerCode = externalCustomerCode

            self.customerCode = customerCode

            self.address1 = address1

            self.address2 = address2

            self.alternateMobileNumber = alternateMobileNumber

            self.gender = gender

            self.middleName = middleName

            self.houseNo = houseNo

            self.lastName = lastName

            self.stateCode = stateCode

            self.state = state

            self.pincode = pincode

            self.firstName = firstName

            self.primaryMobileNumber = primaryMobileNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                title = try container.decode(String.self, forKey: .title)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            city = try container.decode(String.self, forKey: .city)

            do {
                alternateEmail = try container.decode(String.self, forKey: .alternateEmail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            primaryEmail = try container.decode(String.self, forKey: .primaryEmail)

            country = try container.decode(String.self, forKey: .country)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            floorNo = try container.decode(String.self, forKey: .floorNo)

            do {
                externalCustomerCode = try container.decode(String.self, forKey: .externalCustomerCode)

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

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

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
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                middleName = try container.decode(String.self, forKey: .middleName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            houseNo = try container.decode(String.self, forKey: .houseNo)

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stateCode = try container.decode(String.self, forKey: .stateCode)

            state = try container.decode(String.self, forKey: .state)

            pincode = try container.decode(String.self, forKey: .pincode)

            firstName = try container.decode(String.self, forKey: .firstName)

            primaryMobileNumber = try container.decode(String.self, forKey: .primaryMobileNumber)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(alternateEmail, forKey: .alternateEmail)

            try? container.encodeIfPresent(primaryEmail, forKey: .primaryEmail)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(floorNo, forKey: .floorNo)

            try? container.encodeIfPresent(externalCustomerCode, forKey: .externalCustomerCode)

            try? container.encodeIfPresent(customerCode, forKey: .customerCode)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(alternateMobileNumber, forKey: .alternateMobileNumber)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(middleName, forKey: .middleName)

            try? container.encodeIfPresent(houseNo, forKey: .houseNo)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(stateCode, forKey: .stateCode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(primaryMobileNumber, forKey: .primaryMobileNumber)
        }
    }
}
