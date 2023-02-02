

import Foundation
public extension ApplicationClient {
    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var firstName: String

        public var dob: String

        public var addressAsPerId: KYCAddress

        public var pan: String?

        public var email: String?

        public var mothersName: String?

        public var middleName: String?

        public var drivingLicense: String?

        public var phone: String

        public var gender: String?

        public var voterId: String?

        public var mobileVerified: Bool

        public var emailVerified: Bool

        public var fathersName: String?

        public var lastName: String?

        public var passport: String?

        public enum CodingKeys: String, CodingKey {
            case firstName = "first_name"

            case dob

            case addressAsPerId = "address_as_per_id"

            case pan

            case email

            case mothersName = "mothers_name"

            case middleName = "middle_name"

            case drivingLicense = "driving_license"

            case phone

            case gender

            case voterId = "voter_id"

            case mobileVerified = "mobile_verified"

            case emailVerified = "email_verified"

            case fathersName = "fathers_name"

            case lastName = "last_name"

            case passport
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String? = nil, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            self.firstName = firstName

            self.dob = dob

            self.addressAsPerId = addressAsPerId

            self.pan = pan

            self.email = email

            self.mothersName = mothersName

            self.middleName = middleName

            self.drivingLicense = drivingLicense

            self.phone = phone

            self.gender = gender

            self.voterId = voterId

            self.mobileVerified = mobileVerified

            self.emailVerified = emailVerified

            self.fathersName = fathersName

            self.lastName = lastName

            self.passport = passport
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            firstName = try container.decode(String.self, forKey: .firstName)

            dob = try container.decode(String.self, forKey: .dob)

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

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
                drivingLicense = try container.decode(String.self, forKey: .drivingLicense)

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

            do {
                voterId = try container.decode(String.self, forKey: .voterId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

            do {
                fathersName = try container.decode(String.self, forKey: .fathersName)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(dob, forKey: .dob)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encode(pan, forKey: .pan)

            try? container.encode(email, forKey: .email)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(gender, forKey: .gender)

            try? container.encode(voterId, forKey: .voterId)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encode(passport, forKey: .passport)
        }
    }
}
