

import Foundation
public extension ApplicationClient {
    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var dob: String

        public var firstName: String

        public var drivingLicense: String?

        public var middleName: String?

        public var gender: String?

        public var lastName: String?

        public var fathersName: String?

        public var addressAsPerId: KYCAddress

        public var passport: String?

        public var voterId: String?

        public var emailVerified: Bool

        public var mobileVerified: Bool

        public var mothersName: String?

        public var email: String

        public var pan: String?

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case dob

            case firstName = "first_name"

            case drivingLicense = "driving_license"

            case middleName = "middle_name"

            case gender

            case lastName = "last_name"

            case fathersName = "fathers_name"

            case addressAsPerId = "address_as_per_id"

            case passport

            case voterId = "voter_id"

            case emailVerified = "email_verified"

            case mobileVerified = "mobile_verified"

            case mothersName = "mothers_name"

            case email

            case pan

            case phone
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            self.dob = dob

            self.firstName = firstName

            self.drivingLicense = drivingLicense

            self.middleName = middleName

            self.gender = gender

            self.lastName = lastName

            self.fathersName = fathersName

            self.addressAsPerId = addressAsPerId

            self.passport = passport

            self.voterId = voterId

            self.emailVerified = emailVerified

            self.mobileVerified = mobileVerified

            self.mothersName = mothersName

            self.email = email

            self.pan = pan

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            dob = try container.decode(String.self, forKey: .dob)

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                drivingLicense = try container.decode(String.self, forKey: .drivingLicense)

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
                gender = try container.decode(String.self, forKey: .gender)

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
                fathersName = try container.decode(String.self, forKey: .fathersName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

            do {
                passport = try container.decode(String.self, forKey: .passport)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                voterId = try container.decode(String.self, forKey: .voterId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)

            do {
                mothersName = try container.decode(String.self, forKey: .mothersName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            do {
                pan = try container.decode(String.self, forKey: .pan)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(dob, forKey: .dob)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encode(gender, forKey: .gender)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encode(passport, forKey: .passport)

            try? container.encode(voterId, forKey: .voterId)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(pan, forKey: .pan)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
