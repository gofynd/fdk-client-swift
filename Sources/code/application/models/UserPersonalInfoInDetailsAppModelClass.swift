

import Foundation
public extension ApplicationClient {
    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var voterId: String?

        public var addressAsPerId: KYCAddress

        public var passport: String?

        public var phone: String

        public var mothersName: String?

        public var email: String

        public var mobileVerified: Bool

        public var dob: String

        public var pan: String?

        public var gender: String?

        public var lastName: String?

        public var middleName: String?

        public var drivingLicense: String?

        public var firstName: String

        public var emailVerified: Bool

        public var fathersName: String?

        public enum CodingKeys: String, CodingKey {
            case voterId = "voter_id"

            case addressAsPerId = "address_as_per_id"

            case passport

            case phone

            case mothersName = "mothers_name"

            case email

            case mobileVerified = "mobile_verified"

            case dob

            case pan

            case gender

            case lastName = "last_name"

            case middleName = "middle_name"

            case drivingLicense = "driving_license"

            case firstName = "first_name"

            case emailVerified = "email_verified"

            case fathersName = "fathers_name"
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            self.voterId = voterId

            self.addressAsPerId = addressAsPerId

            self.passport = passport

            self.phone = phone

            self.mothersName = mothersName

            self.email = email

            self.mobileVerified = mobileVerified

            self.dob = dob

            self.pan = pan

            self.gender = gender

            self.lastName = lastName

            self.middleName = middleName

            self.drivingLicense = drivingLicense

            self.firstName = firstName

            self.emailVerified = emailVerified

            self.fathersName = fathersName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                voterId = try container.decode(String.self, forKey: .voterId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

            do {
                passport = try container.decode(String.self, forKey: .passport)

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

            email = try container.decode(String.self, forKey: .email)

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)

            dob = try container.decode(String.self, forKey: .dob)

            do {
                pan = try container.decode(String.self, forKey: .pan)

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
                drivingLicense = try container.decode(String.self, forKey: .drivingLicense)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            firstName = try container.decode(String.self, forKey: .firstName)

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

            do {
                fathersName = try container.decode(String.self, forKey: .fathersName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(voterId, forKey: .voterId)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encode(passport, forKey: .passport)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)

            try? container.encode(dob, forKey: .dob)

            try? container.encode(pan, forKey: .pan)

            try? container.encode(gender, forKey: .gender)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encode(fathersName, forKey: .fathersName)
        }
    }
}
