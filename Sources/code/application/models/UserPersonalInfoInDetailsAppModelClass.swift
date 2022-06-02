

import Foundation
public extension ApplicationClient {
    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var passport: String?

        public var email: String

        public var addressAsPerId: KYCAddress

        public var mobileVerified: Bool

        public var fathersName: String?

        public var drivingLicense: String?

        public var phone: String

        public var voterId: String?

        public var emailVerified: Bool

        public var dob: String

        public var firstName: String

        public var gender: String?

        public var mothersName: String?

        public var middleName: String?

        public var pan: String?

        public var lastName: String?

        public enum CodingKeys: String, CodingKey {
            case passport

            case email

            case addressAsPerId = "address_as_per_id"

            case mobileVerified = "mobile_verified"

            case fathersName = "fathers_name"

            case drivingLicense = "driving_license"

            case phone

            case voterId = "voter_id"

            case emailVerified = "email_verified"

            case dob

            case firstName = "first_name"

            case gender

            case mothersName = "mothers_name"

            case middleName = "middle_name"

            case pan

            case lastName = "last_name"
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            self.passport = passport

            self.email = email

            self.addressAsPerId = addressAsPerId

            self.mobileVerified = mobileVerified

            self.fathersName = fathersName

            self.drivingLicense = drivingLicense

            self.phone = phone

            self.voterId = voterId

            self.emailVerified = emailVerified

            self.dob = dob

            self.firstName = firstName

            self.gender = gender

            self.mothersName = mothersName

            self.middleName = middleName

            self.pan = pan

            self.lastName = lastName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                passport = try container.decode(String.self, forKey: .passport)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)

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

            phone = try container.decode(String.self, forKey: .phone)

            do {
                voterId = try container.decode(String.self, forKey: .voterId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

            dob = try container.decode(String.self, forKey: .dob)

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                gender = try container.decode(String.self, forKey: .gender)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(passport, forKey: .passport)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(voterId, forKey: .voterId)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encode(dob, forKey: .dob)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(gender, forKey: .gender)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encode(pan, forKey: .pan)

            try? container.encode(lastName, forKey: .lastName)
        }
    }
}
