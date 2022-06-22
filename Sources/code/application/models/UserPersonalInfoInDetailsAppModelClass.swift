

import Foundation
public extension ApplicationClient {
    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var firstName: String

        public var lastName: String?

        public var middleName: String?

        public var pan: String?

        public var passport: String?

        public var emailVerified: Bool

        public var fathersName: String?

        public var phone: String

        public var dob: String

        public var gender: String?

        public var addressAsPerId: KYCAddress

        public var drivingLicense: String?

        public var mobileVerified: Bool

        public var email: String

        public var voterId: String?

        public var mothersName: String?

        public enum CodingKeys: String, CodingKey {
            case firstName = "first_name"

            case lastName = "last_name"

            case middleName = "middle_name"

            case pan

            case passport

            case emailVerified = "email_verified"

            case fathersName = "fathers_name"

            case phone

            case dob

            case gender

            case addressAsPerId = "address_as_per_id"

            case drivingLicense = "driving_license"

            case mobileVerified = "mobile_verified"

            case email

            case voterId = "voter_id"

            case mothersName = "mothers_name"
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            self.firstName = firstName

            self.lastName = lastName

            self.middleName = middleName

            self.pan = pan

            self.passport = passport

            self.emailVerified = emailVerified

            self.fathersName = fathersName

            self.phone = phone

            self.dob = dob

            self.gender = gender

            self.addressAsPerId = addressAsPerId

            self.drivingLicense = drivingLicense

            self.mobileVerified = mobileVerified

            self.email = email

            self.voterId = voterId

            self.mothersName = mothersName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                lastName = try container.decode(String.self, forKey: .lastName)

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
                passport = try container.decode(String.self, forKey: .passport)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

            do {
                fathersName = try container.decode(String.self, forKey: .fathersName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)

            dob = try container.decode(String.self, forKey: .dob)

            do {
                gender = try container.decode(String.self, forKey: .gender)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

            do {
                drivingLicense = try container.decode(String.self, forKey: .drivingLicense)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)

            email = try container.decode(String.self, forKey: .email)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encode(pan, forKey: .pan)

            try? container.encode(passport, forKey: .passport)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(dob, forKey: .dob)

            try? container.encode(gender, forKey: .gender)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(voterId, forKey: .voterId)

            try? container.encode(mothersName, forKey: .mothersName)
        }
    }
}
