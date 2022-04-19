import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: UserPersonalInfoInDetails
         Used By: Payment
     */
    class UserPersonalInfoInDetails: Codable {
        public var email: String

        public var middleName: String?

        public var phone: String

        public var lastName: String?

        public var passport: String?

        public var dob: String

        public var gender: String

        public var addressAsPerId: KYCAddress

        public var mobileVerified: Bool

        public var pan: String?

        public var mothersName: String?

        public var firstName: String

        public var fathersName: String?

        public var emailVerified: Bool

        public var drivingLicense: String?

        public var voterId: String?

        public enum CodingKeys: String, CodingKey {
            case email

            case middleName = "middle_name"

            case phone

            case lastName = "last_name"

            case passport

            case dob

            case gender

            case addressAsPerId = "address_as_per_id"

            case mobileVerified = "mobile_verified"

            case pan

            case mothersName = "mothers_name"

            case firstName = "first_name"

            case fathersName = "fathers_name"

            case emailVerified = "email_verified"

            case drivingLicense = "driving_license"

            case voterId = "voter_id"
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            self.email = email

            self.middleName = middleName

            self.phone = phone

            self.lastName = lastName

            self.passport = passport

            self.dob = dob

            self.gender = gender

            self.addressAsPerId = addressAsPerId

            self.mobileVerified = mobileVerified

            self.pan = pan

            self.mothersName = mothersName

            self.firstName = firstName

            self.fathersName = fathersName

            self.emailVerified = emailVerified

            self.drivingLicense = drivingLicense

            self.voterId = voterId
        }

        public func duplicate() -> UserPersonalInfoInDetails {
            let dict = self.dictionary!
            let copy = UserPersonalInfoInDetails(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            email = try container.decode(String.self, forKey: .email)

            do {
                middleName = try container.decode(String.self, forKey: .middleName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            phone = try container.decode(String.self, forKey: .phone)

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

            dob = try container.decode(String.self, forKey: .dob)

            gender = try container.decode(String.self, forKey: .gender)

            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)

            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)

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

            firstName = try container.decode(String.self, forKey: .firstName)

            do {
                fathersName = try container.decode(String.self, forKey: .fathersName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)

            do {
                drivingLicense = try container.decode(String.self, forKey: .drivingLicense)

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

            try? container.encodeIfPresent(email, forKey: .email)

            try? container.encode(middleName, forKey: .middleName)

            try? container.encodeIfPresent(phone, forKey: .phone)

            try? container.encode(lastName, forKey: .lastName)

            try? container.encode(passport, forKey: .passport)

            try? container.encode(dob, forKey: .dob)

            try? container.encodeIfPresent(gender, forKey: .gender)

            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)

            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)

            try? container.encode(pan, forKey: .pan)

            try? container.encode(mothersName, forKey: .mothersName)

            try? container.encodeIfPresent(firstName, forKey: .firstName)

            try? container.encode(fathersName, forKey: .fathersName)

            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)

            try? container.encode(drivingLicense, forKey: .drivingLicense)

            try? container.encode(voterId, forKey: .voterId)
        }
    }
}
