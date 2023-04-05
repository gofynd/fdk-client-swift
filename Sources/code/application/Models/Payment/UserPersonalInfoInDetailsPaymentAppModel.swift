

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var drivingLicense: String?

        public var mobileVerified: Bool

        public var dob: String

        public var addressAsPerId: KYCAddress

        public var fathersName: String?

        public var pan: String?

        public var emailVerified: Bool

        public var passport: String?

        public var mothersName: String?

        public var firstName: String

        public var phone: String

        public var middleName: String?

        public var lastName: String?

        public var voterId: String?

        public var gender: String?

        public var email: String?

        public enum CodingKeys: String, CodingKey {
            case drivingLicense = "driving_license"

            case mobileVerified = "mobile_verified"

            case dob

            case addressAsPerId = "address_as_per_id"

            case fathersName = "fathers_name"

            case pan

            case emailVerified = "email_verified"

            case passport

            case mothersName = "mothers_name"

            case firstName = "first_name"

            case phone

            case middleName = "middle_name"

            case lastName = "last_name"

            case voterId = "voter_id"

            case gender

            case email
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String? = nil, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            self.drivingLicense = drivingLicense

            self.mobileVerified = mobileVerified

            self.dob = dob

            self.addressAsPerId = addressAsPerId

            self.fathersName = fathersName

            self.pan = pan

            self.emailVerified = emailVerified

            self.passport = passport

            self.mothersName = mothersName

            self.firstName = firstName

            self.phone = phone

            self.middleName = middleName

            self.lastName = lastName

            self.voterId = voterId

            self.gender = gender

            self.email = email
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                drivingLicense = try container.decode(String.self, forKey: .drivingLicense)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)

            dob = try container.decode(String.self, forKey: .dob)

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

            do {
                fathersName = try container.decode(String.self, forKey: .fathersName)

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

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

            do {
                passport = try container.decode(String.self, forKey: .passport)

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

            phone = try container.decode(String.self, forKey: .phone)

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

            do {
                email = try container.decode(String.self, forKey: .email)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)

            try? container.encode(dob, forKey: .dob)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encode(pan, forKey: .pan)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encode(passport, forKey: .passport)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encode(voterId, forKey: .voterId)

            try? container.encode(gender, forKey: .gender)

            try? container.encode(email, forKey: .email)
        }
    }
}
