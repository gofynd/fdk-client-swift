

import Foundation
public extension ApplicationClient {
    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var passport: String?

        public var emailVerified: Bool

        public var firstName: String

        public var phone: String

        public var lastName: String?

        public var addressAsPerId: KYCAddress

        public var mobileVerified: Bool

        public var voterId: String?

        public var mothersName: String?

        public var drivingLicense: String?

        public var dob: String

        public var pan: String?

        public var email: String?

        public var fathersName: String?

        public var middleName: String?

        public var gender: String?

        public enum CodingKeys: String, CodingKey {
            case passport

            case emailVerified = "email_verified"

            case firstName = "first_name"

            case phone

            case lastName = "last_name"

            case addressAsPerId = "address_as_per_id"

            case mobileVerified = "mobile_verified"

            case voterId = "voter_id"

            case mothersName = "mothers_name"

            case drivingLicense = "driving_license"

            case dob

            case pan

            case email

            case fathersName = "fathers_name"

            case middleName = "middle_name"

            case gender
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String? = nil, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            self.passport = passport

            self.emailVerified = emailVerified

            self.firstName = firstName

            self.phone = phone

            self.lastName = lastName

            self.addressAsPerId = addressAsPerId

            self.mobileVerified = mobileVerified

            self.voterId = voterId

            self.mothersName = mothersName

            self.drivingLicense = drivingLicense

            self.dob = dob

            self.pan = pan

            self.email = email

            self.fathersName = fathersName

            self.middleName = middleName

            self.gender = gender
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                passport = try container.decode(String.self, forKey: .passport)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

            firstName = try container.decode(String.self, forKey: .firstName)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)

            do {
                voterId = try container.decode(String.self, forKey: .voterId)

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
                drivingLicense = try container.decode(String.self, forKey: .drivingLicense)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dob = try container.decode(String.self, forKey: .dob)

            do {
                pan = try container.decode(String.self, forKey: .pan)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                email = try container.decode(String.self, forKey: .email)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(passport, forKey: .passport)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)

            try? container.encode(voterId, forKey: .voterId)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encode(dob, forKey: .dob)

            try? container.encode(pan, forKey: .pan)

            try? container.encode(email, forKey: .email)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encode(gender, forKey: .gender)
        }
    }
}
