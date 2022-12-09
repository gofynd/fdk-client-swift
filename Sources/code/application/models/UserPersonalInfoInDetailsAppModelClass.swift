

import Foundation
public extension ApplicationClient {
    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var email: String?

        public var middleName: String?

        public var mothersName: String?

        public var firstName: String

        public var lastName: String?

        public var gender: String?

        public var addressAsPerId: KYCAddress

        public var mobileVerified: Bool

        public var drivingLicense: String?

        public var pan: String?

        public var dob: String

        public var emailVerified: Bool

        public var phone: String

        public var passport: String?

        public var fathersName: String?

        public var voterId: String?

        public enum CodingKeys: String, CodingKey {
            case email

            case middleName = "middle_name"

            case mothersName = "mothers_name"

            case firstName = "first_name"

            case lastName = "last_name"

            case gender

            case addressAsPerId = "address_as_per_id"

            case mobileVerified = "mobile_verified"

            case drivingLicense = "driving_license"

            case pan

            case dob

            case emailVerified = "email_verified"

            case phone

            case passport

            case fathersName = "fathers_name"

            case voterId = "voter_id"
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String? = nil, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            self.email = email

            self.middleName = middleName

            self.mothersName = mothersName

            self.firstName = firstName

            self.lastName = lastName

            self.gender = gender

            self.addressAsPerId = addressAsPerId

            self.mobileVerified = mobileVerified

            self.drivingLicense = drivingLicense

            self.pan = pan

            self.dob = dob

            self.emailVerified = emailVerified

            self.phone = phone

            self.passport = passport

            self.fathersName = fathersName

            self.voterId = voterId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                email = try container.decode(String.self, forKey: .email)

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
                mothersName = try container.decode(String.self, forKey: .mothersName)

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

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)

            do {
                drivingLicense = try container.decode(String.self, forKey: .drivingLicense)

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

            dob = try container.decode(String.self, forKey: .dob)

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

            phone = try container.decode(String.self, forKey: .phone)

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
                voterId = try container.decode(String.self, forKey: .voterId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(email, forKey: .email)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encode(gender, forKey: .gender)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encode(pan, forKey: .pan)

            try? container.encode(dob, forKey: .dob)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(passport, forKey: .passport)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encode(voterId, forKey: .voterId)
        }
    }
}
