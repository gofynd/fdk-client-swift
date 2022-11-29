

import Foundation
public extension ApplicationClient {
    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var mothersName: String?

        public var lastName: String?

        public var fathersName: String?

        public var emailVerified: Bool

        public var email: String?

        public var addressAsPerId: KYCAddress

        public var voterId: String?

        public var drivingLicense: String?

        public var middleName: String?

        public var passport: String?

        public var gender: String?

        public var mobileVerified: Bool

        public var phone: String

        public var dob: String

        public var firstName: String

        public var pan: String?

        public enum CodingKeys: String, CodingKey {
            case mothersName = "mothers_name"

            case lastName = "last_name"

            case fathersName = "fathers_name"

            case emailVerified = "email_verified"

            case email

            case addressAsPerId = "address_as_per_id"

            case voterId = "voter_id"

            case drivingLicense = "driving_license"

            case middleName = "middle_name"

            case passport

            case gender

            case mobileVerified = "mobile_verified"

            case phone

            case dob

            case firstName = "first_name"

            case pan
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String? = nil, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            self.mothersName = mothersName

            self.lastName = lastName

            self.fathersName = fathersName

            self.emailVerified = emailVerified

            self.email = email

            self.addressAsPerId = addressAsPerId

            self.voterId = voterId

            self.drivingLicense = drivingLicense

            self.middleName = middleName

            self.passport = passport

            self.gender = gender

            self.mobileVerified = mobileVerified

            self.phone = phone

            self.dob = dob

            self.firstName = firstName

            self.pan = pan
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                mothersName = try container.decode(String.self, forKey: .mothersName)

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

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

            do {
                voterId = try container.decode(String.self, forKey: .voterId)

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

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)

            phone = try container.decode(String.self, forKey: .phone)

            dob = try container.decode(String.self, forKey: .dob)

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                pan = try container.decode(String.self, forKey: .pan)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encode(email, forKey: .email)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encode(voterId, forKey: .voterId)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encode(passport, forKey: .passport)

            try? container.encode(gender, forKey: .gender)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(dob, forKey: .dob)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(pan, forKey: .pan)
        }
    }
}
