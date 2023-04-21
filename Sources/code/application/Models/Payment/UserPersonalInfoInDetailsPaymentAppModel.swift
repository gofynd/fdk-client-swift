

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var firstName: String

        public var fathersName: String?

        public var voterId: String?

        public var drivingLicense: String?

        public var gender: String?

        public var middleName: String?

        public var dob: String

        public var lastName: String?

        public var passport: String?

        public var phone: String

        public var emailVerified: Bool

        public var email: String?

        public var pan: String?

        public var mothersName: String?

        public var addressAsPerId: KYCAddress

        public var mobileVerified: Bool

        public enum CodingKeys: String, CodingKey {
            case firstName = "first_name"

            case fathersName = "fathers_name"

            case voterId = "voter_id"

            case drivingLicense = "driving_license"

            case gender

            case middleName = "middle_name"

            case dob

            case lastName = "last_name"

            case passport

            case phone

            case emailVerified = "email_verified"

            case email

            case pan

            case mothersName = "mothers_name"

            case addressAsPerId = "address_as_per_id"

            case mobileVerified = "mobile_verified"
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String? = nil, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            self.firstName = firstName

            self.fathersName = fathersName

            self.voterId = voterId

            self.drivingLicense = drivingLicense

            self.gender = gender

            self.middleName = middleName

            self.dob = dob

            self.lastName = lastName

            self.passport = passport

            self.phone = phone

            self.emailVerified = emailVerified

            self.email = email

            self.pan = pan

            self.mothersName = mothersName

            self.addressAsPerId = addressAsPerId

            self.mobileVerified = mobileVerified
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            firstName = try container.decode(String.self, forKey: .firstName)

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

            do {
                drivingLicense = try container.decode(String.self, forKey: .drivingLicense)

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
                middleName = try container.decode(String.self, forKey: .middleName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dob = try container.decode(String.self, forKey: .dob)

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

            phone = try container.decode(String.self, forKey: .phone)

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

            do {
                email = try container.decode(String.self, forKey: .email)

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
                mothersName = try container.decode(String.self, forKey: .mothersName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encode(voterId, forKey: .voterId)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encode(gender, forKey: .gender)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encode(dob, forKey: .dob)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encode(passport, forKey: .passport)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encode(email, forKey: .email)

            try? container.encode(pan, forKey: .pan)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)
        }
    }
}
