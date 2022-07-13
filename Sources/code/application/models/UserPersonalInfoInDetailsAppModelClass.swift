

import Foundation
public extension ApplicationClient {
    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var mothersName: String?

        public var emailVerified: Bool

        public var addressAsPerId: KYCAddress

        public var middleName: String?

        public var pan: String?

        public var fathersName: String?

        public var firstName: String

        public var dob: String

        public var passport: String?

        public var gender: String?

        public var email: String

        public var voterId: String?

        public var lastName: String?

        public var mobileVerified: Bool

        public var drivingLicense: String?

        public var phone: String

        public enum CodingKeys: String, CodingKey {
            case mothersName = "mothers_name"

            case emailVerified = "email_verified"

            case addressAsPerId = "address_as_per_id"

            case middleName = "middle_name"

            case pan

            case fathersName = "fathers_name"

            case firstName = "first_name"

            case dob

            case passport

            case gender

            case email

            case voterId = "voter_id"

            case lastName = "last_name"

            case mobileVerified = "mobile_verified"

            case drivingLicense = "driving_license"

            case phone
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            self.mothersName = mothersName

            self.emailVerified = emailVerified

            self.addressAsPerId = addressAsPerId

            self.middleName = middleName

            self.pan = pan

            self.fathersName = fathersName

            self.firstName = firstName

            self.dob = dob

            self.passport = passport

            self.gender = gender

            self.email = email

            self.voterId = voterId

            self.lastName = lastName

            self.mobileVerified = mobileVerified

            self.drivingLicense = drivingLicense

            self.phone = phone
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mothersName = try container.decode(String.self, forKey: .mothersName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

            do {
                middleName = try container.decode(String.self, forKey: .middleName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                pan = try container.decode(String.self, forKey: .pan)

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

            firstName = try container.decode(String.self, forKey: .firstName)

            dob = try container.decode(String.self, forKey: .dob)

            do {
                passport = try container.decode(String.self, forKey: .passport)

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

            email = try container.decode(String.self, forKey: .email)

            do {
                voterId = try container.decode(String.self, forKey: .voterId)

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

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)

            do {
                drivingLicense = try container.decode(String.self, forKey: .drivingLicense)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encode(pan, forKey: .pan)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(dob, forKey: .dob)

            try? container.encode(passport, forKey: .passport)

            try? container.encode(gender, forKey: .gender)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(voterId, forKey: .voterId)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encodeIfPresent(phone, forKey: .phone)
        }
    }
}
