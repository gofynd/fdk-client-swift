import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var mothersName: String?

        public var passport: String?

        public var firstName: String

        public var dob: String

        public var middleName: String?

        public var drivingLicense: String?

        public var pan: String?

        public var lastName: String?

        public var emailVerified: Bool

        public var email: String

        public var addressAsPerId: KYCAddress

        public var phone: String

        public var fathersName: String?

        public var mobileVerified: Bool

        public var gender: String?

        public var voterId: String?

        public enum CodingKeys: String, CodingKey {
            case mothersName = "mothers_name"

            case passport

            case firstName = "first_name"

            case dob

            case middleName = "middle_name"

            case drivingLicense = "driving_license"

            case pan

            case lastName = "last_name"

            case emailVerified = "email_verified"

            case email

            case addressAsPerId = "address_as_per_id"

            case phone

            case fathersName = "fathers_name"

            case mobileVerified = "mobile_verified"

            case gender

            case voterId = "voter_id"
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            self.mothersName = mothersName

            self.passport = passport

            self.firstName = firstName

            self.dob = dob

            self.middleName = middleName

            self.drivingLicense = drivingLicense

            self.pan = pan

            self.lastName = lastName

            self.emailVerified = emailVerified

            self.email = email

            self.addressAsPerId = addressAsPerId

            self.phone = phone

            self.fathersName = fathersName

            self.mobileVerified = mobileVerified

            self.gender = gender

            self.voterId = voterId
        }

        public func duplicate() -> UserPersonalInfoInDetails {
            let dict = self.dictionary!
            let copy = UserPersonalInfoInDetails(dictionary: dict)!
            return copy
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
                passport = try container.decode(String.self, forKey: .passport)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            firstName = try container.decode(String.self, forKey: .firstName)

            dob = try container.decode(String.self, forKey: .dob)

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

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

            email = try container.decode(String.self, forKey: .email)

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

            phone = try container.decode(String.self, forKey: .phone)

            do {
                fathersName = try container.decode(String.self, forKey: .fathersName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encode(passport, forKey: .passport)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(dob, forKey: .dob)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encode(pan, forKey: .pan)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)

            try? container.encode(gender, forKey: .gender)

            try? container.encode(voterId, forKey: .voterId)
        }
    }
}
