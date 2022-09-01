

import Foundation
public extension ApplicationClient {
    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var emailVerified: Bool

        public var addressAsPerId: KYCAddress

        public var firstName: String

        public var phone: String

        public var mobileVerified: Bool

        public var pan: String?

        public var lastName: String?

        public var passport: String?

        public var voterId: String?

        public var fathersName: String?

        public var dob: String

        public var mothersName: String?

        public var drivingLicense: String?

        public var email: String?

        public var middleName: String?

        public var gender: String?

        public enum CodingKeys: String, CodingKey {
            case emailVerified = "email_verified"

            case addressAsPerId = "address_as_per_id"

            case firstName = "first_name"

            case phone

            case mobileVerified = "mobile_verified"

            case pan

            case lastName = "last_name"

            case passport

            case voterId = "voter_id"

            case fathersName = "fathers_name"

            case dob

            case mothersName = "mothers_name"

            case drivingLicense = "driving_license"

            case email

            case middleName = "middle_name"

            case gender
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String? = nil, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            self.emailVerified = emailVerified

            self.addressAsPerId = addressAsPerId

            self.firstName = firstName

            self.phone = phone

            self.mobileVerified = mobileVerified

            self.pan = pan

            self.lastName = lastName

            self.passport = passport

            self.voterId = voterId

            self.fathersName = fathersName

            self.dob = dob

            self.mothersName = mothersName

            self.drivingLicense = drivingLicense

            self.email = email

            self.middleName = middleName

            self.gender = gender
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

            firstName = try container.decode(String.self, forKey: .firstName)

            phone = try container.decode(String.self, forKey: .phone)

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)

            do {
                pan = try container.decode(String.self, forKey: .pan)

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

            do {
                fathersName = try container.decode(String.self, forKey: .fathersName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dob = try container.decode(String.self, forKey: .dob)

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
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)

            try? container.encode(pan, forKey: .pan)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encode(passport, forKey: .passport)

            try? container.encode(voterId, forKey: .voterId)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encode(dob, forKey: .dob)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encode(email, forKey: .email)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encode(gender, forKey: .gender)
        }
    }
}
