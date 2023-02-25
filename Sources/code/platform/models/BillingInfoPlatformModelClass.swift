

import Foundation
public extension PlatformClient {
    /*
         Model: BillingInfo
         Used By: Order
     */

    class BillingInfo: Codable {
        public var stateCode: String

        public var primaryMobileNumber: String

        public var city: String

        public var countryCode: String

        public var customerCode: String?

        public var floorNo: String

        public var address2: String?

        public var gender: String?

        public var houseNo: String

        public var pincode: String

        public var lastName: String?

        public var title: String?

        public var middleName: String?

        public var alternateEmail: String?

        public var externalCustomerCode: String?

        public var country: String

        public var primaryEmail: String

        public var alternateMobileNumber: String?

        public var address1: String

        public var firstName: String

        public var state: String

        public enum CodingKeys: String, CodingKey {
            case stateCode = "state_code"

            case primaryMobileNumber = "primary_mobile_number"

            case city

            case countryCode = "country_code"

            case customerCode = "customer_code"

            case floorNo = "floor_no"

            case address2

            case gender

            case houseNo = "house_no"

            case pincode

            case lastName = "last_name"

            case title

            case middleName = "middle_name"

            case alternateEmail = "alternate_email"

            case externalCustomerCode = "external_customer_code"

            case country

            case primaryEmail = "primary_email"

            case alternateMobileNumber = "alternate_mobile_number"

            case address1

            case firstName = "first_name"

            case state
        }

        public init(address1: String, address2: String? = nil, alternateEmail: String? = nil, alternateMobileNumber: String? = nil, city: String, country: String, countryCode: String, customerCode: String? = nil, externalCustomerCode: String? = nil, firstName: String, floorNo: String, gender: String? = nil, houseNo: String, lastName: String? = nil, middleName: String? = nil, pincode: String, primaryEmail: String, primaryMobileNumber: String, state: String, stateCode: String, title: String? = nil) {
            self.stateCode = stateCode

            self.primaryMobileNumber = primaryMobileNumber

            self.city = city

            self.countryCode = countryCode

            self.customerCode = customerCode

            self.floorNo = floorNo

            self.address2 = address2

            self.gender = gender

            self.houseNo = houseNo

            self.pincode = pincode

            self.lastName = lastName

            self.title = title

            self.middleName = middleName

            self.alternateEmail = alternateEmail

            self.externalCustomerCode = externalCustomerCode

            self.country = country

            self.primaryEmail = primaryEmail

            self.alternateMobileNumber = alternateMobileNumber

            self.address1 = address1

            self.firstName = firstName

            self.state = state
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            stateCode = try container.decode(String.self, forKey: .stateCode)

            primaryMobileNumber = try container.decode(String.self, forKey: .primaryMobileNumber)

            city = try container.decode(String.self, forKey: .city)

            countryCode = try container.decode(String.self, forKey: .countryCode)

            do {
                customerCode = try container.decode(String.self, forKey: .customerCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            floorNo = try container.decode(String.self, forKey: .floorNo)

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

            houseNo = try container.decode(String.self, forKey: .houseNo)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

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

            do {
                middleName = try container.decode(String.self, forKey: .middleName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                alternateEmail = try container.decode(String.self, forKey: .alternateEmail)

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

            country = try container.decode(String.self, forKey: .country)

            primaryEmail = try container.decode(String.self, forKey: .primaryEmail)

            do {
                alternateMobileNumber = try container.decode(String.self, forKey: .alternateMobileNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            address1 = try container.decode(String.self, forKey: .address1)

            firstName = try container.decode(String.self, forKey: .firstName)

            state = try container.decode(String.self, forKey: .state)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(stateCode, forKey: .stateCode)

            try? container.encodeIfPresent(primaryMobileNumber, forKey: .primaryMobileNumber)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(customerCode, forKey: .customerCode)

            try? container.encodeIfPresent(floorNo, forKey: .floorNo)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(houseNo, forKey: .houseNo)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(middleName, forKey: .middleName)

            try? container.encodeIfPresent(alternateEmail, forKey: .alternateEmail)

            try? container.encodeIfPresent(externalCustomerCode, forKey: .externalCustomerCode)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(primaryEmail, forKey: .primaryEmail)

            try? container.encodeIfPresent(alternateMobileNumber, forKey: .alternateMobileNumber)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(state, forKey: .state)
        }
    }
}
