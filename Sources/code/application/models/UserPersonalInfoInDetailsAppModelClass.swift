

import Foundation
public extension ApplicationClient {
    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var pan: String?

        public var middleName: String?

        public var phone: String

        public var mothersName: String?

        public var voterId: String?

        public var firstName: String

        public var passport: String?

        public var emailVerified: Bool

        public var addressAsPerId: KYCAddress

        public var drivingLicense: String?

        public var mobileVerified: Bool

        public var fathersName: String?

        public var dob: String

        public var gender: String?

        public var email: String

        public var lastName: String?

        public enum CodingKeys: String, CodingKey {
            case pan

            case middleName = "middle_name"

            case phone

            case mothersName = "mothers_name"

            case voterId = "voter_id"

            case firstName = "first_name"

            case passport

            case emailVerified = "email_verified"

            case addressAsPerId = "address_as_per_id"

            case drivingLicense = "driving_license"

            case mobileVerified = "mobile_verified"

            case fathersName = "fathers_name"

            case dob

            case gender

            case email

            case lastName = "last_name"
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            self.pan = pan

            self.middleName = middleName

            self.phone = phone

            self.mothersName = mothersName

            self.voterId = voterId

            self.firstName = firstName

            self.passport = passport

            self.emailVerified = emailVerified

            self.addressAsPerId = addressAsPerId

            self.drivingLicense = drivingLicense

            self.mobileVerified = mobileVerified

            self.fathersName = fathersName

            self.dob = dob

            self.gender = gender

            self.email = email

            self.lastName = lastName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                pan = try container.decode(String.self, forKey: .pan)

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

            phone = try container.decode(String.self, forKey: .phone)

            do {
                mothersName = try container.decode(String.self, forKey: .mothersName)

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

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                passport = try container.decode(String.self, forKey: .passport)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

            do {
                drivingLicense = try container.decode(String.self, forKey: .drivingLicense)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)

            do {
                fathersName = try container.decode(String.self, forKey: .fathersName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            dob = try container.decode(String.self, forKey: .dob)

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            email = try container.decode(String.self, forKey: .email)

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(pan, forKey: .pan)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encode(voterId, forKey: .voterId)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(passport, forKey: .passport)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encode(dob, forKey: .dob)

            try? container.encode(gender, forKey: .gender)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(lastName, forKey: .lastName)
        }
    }
}
