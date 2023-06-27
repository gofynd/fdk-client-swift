

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var fathersName: String?

        public var gender: String?

        public var mobileVerified: Bool

        public var middleName: String?

        public var voterId: String?

        public var email: String?

        public var dob: String

        public var passport: String?

        public var pan: String?

        public var drivingLicense: String?

        public var mothersName: String?

        public var emailVerified: Bool

        public var phone: String

        public var lastName: String?

        public var firstName: String

        public var addressAsPerId: KYCAddress

        public enum CodingKeys: String, CodingKey {
            case fathersName = "fathers_name"

            case gender

            case mobileVerified = "mobile_verified"

            case middleName = "middle_name"

            case voterId = "voter_id"

            case email

            case dob

            case passport

            case pan

            case drivingLicense = "driving_license"

            case mothersName = "mothers_name"

            case emailVerified = "email_verified"

            case phone

            case lastName = "last_name"

            case firstName = "first_name"

            case addressAsPerId = "address_as_per_id"
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String? = nil, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            self.fathersName = fathersName

            self.gender = gender

            self.mobileVerified = mobileVerified

            self.middleName = middleName

            self.voterId = voterId

            self.email = email

            self.dob = dob

            self.passport = passport

            self.pan = pan

            self.drivingLicense = drivingLicense

            self.mothersName = mothersName

            self.emailVerified = emailVerified

            self.phone = phone

            self.lastName = lastName

            self.firstName = firstName

            self.addressAsPerId = addressAsPerId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)

            do {
                middleName = try container.decode(String.self, forKey: .middleName)

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
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dob = try container.decode(String.self, forKey: .dob)

            do {
                passport = try container.decode(String.self, forKey: .passport)

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
                drivingLicense = try container.decode(String.self, forKey: .drivingLicense)

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

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            firstName = try container.decode(String.self, forKey: .firstName)

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encode(gender, forKey: .gender)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encode(voterId, forKey: .voterId)

            try? container.encode(email, forKey: .email)

            try? container.encode(dob, forKey: .dob)

            try? container.encode(passport, forKey: .passport)

            try? container.encode(pan, forKey: .pan)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)
        }
    }
}
