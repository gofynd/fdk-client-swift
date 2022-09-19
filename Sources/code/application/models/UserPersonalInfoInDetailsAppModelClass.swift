

import Foundation
public extension ApplicationClient {
    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var pan: String?

        public var mothersName: String?

        public var firstName: String

        public var emailVerified: Bool

        public var passport: String?

        public var addressAsPerId: KYCAddress

        public var dob: String

        public var fathersName: String?

        public var drivingLicense: String?

        public var middleName: String?

        public var lastName: String?

        public var email: String

        public var phone: String

        public var voterId: String?

        public var gender: String?

        public var mobileVerified: Bool

        public enum CodingKeys: String, CodingKey {
            case pan

            case mothersName = "mothers_name"

            case firstName = "first_name"

            case emailVerified = "email_verified"

            case passport

            case addressAsPerId = "address_as_per_id"

            case dob

            case fathersName = "fathers_name"

            case drivingLicense = "driving_license"

            case middleName = "middle_name"

            case lastName = "last_name"

            case email

            case phone

            case voterId = "voter_id"

            case gender

            case mobileVerified = "mobile_verified"
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            self.pan = pan

            self.mothersName = mothersName

            self.firstName = firstName

            self.emailVerified = emailVerified

            self.passport = passport

            self.addressAsPerId = addressAsPerId

            self.dob = dob

            self.fathersName = fathersName

            self.drivingLicense = drivingLicense

            self.middleName = middleName

            self.lastName = lastName

            self.email = email

            self.phone = phone

            self.voterId = voterId

            self.gender = gender

            self.mobileVerified = mobileVerified
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pan = try container.decode(String.self, forKey: .pan)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mothersName = try container.decode(String.self, forKey: .mothersName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            firstName = try container.decode(String.self, forKey: .firstName)

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

            do {
                passport = try container.decode(String.self, forKey: .passport)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

            dob = try container.decode(String.self, forKey: .dob)

            do {
                fathersName = try container.decode(String.self, forKey: .fathersName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

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
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                voterId = try container.decode(String.self, forKey: .voterId)

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

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(pan, forKey: .pan)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encode(passport, forKey: .passport)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encode(dob, forKey: .dob)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(voterId, forKey: .voterId)

            try? container.encode(gender, forKey: .gender)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)
        }
    }
}
