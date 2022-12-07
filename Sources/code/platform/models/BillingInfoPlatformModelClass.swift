

import Foundation
public extension PlatformClient {
    /*
         Model: BillingInfo
         Used By: OrderManage
     */

    class BillingInfo: Codable {
        public var address1: String

        public var alternateMobileNumber: String?

        public var firstName: String

        public var primaryMobileNumber: String

        public var country: String

        public var middleName: String?

        public var gender: String?

        public var floorNo: String

        public var city: String

        public var pincode: String

        public var lastName: String?

        public var stateCode: String

        public var customerCode: String?

        public var state: String

        public var title: String?

        public var address2: String?

        public var alternateEmail: String?

        public var externalCustomerCode: String?

        public var houseNo: String

        public var primaryEmail: String

        public var countryCode: String

        public enum CodingKeys: String, CodingKey {
            case address1

            case alternateMobileNumber = "alternate_mobile_number"

            case firstName = "first_name"

            case primaryMobileNumber = "primary_mobile_number"

            case country

            case middleName = "middle_name"

            case gender

            case floorNo = "floor_no"

            case city

            case pincode

            case lastName = "last_name"

            case stateCode = "state_code"

            case customerCode = "customer_code"

            case state

            case title

            case address2

            case alternateEmail = "alternate_email"

            case externalCustomerCode = "external_customer_code"

            case houseNo = "house_no"

            case primaryEmail = "primary_email"

            case countryCode = "country_code"
        }

        public init(address1: String, address2: String? = nil, alternateEmail: String? = nil, alternateMobileNumber: String? = nil, city: String, country: String, countryCode: String, customerCode: String? = nil, externalCustomerCode: String? = nil, firstName: String, floorNo: String, gender: String? = nil, houseNo: String, lastName: String? = nil, middleName: String? = nil, pincode: String, primaryEmail: String, primaryMobileNumber: String, state: String, stateCode: String, title: String? = nil) {
            self.address1 = address1

            self.alternateMobileNumber = alternateMobileNumber

            self.firstName = firstName

            self.primaryMobileNumber = primaryMobileNumber

            self.country = country

            self.middleName = middleName

            self.gender = gender

            self.floorNo = floorNo

            self.city = city

            self.pincode = pincode

            self.lastName = lastName

            self.stateCode = stateCode

            self.customerCode = customerCode

            self.state = state

            self.title = title

            self.address2 = address2

            self.alternateEmail = alternateEmail

            self.externalCustomerCode = externalCustomerCode

            self.houseNo = houseNo

            self.primaryEmail = primaryEmail

            self.countryCode = countryCode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            address1 = try container.decode(String.self, forKey: .address1)

            do {
                alternateMobileNumber = try container.decode(String.self, forKey: .alternateMobileNumber)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            firstName = try container.decode(String.self, forKey: .firstName)

            primaryMobileNumber = try container.decode(String.self, forKey: .primaryMobileNumber)

            country = try container.decode(String.self, forKey: .country)

            do {
                middleName = try container.decode(String.self, forKey: .middleName)

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

            floorNo = try container.decode(String.self, forKey: .floorNo)

            city = try container.decode(String.self, forKey: .city)

            pincode = try container.decode(String.self, forKey: .pincode)

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            stateCode = try container.decode(String.self, forKey: .stateCode)

            do {
                customerCode = try container.decode(String.self, forKey: .customerCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            state = try container.decode(String.self, forKey: .state)

            do {
                title = try container.decode(String.self, forKey: .title)

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

            houseNo = try container.decode(String.self, forKey: .houseNo)

            primaryEmail = try container.decode(String.self, forKey: .primaryEmail)

            countryCode = try container.decode(String.self, forKey: .countryCode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(address1, forKey: .address1)

            try? container.encodeIfPresent(alternateMobileNumber, forKey: .alternateMobileNumber)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(primaryMobileNumber, forKey: .primaryMobileNumber)

            try? container.encodeIfPresent(country, forKey: .country)

            try? container.encodeIfPresent(middleName, forKey: .middleName)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(floorNo, forKey: .floorNo)

            try? container.encodeIfPresent(city, forKey: .city)

            try? container.encodeIfPresent(pincode, forKey: .pincode)

            try? container.encodeIfPresent(lastName, forKey: .lastName)

            try? container.encodeIfPresent(stateCode, forKey: .stateCode)

            try? container.encodeIfPresent(customerCode, forKey: .customerCode)

            try? container.encodeIfPresent(state, forKey: .state)

            try? container.encodeIfPresent(title, forKey: .title)

            try? container.encodeIfPresent(address2, forKey: .address2)

            try? container.encodeIfPresent(alternateEmail, forKey: .alternateEmail)

            try? container.encodeIfPresent(externalCustomerCode, forKey: .externalCustomerCode)

            try? container.encodeIfPresent(houseNo, forKey: .houseNo)

            try? container.encodeIfPresent(primaryEmail, forKey: .primaryEmail)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)
        }
    }
}
