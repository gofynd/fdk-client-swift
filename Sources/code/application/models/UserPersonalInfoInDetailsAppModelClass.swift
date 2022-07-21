

import Foundation
public extension ApplicationClient {
    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var phone: String

        public var voterId: String?

        public var mobileVerified: Bool

        public var addressAsPerId: KYCAddress

        public var drivingLicense: String?

        public var email: String

        public var emailVerified: Bool

        public var lastName: String?

        public var mothersName: String?

        public var middleName: String?

        public var firstName: String

        public var pan: String?

        public var passport: String?

        public var fathersName: String?

        public var gender: String?

        public var dob: String

        public enum CodingKeys: String, CodingKey {
            case phone

            case voterId = "voter_id"

            case mobileVerified = "mobile_verified"

            case addressAsPerId = "address_as_per_id"

            case drivingLicense = "driving_license"

            case email

            case emailVerified = "email_verified"

            case lastName = "last_name"

            case mothersName = "mothers_name"

            case middleName = "middle_name"

            case firstName = "first_name"

            case pan

            case passport

            case fathersName = "fathers_name"

            case gender

            case dob
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            self.phone = phone

            self.voterId = voterId

            self.mobileVerified = mobileVerified

            self.addressAsPerId = addressAsPerId

            self.drivingLicense = drivingLicense

            self.email = email

            self.emailVerified = emailVerified

            self.lastName = lastName

            self.mothersName = mothersName

            self.middleName = middleName

            self.firstName = firstName

            self.pan = pan

            self.passport = passport

            self.fathersName = fathersName

            self.gender = gender

            self.dob = dob
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                voterId = try container.decode(String.self, forKey: .voterId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

            do {
                drivingLicense = try container.decode(String.self, forKey: .drivingLicense)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

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

            do {
                middleName = try container.decode(String.self, forKey: .middleName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                pan = try container.decode(String.self, forKey: .pan)

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
                fathersName = try container.decode(String.self, forKey: .fathersName)

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

            dob = try container.decode(String.self, forKey: .dob)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(voterId, forKey: .voterId)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(pan, forKey: .pan)

            try? container.encode(passport, forKey: .passport)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encode(gender, forKey: .gender)

            try? container.encode(dob, forKey: .dob)
        }
    }
}
