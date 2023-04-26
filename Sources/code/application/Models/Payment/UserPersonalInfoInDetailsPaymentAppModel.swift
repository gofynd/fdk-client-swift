

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var mothersName: String?

        public var email: String?

        public var dob: String

        public var pan: String?

        public var phone: String

        public var gender: String?

        public var addressAsPerId: KYCAddress

        public var emailVerified: Bool

        public var passport: String?

        public var voterId: String?

        public var fathersName: String?

        public var drivingLicense: String?

        public var middleName: String?

        public var firstName: String

        public var mobileVerified: Bool

        public var lastName: String?

        public enum CodingKeys: String, CodingKey {
            case mothersName = "mothers_name"

            case email

            case dob

            case pan

            case phone

            case gender

            case addressAsPerId = "address_as_per_id"

            case emailVerified = "email_verified"

            case passport

            case voterId = "voter_id"

            case fathersName = "fathers_name"

            case drivingLicense = "driving_license"

            case middleName = "middle_name"

            case firstName = "first_name"

            case mobileVerified = "mobile_verified"

            case lastName = "last_name"
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String? = nil, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            self.mothersName = mothersName

            self.email = email

            self.dob = dob

            self.pan = pan

            self.phone = phone

            self.gender = gender

            self.addressAsPerId = addressAsPerId

            self.emailVerified = emailVerified

            self.passport = passport

            self.voterId = voterId

            self.fathersName = fathersName

            self.drivingLicense = drivingLicense

            self.middleName = middleName

            self.firstName = firstName

            self.mobileVerified = mobileVerified

            self.lastName = lastName
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
                email = try container.decode(String.self, forKey: .email)

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

            phone = try container.decode(String.self, forKey: .phone)

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

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

            firstName = try container.decode(String.self, forKey: .firstName)

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encode(email, forKey: .email)

            try? container.encode(dob, forKey: .dob)

            try? container.encode(pan, forKey: .pan)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(gender, forKey: .gender)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encode(passport, forKey: .passport)

            try? container.encode(voterId, forKey: .voterId)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)

            try? container.encode(lastName, forKey: .lastName)
        }
    }
}
