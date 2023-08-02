

import Foundation
public extension ApplicationClient.Payment {
    /*
        Model: UserPersonalInfoInDetails
        Used By: Payment
    */
    class UserPersonalInfoInDetails: Codable {
        
        public var firstName: String
        
        public var voterId: String?
        
        public var gender: String?
        
        public var dob: String
        
        public var passport: String?
        
        public var fathersName: String?
        
        public var mothersName: String?
        
        public var middleName: String?
        
        public var lastName: String?
        
        public var pan: String?
        
        public var drivingLicense: String?
        
        public var emailVerified: Bool
        
        public var addressAsPerId: KYCAddress
        
        public var mobileVerified: Bool
        
        public var phone: String
        
        public var email: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case firstName = "first_name"
            
            case voterId = "voter_id"
            
            case gender = "gender"
            
            case dob = "dob"
            
            case passport = "passport"
            
            case fathersName = "fathers_name"
            
            case mothersName = "mothers_name"
            
            case middleName = "middle_name"
            
            case lastName = "last_name"
            
            case pan = "pan"
            
            case drivingLicense = "driving_license"
            
            case emailVerified = "email_verified"
            
            case addressAsPerId = "address_as_per_id"
            
            case mobileVerified = "mobile_verified"
            
            case phone = "phone"
            
            case email = "email"
            
        }

        public init(addressAsPerId: KYCAddress, dob: String, drivingLicense: String? = nil, email: String? = nil, emailVerified: Bool, fathersName: String? = nil, firstName: String, gender: String? = nil, lastName: String? = nil, middleName: String? = nil, mobileVerified: Bool, mothersName: String? = nil, pan: String? = nil, passport: String? = nil, phone: String, voterId: String? = nil) {
            
            self.firstName = firstName
            
            self.voterId = voterId
            
            self.gender = gender
            
            self.dob = dob
            
            self.passport = passport
            
            self.fathersName = fathersName
            
            self.mothersName = mothersName
            
            self.middleName = middleName
            
            self.lastName = lastName
            
            self.pan = pan
            
            self.drivingLicense = drivingLicense
            
            self.emailVerified = emailVerified
            
            self.addressAsPerId = addressAsPerId
            
            self.mobileVerified = mobileVerified
            
            self.phone = phone
            
            self.email = email
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            firstName = try container.decode(String.self, forKey: .firstName)
            
            
            
            
            do {
                voterId = try container.decode(String.self, forKey: .voterId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                gender = try container.decode(String.self, forKey: .gender)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            dob = try container.decode(String.self, forKey: .dob)
            
            
            
            
            do {
                passport = try container.decode(String.self, forKey: .passport)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                fathersName = try container.decode(String.self, forKey: .fathersName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                mothersName = try container.decode(String.self, forKey: .mothersName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                middleName = try container.decode(String.self, forKey: .middleName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                lastName = try container.decode(String.self, forKey: .lastName)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                pan = try container.decode(String.self, forKey: .pan)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                drivingLicense = try container.decode(String.self, forKey: .drivingLicense)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            emailVerified = try container.decode(Bool.self, forKey: .emailVerified)
            
            
            
            
            addressAsPerId = try container.decode(KYCAddress.self, forKey: .addressAsPerId)
            
            
            
            
            mobileVerified = try container.decode(Bool.self, forKey: .mobileVerified)
            
            
            
            
            phone = try container.decode(String.self, forKey: .phone)
            
            
            
            
            do {
                email = try container.decode(String.self, forKey: .email)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(firstName, forKey: .firstName)
            
            
            
            
            try? container.encode(voterId, forKey: .voterId)
            
            
            
            
            try? container.encode(gender, forKey: .gender)
            
            
            
            
            try? container.encode(dob, forKey: .dob)
            
            
            
            
            try? container.encode(passport, forKey: .passport)
            
            
            
            
            try? container.encode(fathersName, forKey: .fathersName)
            
            
            
            
            try? container.encode(mothersName, forKey: .mothersName)
            
            
            
            
            try? container.encode(middleName, forKey: .middleName)
            
            
            
            
            try? container.encode(lastName, forKey: .lastName)
            
            
            
            
            try? container.encode(pan, forKey: .pan)
            
            
            
            
            try? container.encode(drivingLicense, forKey: .drivingLicense)
            
            
            
            
            try? container.encodeIfPresent(emailVerified, forKey: .emailVerified)
            
            
            
            
            try? container.encodeIfPresent(addressAsPerId, forKey: .addressAsPerId)
            
            
            
            
            try? container.encodeIfPresent(mobileVerified, forKey: .mobileVerified)
            
            
            
            
            try? container.encodeIfPresent(phone, forKey: .phone)
            
            
            
            
            try? container.encode(email, forKey: .email)
            
            
        }
        
    }
}
