

import Foundation
public extension PlatformClient {
    /*
         Model: BillingInfo
         Used By: Order
     */

    class BillingInfo: Codable {
        public var country: String

        public var primaryEmail: String

        public var pincode: String

        public var title: String?

        public var customerCode: String?

        public var floorNo: String

        public var countryCode: String

        public var firstName: String

        public var stateCode: String

        public var houseNo: String

        public var city: String

        public var alternateEmail: String?

        public var primaryMobileNumber: String

        public var address1: String

        public var address2: String?

        public var lastName: String?

        public var externalCustomerCode: String?

        public var middleName: String?

        public var state: String

        public var gender: String?

        public var alternateMobileNumber: String?

        public enum CodingKeys: String, CodingKey {
            case country

            case primaryEmail = "primary_email"

            case pincode

            case title

            case customerCode = "customer_code"

            case floorNo = "floor_no"

            case countryCode = "country_code"

            case firstName = "first_name"

            case stateCode = "state_code"

            case houseNo = "house_no"

            case city

            case alternateEmail = "alternate_email"

            case primaryMobileNumber = "primary_mobile_number"

            case address1

            case address2

            case lastName = "last_name"

            case externalCustomerCode = "external_customer_code"

            case middleName = "middle_name"

            case state

            case gender

            case alternateMobileNumber = "alternate_mobile_number"
        }

        public init(address1: String, address2: String? = nil, alternateEmail: String? = nil, alternateMobileNumber: String? = nil, city: String, country: String, countryCode: String, customerCode: String? = nil, externalCustomerCode: String? = nil, firstName: String, floorNo: String, gender: String? = nil, houseNo: String, lastName: String? = nil, middleName: String? = nil, pincode: String, primaryEmail: String, primaryMobileNumber: String, state: String, stateCode: String, title: String? = nil) {
            self.country = country

            self.primaryEmail = primaryEmail

            self.pincode = pincode

            self.title = title

            self.customerCode = customerCode

            self.floorNo = floorNo

            self.countryCode = countryCode

            self.firstName = firstName

            self.stateCode = stateCode

            self.houseNo = houseNo

            self.city = city

            self.alternateEmail = alternateEmail

            self.primaryMobileNumber = primaryMobileNumber

            self.address1 = address1

            self.address2 = address2

            self.lastName = lastName

            self.externalCustomerCode = externalCustomerCode

            self.middleName = middleName

            self.state = state

            self.gender = gender

            self.alternateMobileNumber = alternateMobileNumber
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            country = try container.decode(String.self, forKey: .country)

            primaryEmail = try container.decode(String.self, forKey: .primaryEmail)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                title = try container.decode(String.self, forKey: .title)

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

            floorNo = try container.decode(String.self, forKey: .floorNo)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            firstName = try container.decode(String.self, forKey: .firstName)

            stateCode = try container.decode(String.self, forKey: .stateCode)

            houseNo = try container.decode(String.self, forKey: .houseNo)

            city = try container.decode(String.self, forKey: .city)

            do {
                alternateEmail = try container.decode(String.self, forKey: .alternateEmail)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            primaryMobileNumber = try container.decode(String.self, forKey: .primaryMobileNumber)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                address2 = try container.decode(String.self, forKey: .address2)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

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

            do {
                middleName = try container.decode(String.self, forKey: .middleName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                gender = try container.decode(String.self, forKey: .gender)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(primaryEmail, forKey: .primaryEmail)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(customerCode, forKey: .customerCode)

            try? container.encodeIfPresent(floorNo, forKey: .floorNo)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(stateCode, forKey: .stateCode)

            try? container.encodeIfPresent(houseNo, forKey: .houseNo)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(alternateEmail, forKey: .alternateEmail)

            try? container.encodeIfPresent(primaryMobileNumber, forKey: .primaryMobileNumber)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(externalCustomerCode, forKey: .externalCustomerCode)

            try? container.encodeIfPresent(middleName, forKey: .middleName)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(alternateMobileNumber, forKey: .alternateMobileNumber)
        }
    }
}
