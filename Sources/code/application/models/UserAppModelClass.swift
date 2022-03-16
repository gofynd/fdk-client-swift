import Foundation


import Foundation
public extension ApplicationClient {
  
        /*
            Model: BlockUserRequestSchema
            Used By: User
        */
        class BlockUserRequestSchema: Codable {
            
            public var status: Bool?
            
            public var userId: [String]?
            
            public var reason: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case status = "status"
                
                case userId = "user_id"
                
                case reason = "reason"
                
            }

            public init(reason: String?, status: Bool?, userId: [String]?) {
                
                self.status = status
                
                self.userId = userId
                
                self.reason = reason
                
            }

            public func duplicate() -> BlockUserRequestSchema {
                let dict = self.dictionary!
                let copy = BlockUserRequestSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    status = try container.decode(Bool.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    userId = try container.decode([String].self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    reason = try container.decode(String.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
                
                
                try? container.encodeIfPresent(userId, forKey: .userId)
                
                
                
                
                try? container.encodeIfPresent(reason, forKey: .reason)
                
                
            }
            
        }
        
        /*
            Model: EditEmailRequestSchema
            Used By: User
        */
        class EditEmailRequestSchema: Codable {
            
            public var email: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case email = "email"
                
            }

            public init(email: String?) {
                
                self.email = email
                
            }

            public func duplicate() -> EditEmailRequestSchema {
                let dict = self.dictionary!
                let copy = EditEmailRequestSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
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
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
            }
            
        }
        
        /*
            Model: SendVerificationLinkMobileRequestSchema
            Used By: User
        */
        class SendVerificationLinkMobileRequestSchema: Codable {
            
            public var verified: Bool?
            
            public var active: Bool?
            
            public var countryCode: String?
            
            public var phone: String?
            
            public var primary: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case verified = "verified"
                
                case active = "active"
                
                case countryCode = "country_code"
                
                case phone = "phone"
                
                case primary = "primary"
                
            }

            public init(active: Bool?, countryCode: String?, phone: String?, primary: Bool?, verified: Bool?) {
                
                self.verified = verified
                
                self.active = active
                
                self.countryCode = countryCode
                
                self.phone = phone
                
                self.primary = primary
                
            }

            public func duplicate() -> SendVerificationLinkMobileRequestSchema {
                let dict = self.dictionary!
                let copy = SendVerificationLinkMobileRequestSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    verified = try container.decode(Bool.self, forKey: .verified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    phone = try container.decode(String.self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    primary = try container.decode(Bool.self, forKey: .primary)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(verified, forKey: .verified)
                
                
                
                
                try? container.encodeIfPresent(active, forKey: .active)
                
                
                
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                
                
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                
                
                
                try? container.encodeIfPresent(primary, forKey: .primary)
                
                
            }
            
        }
        
        /*
            Model: EditMobileRequestSchema
            Used By: User
        */
        class EditMobileRequestSchema: Codable {
            
            public var countryCode: String?
            
            public var phone: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case countryCode = "country_code"
                
                case phone = "phone"
                
            }

            public init(countryCode: String?, phone: String?) {
                
                self.countryCode = countryCode
                
                self.phone = phone
                
            }

            public func duplicate() -> EditMobileRequestSchema {
                let dict = self.dictionary!
                let copy = EditMobileRequestSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    phone = try container.decode(String.self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                
                
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                
            }
            
        }
        
        /*
            Model: EditProfileRequestSchema
            Used By: User
        */
        class EditProfileRequestSchema: Codable {
            
            public var firstName: String?
            
            public var lastName: String?
            
            public var mobile: EditProfileMobileSchema?
            
            public var countryCode: String?
            
            public var email: String?
            
            public var gender: String?
            
            public var dob: String?
            
            public var profilePicUrl: String?
            
            public var androidHash: String?
            
            public var sender: String?
            
            public var registerToken: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case firstName = "first_name"
                
                case lastName = "last_name"
                
                case mobile = "mobile"
                
                case countryCode = "country_code"
                
                case email = "email"
                
                case gender = "gender"
                
                case dob = "dob"
                
                case profilePicUrl = "profile_pic_url"
                
                case androidHash = "android_hash"
                
                case sender = "sender"
                
                case registerToken = "register_token"
                
            }

            public init(androidHash: String?, countryCode: String?, dob: String?, email: String?, firstName: String?, gender: String?, lastName: String?, mobile: EditProfileMobileSchema?, profilePicUrl: String?, registerToken: String?, sender: String?) {
                
                self.firstName = firstName
                
                self.lastName = lastName
                
                self.mobile = mobile
                
                self.countryCode = countryCode
                
                self.email = email
                
                self.gender = gender
                
                self.dob = dob
                
                self.profilePicUrl = profilePicUrl
                
                self.androidHash = androidHash
                
                self.sender = sender
                
                self.registerToken = registerToken
                
            }

            public func duplicate() -> EditProfileRequestSchema {
                let dict = self.dictionary!
                let copy = EditProfileRequestSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    firstName = try container.decode(String.self, forKey: .firstName)
                
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
                    mobile = try container.decode(EditProfileMobileSchema.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    email = try container.decode(String.self, forKey: .email)
                
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
                
                
                
                do {
                    dob = try container.decode(String.self, forKey: .dob)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    profilePicUrl = try container.decode(String.self, forKey: .profilePicUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    androidHash = try container.decode(String.self, forKey: .androidHash)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sender = try container.decode(String.self, forKey: .sender)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    registerToken = try container.decode(String.self, forKey: .registerToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(firstName, forKey: .firstName)
                
                
                
                
                try? container.encodeIfPresent(lastName, forKey: .lastName)
                
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
                
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(gender, forKey: .gender)
                
                
                
                
                try? container.encodeIfPresent(dob, forKey: .dob)
                
                
                
                
                try? container.encodeIfPresent(profilePicUrl, forKey: .profilePicUrl)
                
                
                
                
                try? container.encodeIfPresent(androidHash, forKey: .androidHash)
                
                
                
                
                try? container.encodeIfPresent(sender, forKey: .sender)
                
                
                
                
                try? container.encodeIfPresent(registerToken, forKey: .registerToken)
                
                
            }
            
        }
        
        /*
            Model: EditProfileMobileSchema
            Used By: User
        */
        class EditProfileMobileSchema: Codable {
            
            public var phone: String?
            
            public var countryCode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case phone = "phone"
                
                case countryCode = "country_code"
                
            }

            public init(countryCode: String?, phone: String?) {
                
                self.phone = phone
                
                self.countryCode = countryCode
                
            }

            public func duplicate() -> EditProfileMobileSchema {
                let dict = self.dictionary!
                let copy = EditProfileMobileSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    phone = try container.decode(String.self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                
                
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                
            }
            
        }
        
        /*
            Model: SendEmailOtpRequestSchema
            Used By: User
        */
        class SendEmailOtpRequestSchema: Codable {
            
            public var email: String?
            
            public var action: String?
            
            public var token: String?
            
            public var registerToken: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case email = "email"
                
                case action = "action"
                
                case token = "token"
                
                case registerToken = "register_token"
                
            }

            public init(action: String?, email: String?, registerToken: String?, token: String?) {
                
                self.email = email
                
                self.action = action
                
                self.token = token
                
                self.registerToken = registerToken
                
            }

            public func duplicate() -> SendEmailOtpRequestSchema {
                let dict = self.dictionary!
                let copy = SendEmailOtpRequestSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    action = try container.decode(String.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    token = try container.decode(String.self, forKey: .token)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    registerToken = try container.decode(String.self, forKey: .registerToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(token, forKey: .token)
                
                
                
                
                try? container.encodeIfPresent(registerToken, forKey: .registerToken)
                
                
            }
            
        }
        
        /*
            Model: VerifyEmailOtpRequestSchema
            Used By: User
        */
        class VerifyEmailOtpRequestSchema: Codable {
            
            public var email: String?
            
            public var action: String?
            
            public var registerToken: String?
            
            public var otp: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case email = "email"
                
                case action = "action"
                
                case registerToken = "register_token"
                
                case otp = "otp"
                
            }

            public init(action: String?, email: String?, otp: String?, registerToken: String?) {
                
                self.email = email
                
                self.action = action
                
                self.registerToken = registerToken
                
                self.otp = otp
                
            }

            public func duplicate() -> VerifyEmailOtpRequestSchema {
                let dict = self.dictionary!
                let copy = VerifyEmailOtpRequestSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    action = try container.decode(String.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    registerToken = try container.decode(String.self, forKey: .registerToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    otp = try container.decode(String.self, forKey: .otp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(registerToken, forKey: .registerToken)
                
                
                
                
                try? container.encodeIfPresent(otp, forKey: .otp)
                
                
            }
            
        }
        
        /*
            Model: VerifyOtpRequestSchema
            Used By: User
        */
        class VerifyOtpRequestSchema: Codable {
            
            public var requestId: String?
            
            public var registerToken: String?
            
            public var otp: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case requestId = "request_id"
                
                case registerToken = "register_token"
                
                case otp = "otp"
                
            }

            public init(otp: String?, registerToken: String?, requestId: String?) {
                
                self.requestId = requestId
                
                self.registerToken = registerToken
                
                self.otp = otp
                
            }

            public func duplicate() -> VerifyOtpRequestSchema {
                let dict = self.dictionary!
                let copy = VerifyOtpRequestSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    requestId = try container.decode(String.self, forKey: .requestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    registerToken = try container.decode(String.self, forKey: .registerToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    otp = try container.decode(String.self, forKey: .otp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                
                
                
                try? container.encodeIfPresent(registerToken, forKey: .registerToken)
                
                
                
                
                try? container.encodeIfPresent(otp, forKey: .otp)
                
                
            }
            
        }
        
        /*
            Model: SendMobileOtpRequestSchema
            Used By: User
        */
        class SendMobileOtpRequestSchema: Codable {
            
            public var mobile: String?
            
            public var countryCode: String?
            
            public var action: String?
            
            public var token: String?
            
            public var androidHash: String?
            
            public var force: String?
            
            public var captchaCode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case mobile = "mobile"
                
                case countryCode = "country_code"
                
                case action = "action"
                
                case token = "token"
                
                case androidHash = "android_hash"
                
                case force = "force"
                
                case captchaCode = "captcha_code"
                
            }

            public init(action: String?, androidHash: String?, captchaCode: String?, countryCode: String?, force: String?, mobile: String?, token: String?) {
                
                self.mobile = mobile
                
                self.countryCode = countryCode
                
                self.action = action
                
                self.token = token
                
                self.androidHash = androidHash
                
                self.force = force
                
                self.captchaCode = captchaCode
                
            }

            public func duplicate() -> SendMobileOtpRequestSchema {
                let dict = self.dictionary!
                let copy = SendMobileOtpRequestSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    mobile = try container.decode(String.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    action = try container.decode(String.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    token = try container.decode(String.self, forKey: .token)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    androidHash = try container.decode(String.self, forKey: .androidHash)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    force = try container.decode(String.self, forKey: .force)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    captchaCode = try container.decode(String.self, forKey: .captchaCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
                
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(token, forKey: .token)
                
                
                
                
                try? container.encodeIfPresent(androidHash, forKey: .androidHash)
                
                
                
                
                try? container.encodeIfPresent(force, forKey: .force)
                
                
                
                
                try? container.encodeIfPresent(captchaCode, forKey: .captchaCode)
                
                
            }
            
        }
        
        /*
            Model: UpdatePasswordRequestSchema
            Used By: User
        */
        class UpdatePasswordRequestSchema: Codable {
            
            public var oldPassword: String?
            
            public var newPassword: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case oldPassword = "old_password"
                
                case newPassword = "new_password"
                
            }

            public init(newPassword: String?, oldPassword: String?) {
                
                self.oldPassword = oldPassword
                
                self.newPassword = newPassword
                
            }

            public func duplicate() -> UpdatePasswordRequestSchema {
                let dict = self.dictionary!
                let copy = UpdatePasswordRequestSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    oldPassword = try container.decode(String.self, forKey: .oldPassword)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    newPassword = try container.decode(String.self, forKey: .newPassword)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(oldPassword, forKey: .oldPassword)
                
                
                
                
                try? container.encodeIfPresent(newPassword, forKey: .newPassword)
                
                
            }
            
        }
        
        /*
            Model: FormRegisterRequestSchema
            Used By: User
        */
        class FormRegisterRequestSchema: Codable {
            
            public var firstName: String?
            
            public var lastName: String?
            
            public var gender: String?
            
            public var email: String?
            
            public var password: String?
            
            public var phone: FormRegisterRequestSchemaPhone?
            
            public var registerToken: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case firstName = "first_name"
                
                case lastName = "last_name"
                
                case gender = "gender"
                
                case email = "email"
                
                case password = "password"
                
                case phone = "phone"
                
                case registerToken = "register_token"
                
            }

            public init(email: String?, firstName: String?, gender: String?, lastName: String?, password: String?, phone: FormRegisterRequestSchemaPhone?, registerToken: String?) {
                
                self.firstName = firstName
                
                self.lastName = lastName
                
                self.gender = gender
                
                self.email = email
                
                self.password = password
                
                self.phone = phone
                
                self.registerToken = registerToken
                
            }

            public func duplicate() -> FormRegisterRequestSchema {
                let dict = self.dictionary!
                let copy = FormRegisterRequestSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    firstName = try container.decode(String.self, forKey: .firstName)
                
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
                    gender = try container.decode(String.self, forKey: .gender)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    password = try container.decode(String.self, forKey: .password)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    phone = try container.decode(FormRegisterRequestSchemaPhone.self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    registerToken = try container.decode(String.self, forKey: .registerToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(firstName, forKey: .firstName)
                
                
                
                
                try? container.encodeIfPresent(lastName, forKey: .lastName)
                
                
                
                
                try? container.encodeIfPresent(gender, forKey: .gender)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(password, forKey: .password)
                
                
                
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                
                
                
                try? container.encodeIfPresent(registerToken, forKey: .registerToken)
                
                
            }
            
        }
        
        /*
            Model: TokenRequestBodySchema
            Used By: User
        */
        class TokenRequestBodySchema: Codable {
            
            public var token: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case token = "token"
                
            }

            public init(token: String?) {
                
                self.token = token
                
            }

            public func duplicate() -> TokenRequestBodySchema {
                let dict = self.dictionary!
                let copy = TokenRequestBodySchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    token = try container.decode(String.self, forKey: .token)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(token, forKey: .token)
                
                
            }
            
        }
        
        /*
            Model: ForgotPasswordRequestSchema
            Used By: User
        */
        class ForgotPasswordRequestSchema: Codable {
            
            public var code: String?
            
            public var password: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case password = "password"
                
            }

            public init(code: String?, password: String?) {
                
                self.code = code
                
                self.password = password
                
            }

            public func duplicate() -> ForgotPasswordRequestSchema {
                let dict = self.dictionary!
                let copy = ForgotPasswordRequestSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    password = try container.decode(String.self, forKey: .password)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
                
                
                try? container.encodeIfPresent(password, forKey: .password)
                
                
            }
            
        }
        
        /*
            Model: CodeRequestBodySchema
            Used By: User
        */
        class CodeRequestBodySchema: Codable {
            
            public var code: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
            }

            public init(code: String?) {
                
                self.code = code
                
            }

            public func duplicate() -> CodeRequestBodySchema {
                let dict = self.dictionary!
                let copy = CodeRequestBodySchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    code = try container.decode(String.self, forKey: .code)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
            }
            
        }
        
        /*
            Model: SendResetPasswordEmailRequestSchema
            Used By: User
        */
        class SendResetPasswordEmailRequestSchema: Codable {
            
            public var email: String?
            
            public var captchaCode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case email = "email"
                
                case captchaCode = "captcha_code"
                
            }

            public init(captchaCode: String?, email: String?) {
                
                self.email = email
                
                self.captchaCode = captchaCode
                
            }

            public func duplicate() -> SendResetPasswordEmailRequestSchema {
                let dict = self.dictionary!
                let copy = SendResetPasswordEmailRequestSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    captchaCode = try container.decode(String.self, forKey: .captchaCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(captchaCode, forKey: .captchaCode)
                
                
            }
            
        }
        
        /*
            Model: PasswordLoginRequestSchema
            Used By: User
        */
        class PasswordLoginRequestSchema: Codable {
            
            public var captchaCode: String?
            
            public var password: String?
            
            public var username: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case captchaCode = "captcha_code"
                
                case password = "password"
                
                case username = "username"
                
            }

            public init(captchaCode: String?, password: String?, username: String?) {
                
                self.captchaCode = captchaCode
                
                self.password = password
                
                self.username = username
                
            }

            public func duplicate() -> PasswordLoginRequestSchema {
                let dict = self.dictionary!
                let copy = PasswordLoginRequestSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    captchaCode = try container.decode(String.self, forKey: .captchaCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    password = try container.decode(String.self, forKey: .password)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    username = try container.decode(String.self, forKey: .username)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(captchaCode, forKey: .captchaCode)
                
                
                
                
                try? container.encodeIfPresent(password, forKey: .password)
                
                
                
                
                try? container.encodeIfPresent(username, forKey: .username)
                
                
            }
            
        }
        
        /*
            Model: SendOtpRequestSchema
            Used By: User
        */
        class SendOtpRequestSchema: Codable {
            
            public var countryCode: String?
            
            public var captchaCode: String?
            
            public var mobile: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case countryCode = "country_code"
                
                case captchaCode = "captcha_code"
                
                case mobile = "mobile"
                
            }

            public init(captchaCode: String?, countryCode: String?, mobile: String?) {
                
                self.countryCode = countryCode
                
                self.captchaCode = captchaCode
                
                self.mobile = mobile
                
            }

            public func duplicate() -> SendOtpRequestSchema {
                let dict = self.dictionary!
                let copy = SendOtpRequestSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    captchaCode = try container.decode(String.self, forKey: .captchaCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mobile = try container.decode(String.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                
                
                
                try? container.encodeIfPresent(captchaCode, forKey: .captchaCode)
                
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
            }
            
        }
        
        /*
            Model: OAuthRequestSchema
            Used By: User
        */
        class OAuthRequestSchema: Codable {
            
            public var isSignedIn: Bool?
            
            public var oauth2: OAuthRequestSchemaOauth2?
            
            public var profile: OAuthRequestSchemaProfile?
            

            public enum CodingKeys: String, CodingKey {
                
                case isSignedIn = "is_signed_in"
                
                case oauth2 = "oauth2"
                
                case profile = "profile"
                
            }

            public init(isSignedIn: Bool?, oauth2: OAuthRequestSchemaOauth2?, profile: OAuthRequestSchemaProfile?) {
                
                self.isSignedIn = isSignedIn
                
                self.oauth2 = oauth2
                
                self.profile = profile
                
            }

            public func duplicate() -> OAuthRequestSchema {
                let dict = self.dictionary!
                let copy = OAuthRequestSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    isSignedIn = try container.decode(Bool.self, forKey: .isSignedIn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    oauth2 = try container.decode(OAuthRequestSchemaOauth2.self, forKey: .oauth2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    profile = try container.decode(OAuthRequestSchemaProfile.self, forKey: .profile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(isSignedIn, forKey: .isSignedIn)
                
                
                
                
                try? container.encodeIfPresent(oauth2, forKey: .oauth2)
                
                
                
                
                try? container.encodeIfPresent(profile, forKey: .profile)
                
                
            }
            
        }
        
        /*
            Model: OAuthRequestAppleSchema
            Used By: User
        */
        class OAuthRequestAppleSchema: Codable {
            
            public var userIdentifier: String?
            
            public var oauth: OAuthRequestAppleSchemaOauth?
            
            public var profile: OAuthRequestAppleSchemaProfile?
            

            public enum CodingKeys: String, CodingKey {
                
                case userIdentifier = "user_identifier"
                
                case oauth = "oauth"
                
                case profile = "profile"
                
            }

            public init(oauth: OAuthRequestAppleSchemaOauth?, profile: OAuthRequestAppleSchemaProfile?, userIdentifier: String?) {
                
                self.userIdentifier = userIdentifier
                
                self.oauth = oauth
                
                self.profile = profile
                
            }

            public func duplicate() -> OAuthRequestAppleSchema {
                let dict = self.dictionary!
                let copy = OAuthRequestAppleSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    userIdentifier = try container.decode(String.self, forKey: .userIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    oauth = try container.decode(OAuthRequestAppleSchemaOauth.self, forKey: .oauth)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    profile = try container.decode(OAuthRequestAppleSchemaProfile.self, forKey: .profile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(userIdentifier, forKey: .userIdentifier)
                
                
                
                
                try? container.encodeIfPresent(oauth, forKey: .oauth)
                
                
                
                
                try? container.encodeIfPresent(profile, forKey: .profile)
                
                
            }
            
        }
        
        /*
            Model: UserObjectSchema
            Used By: User
        */
        class UserObjectSchema: Codable {
            
            public var user: UserSchema?
            

            public enum CodingKeys: String, CodingKey {
                
                case user = "user"
                
            }

            public init(user: UserSchema?) {
                
                self.user = user
                
            }

            public func duplicate() -> UserObjectSchema {
                let dict = self.dictionary!
                let copy = UserObjectSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    user = try container.decode(UserSchema.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(user, forKey: .user)
                
                
            }
            
        }
        
        /*
            Model: AuthSuccess
            Used By: User
        */
        class AuthSuccess: Codable {
            
            public var registerToken: String?
            
            public var userExists: Bool?
            
            public var user: UserSchema?
            

            public enum CodingKeys: String, CodingKey {
                
                case registerToken = "register_token"
                
                case userExists = "user_exists"
                
                case user = "user"
                
            }

            public init(registerToken: String?, user: UserSchema?, userExists: Bool?) {
                
                self.registerToken = registerToken
                
                self.userExists = userExists
                
                self.user = user
                
            }

            public func duplicate() -> AuthSuccess {
                let dict = self.dictionary!
                let copy = AuthSuccess(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    registerToken = try container.decode(String.self, forKey: .registerToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    userExists = try container.decode(Bool.self, forKey: .userExists)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    user = try container.decode(UserSchema.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(registerToken, forKey: .registerToken)
                
                
                
                
                try? container.encodeIfPresent(userExists, forKey: .userExists)
                
                
                
                
                try? container.encodeIfPresent(user, forKey: .user)
                
                
            }
            
        }
        
        /*
            Model: SendOtpResponse
            Used By: User
        */
        class SendOtpResponse: Codable {
            
            public var resendTimer: Int?
            
            public var resendToken: String?
            
            public var success: Bool?
            
            public var requestId: String?
            
            public var message: String?
            
            public var mobile: String?
            
            public var countryCode: String?
            
            public var email: String?
            
            public var resendEmailToken: String?
            
            public var registerToken: String?
            
            public var verifyEmailOtp: Bool?
            
            public var verifyMobileOtp: Bool?
            
            public var userExists: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case resendTimer = "resend_timer"
                
                case resendToken = "resend_token"
                
                case success = "success"
                
                case requestId = "request_id"
                
                case message = "message"
                
                case mobile = "mobile"
                
                case countryCode = "country_code"
                
                case email = "email"
                
                case resendEmailToken = "resend_email_token"
                
                case registerToken = "register_token"
                
                case verifyEmailOtp = "verify_email_otp"
                
                case verifyMobileOtp = "verify_mobile_otp"
                
                case userExists = "user_exists"
                
            }

            public init(countryCode: String?, email: String?, message: String?, mobile: String?, registerToken: String?, requestId: String?, resendEmailToken: String?, resendTimer: Int?, resendToken: String?, success: Bool?, userExists: Bool?, verifyEmailOtp: Bool?, verifyMobileOtp: Bool?) {
                
                self.resendTimer = resendTimer
                
                self.resendToken = resendToken
                
                self.success = success
                
                self.requestId = requestId
                
                self.message = message
                
                self.mobile = mobile
                
                self.countryCode = countryCode
                
                self.email = email
                
                self.resendEmailToken = resendEmailToken
                
                self.registerToken = registerToken
                
                self.verifyEmailOtp = verifyEmailOtp
                
                self.verifyMobileOtp = verifyMobileOtp
                
                self.userExists = userExists
                
            }

            public func duplicate() -> SendOtpResponse {
                let dict = self.dictionary!
                let copy = SendOtpResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    resendTimer = try container.decode(Int.self, forKey: .resendTimer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    resendToken = try container.decode(String.self, forKey: .resendToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    requestId = try container.decode(String.self, forKey: .requestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mobile = try container.decode(String.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    resendEmailToken = try container.decode(String.self, forKey: .resendEmailToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    registerToken = try container.decode(String.self, forKey: .registerToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    verifyEmailOtp = try container.decode(Bool.self, forKey: .verifyEmailOtp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    verifyMobileOtp = try container.decode(Bool.self, forKey: .verifyMobileOtp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    userExists = try container.decode(Bool.self, forKey: .userExists)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)
                
                
                
                
                try? container.encodeIfPresent(resendToken, forKey: .resendToken)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
                
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(resendEmailToken, forKey: .resendEmailToken)
                
                
                
                
                try? container.encodeIfPresent(registerToken, forKey: .registerToken)
                
                
                
                
                try? container.encodeIfPresent(verifyEmailOtp, forKey: .verifyEmailOtp)
                
                
                
                
                try? container.encodeIfPresent(verifyMobileOtp, forKey: .verifyMobileOtp)
                
                
                
                
                try? container.encodeIfPresent(userExists, forKey: .userExists)
                
                
            }
            
        }
        
        /*
            Model: ProfileEditSuccess
            Used By: User
        */
        class ProfileEditSuccess: Codable {
            
            public var user: UserSchema?
            
            public var registerToken: String?
            
            public var userExists: Bool?
            
            public var verifyEmailLink: Bool?
            
            public var verifyEmailOtp: Bool?
            
            public var verifyMobileOtp: Bool?
            
            public var email: String?
            
            public var requestId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case user = "user"
                
                case registerToken = "register_token"
                
                case userExists = "user_exists"
                
                case verifyEmailLink = "verify_email_link"
                
                case verifyEmailOtp = "verify_email_otp"
                
                case verifyMobileOtp = "verify_mobile_otp"
                
                case email = "email"
                
                case requestId = "request_id"
                
            }

            public init(email: String?, registerToken: String?, requestId: String?, user: UserSchema?, userExists: Bool?, verifyEmailLink: Bool?, verifyEmailOtp: Bool?, verifyMobileOtp: Bool?) {
                
                self.user = user
                
                self.registerToken = registerToken
                
                self.userExists = userExists
                
                self.verifyEmailLink = verifyEmailLink
                
                self.verifyEmailOtp = verifyEmailOtp
                
                self.verifyMobileOtp = verifyMobileOtp
                
                self.email = email
                
                self.requestId = requestId
                
            }

            public func duplicate() -> ProfileEditSuccess {
                let dict = self.dictionary!
                let copy = ProfileEditSuccess(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    user = try container.decode(UserSchema.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    registerToken = try container.decode(String.self, forKey: .registerToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    userExists = try container.decode(Bool.self, forKey: .userExists)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    verifyEmailLink = try container.decode(Bool.self, forKey: .verifyEmailLink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    verifyEmailOtp = try container.decode(Bool.self, forKey: .verifyEmailOtp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    verifyMobileOtp = try container.decode(Bool.self, forKey: .verifyMobileOtp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    requestId = try container.decode(String.self, forKey: .requestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(user, forKey: .user)
                
                
                
                
                try? container.encodeIfPresent(registerToken, forKey: .registerToken)
                
                
                
                
                try? container.encodeIfPresent(userExists, forKey: .userExists)
                
                
                
                
                try? container.encodeIfPresent(verifyEmailLink, forKey: .verifyEmailLink)
                
                
                
                
                try? container.encodeIfPresent(verifyEmailOtp, forKey: .verifyEmailOtp)
                
                
                
                
                try? container.encodeIfPresent(verifyMobileOtp, forKey: .verifyMobileOtp)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                
            }
            
        }
        
        /*
            Model: LoginSuccess
            Used By: User
        */
        class LoginSuccess: Codable {
            
            public var user: UserSchema?
            
            public var requestId: String?
            
            public var registerToken: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case user = "user"
                
                case requestId = "request_id"
                
                case registerToken = "register_token"
                
            }

            public init(registerToken: String?, requestId: String?, user: UserSchema?) {
                
                self.user = user
                
                self.requestId = requestId
                
                self.registerToken = registerToken
                
            }

            public func duplicate() -> LoginSuccess {
                let dict = self.dictionary!
                let copy = LoginSuccess(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    user = try container.decode(UserSchema.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    requestId = try container.decode(String.self, forKey: .requestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    registerToken = try container.decode(String.self, forKey: .registerToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(user, forKey: .user)
                
                
                
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                
                
                
                try? container.encodeIfPresent(registerToken, forKey: .registerToken)
                
                
            }
            
        }
        
        /*
            Model: VerifyOtpSuccess
            Used By: User
        */
        class VerifyOtpSuccess: Codable {
            
            public var user: UserSchema?
            
            public var userExists: Bool?
            
            public var registerToken: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case user = "user"
                
                case userExists = "user_exists"
                
                case registerToken = "register_token"
                
            }

            public init(registerToken: String?, user: UserSchema?, userExists: Bool?) {
                
                self.user = user
                
                self.userExists = userExists
                
                self.registerToken = registerToken
                
            }

            public func duplicate() -> VerifyOtpSuccess {
                let dict = self.dictionary!
                let copy = VerifyOtpSuccess(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    user = try container.decode(UserSchema.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    userExists = try container.decode(Bool.self, forKey: .userExists)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    registerToken = try container.decode(String.self, forKey: .registerToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(user, forKey: .user)
                
                
                
                
                try? container.encodeIfPresent(userExists, forKey: .userExists)
                
                
                
                
                try? container.encodeIfPresent(registerToken, forKey: .registerToken)
                
                
            }
            
        }
        
        /*
            Model: ResetPasswordSuccess
            Used By: User
        */
        class ResetPasswordSuccess: Codable {
            
            public var status: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case status = "status"
                
            }

            public init(status: String?) {
                
                self.status = status
                
            }

            public func duplicate() -> ResetPasswordSuccess {
                let dict = self.dictionary!
                let copy = ResetPasswordSuccess(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    status = try container.decode(String.self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(status, forKey: .status)
                
                
            }
            
        }
        
        /*
            Model: RegisterFormSuccess
            Used By: User
        */
        class RegisterFormSuccess: Codable {
            
            public var email: String?
            
            public var resendTimer: Int?
            
            public var resendToken: String?
            
            public var resendEmailToken: String?
            
            public var registerToken: String?
            
            public var success: Bool?
            
            public var requestId: String?
            
            public var message: String?
            
            public var mobile: String?
            
            public var countryCode: String?
            
            public var verifyEmailOtp: Bool?
            
            public var verifyMobileOtp: Bool?
            
            public var userExists: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case email = "email"
                
                case resendTimer = "resend_timer"
                
                case resendToken = "resend_token"
                
                case resendEmailToken = "resend_email_token"
                
                case registerToken = "register_token"
                
                case success = "success"
                
                case requestId = "request_id"
                
                case message = "message"
                
                case mobile = "mobile"
                
                case countryCode = "country_code"
                
                case verifyEmailOtp = "verify_email_otp"
                
                case verifyMobileOtp = "verify_mobile_otp"
                
                case userExists = "user_exists"
                
            }

            public init(countryCode: String?, email: String?, message: String?, mobile: String?, registerToken: String?, requestId: String?, resendEmailToken: String?, resendTimer: Int?, resendToken: String?, success: Bool?, userExists: Bool?, verifyEmailOtp: Bool?, verifyMobileOtp: Bool?) {
                
                self.email = email
                
                self.resendTimer = resendTimer
                
                self.resendToken = resendToken
                
                self.resendEmailToken = resendEmailToken
                
                self.registerToken = registerToken
                
                self.success = success
                
                self.requestId = requestId
                
                self.message = message
                
                self.mobile = mobile
                
                self.countryCode = countryCode
                
                self.verifyEmailOtp = verifyEmailOtp
                
                self.verifyMobileOtp = verifyMobileOtp
                
                self.userExists = userExists
                
            }

            public func duplicate() -> RegisterFormSuccess {
                let dict = self.dictionary!
                let copy = RegisterFormSuccess(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    resendTimer = try container.decode(Int.self, forKey: .resendTimer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    resendToken = try container.decode(String.self, forKey: .resendToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    resendEmailToken = try container.decode(String.self, forKey: .resendEmailToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    registerToken = try container.decode(String.self, forKey: .registerToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    requestId = try container.decode(String.self, forKey: .requestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mobile = try container.decode(String.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    verifyEmailOtp = try container.decode(Bool.self, forKey: .verifyEmailOtp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    verifyMobileOtp = try container.decode(Bool.self, forKey: .verifyMobileOtp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    userExists = try container.decode(Bool.self, forKey: .userExists)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)
                
                
                
                
                try? container.encodeIfPresent(resendToken, forKey: .resendToken)
                
                
                
                
                try? container.encodeIfPresent(resendEmailToken, forKey: .resendEmailToken)
                
                
                
                
                try? container.encodeIfPresent(registerToken, forKey: .registerToken)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
                
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                
                
                
                try? container.encodeIfPresent(verifyEmailOtp, forKey: .verifyEmailOtp)
                
                
                
                
                try? container.encodeIfPresent(verifyMobileOtp, forKey: .verifyMobileOtp)
                
                
                
                
                try? container.encodeIfPresent(userExists, forKey: .userExists)
                
                
            }
            
        }
        
        /*
            Model: VerifyEmailSuccess
            Used By: User
        */
        class VerifyEmailSuccess: Codable {
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
            }

            public init(message: String?) {
                
                self.message = message
                
            }

            public func duplicate() -> VerifyEmailSuccess {
                let dict = self.dictionary!
                let copy = VerifyEmailSuccess(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
            }
            
        }
        
        /*
            Model: HasPasswordSuccess
            Used By: User
        */
        class HasPasswordSuccess: Codable {
            
            public var result: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case result = "result"
                
            }

            public init(result: Bool?) {
                
                self.result = result
                
            }

            public func duplicate() -> HasPasswordSuccess {
                let dict = self.dictionary!
                let copy = HasPasswordSuccess(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    result = try container.decode(Bool.self, forKey: .result)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(result, forKey: .result)
                
                
            }
            
        }
        
        /*
            Model: LogoutSuccess
            Used By: User
        */
        class LogoutSuccess: Codable {
            
            public var logout: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case logout = "logout"
                
            }

            public init(logout: Bool?) {
                
                self.logout = logout
                
            }

            public func duplicate() -> LogoutSuccess {
                let dict = self.dictionary!
                let copy = LogoutSuccess(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    logout = try container.decode(Bool.self, forKey: .logout)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(logout, forKey: .logout)
                
                
            }
            
        }
        
        /*
            Model: BlockUserSuccess
            Used By: User
        */
        class BlockUserSuccess: Codable {
            
            public var success: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
            }

            public init(success: Bool?) {
                
                self.success = success
                
            }

            public func duplicate() -> BlockUserSuccess {
                let dict = self.dictionary!
                let copy = BlockUserSuccess(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: OtpSuccess
            Used By: User
        */
        class OtpSuccess: Codable {
            
            public var resendTimer: Int?
            
            public var resendToken: String?
            
            public var registerToken: String?
            
            public var success: Bool?
            
            public var requestId: String?
            
            public var message: String?
            
            public var mobile: String?
            
            public var countryCode: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case resendTimer = "resend_timer"
                
                case resendToken = "resend_token"
                
                case registerToken = "register_token"
                
                case success = "success"
                
                case requestId = "request_id"
                
                case message = "message"
                
                case mobile = "mobile"
                
                case countryCode = "country_code"
                
            }

            public init(countryCode: String?, message: String?, mobile: String?, registerToken: String?, requestId: String?, resendTimer: Int?, resendToken: String?, success: Bool?) {
                
                self.resendTimer = resendTimer
                
                self.resendToken = resendToken
                
                self.registerToken = registerToken
                
                self.success = success
                
                self.requestId = requestId
                
                self.message = message
                
                self.mobile = mobile
                
                self.countryCode = countryCode
                
            }

            public func duplicate() -> OtpSuccess {
                let dict = self.dictionary!
                let copy = OtpSuccess(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    resendTimer = try container.decode(Int.self, forKey: .resendTimer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    resendToken = try container.decode(String.self, forKey: .resendToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    registerToken = try container.decode(String.self, forKey: .registerToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    requestId = try container.decode(String.self, forKey: .requestId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mobile = try container.decode(String.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(resendTimer, forKey: .resendTimer)
                
                
                
                
                try? container.encodeIfPresent(resendToken, forKey: .resendToken)
                
                
                
                
                try? container.encodeIfPresent(registerToken, forKey: .registerToken)
                
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
                
                
                try? container.encodeIfPresent(requestId, forKey: .requestId)
                
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
                
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                
            }
            
        }
        
        /*
            Model: EmailOtpSuccess
            Used By: User
        */
        class EmailOtpSuccess: Codable {
            
            public var success: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case success = "success"
                
            }

            public init(success: Bool?) {
                
                self.success = success
                
            }

            public func duplicate() -> EmailOtpSuccess {
                let dict = self.dictionary!
                let copy = EmailOtpSuccess(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(success, forKey: .success)
                
                
            }
            
        }
        
        /*
            Model: SessionListSuccess
            Used By: User
        */
        class SessionListSuccess: Codable {
            
            public var sessions: [String]?
            

            public enum CodingKeys: String, CodingKey {
                
                case sessions = "sessions"
                
            }

            public init(sessions: [String]?) {
                
                self.sessions = sessions
                
            }

            public func duplicate() -> SessionListSuccess {
                let dict = self.dictionary!
                let copy = SessionListSuccess(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    sessions = try container.decode([String].self, forKey: .sessions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(sessions, forKey: .sessions)
                
                
            }
            
        }
        
        /*
            Model: VerifyMobileOTPSuccess
            Used By: User
        */
        class VerifyMobileOTPSuccess: Codable {
            
            public var user: UserSchema?
            
            public var verifyMobileLink: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case user = "user"
                
                case verifyMobileLink = "verify_mobile_link"
                
            }

            public init(user: UserSchema?, verifyMobileLink: Bool?) {
                
                self.user = user
                
                self.verifyMobileLink = verifyMobileLink
                
            }

            public func duplicate() -> VerifyMobileOTPSuccess {
                let dict = self.dictionary!
                let copy = VerifyMobileOTPSuccess(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    user = try container.decode(UserSchema.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    verifyMobileLink = try container.decode(Bool.self, forKey: .verifyMobileLink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(user, forKey: .user)
                
                
                
                
                try? container.encodeIfPresent(verifyMobileLink, forKey: .verifyMobileLink)
                
                
            }
            
        }
        
        /*
            Model: VerifyEmailOTPSuccess
            Used By: User
        */
        class VerifyEmailOTPSuccess: Codable {
            
            public var user: UserSchema?
            
            public var verifyEmailLink: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case user = "user"
                
                case verifyEmailLink = "verify_email_link"
                
            }

            public init(user: UserSchema?, verifyEmailLink: Bool?) {
                
                self.user = user
                
                self.verifyEmailLink = verifyEmailLink
                
            }

            public func duplicate() -> VerifyEmailOTPSuccess {
                let dict = self.dictionary!
                let copy = VerifyEmailOTPSuccess(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    user = try container.decode(UserSchema.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    verifyEmailLink = try container.decode(Bool.self, forKey: .verifyEmailLink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(user, forKey: .user)
                
                
                
                
                try? container.encodeIfPresent(verifyEmailLink, forKey: .verifyEmailLink)
                
                
            }
            
        }
        
        /*
            Model: SendMobileVerifyLinkSuccess
            Used By: User
        */
        class SendMobileVerifyLinkSuccess: Codable {
            
            public var verifyMobileLink: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case verifyMobileLink = "verify_mobile_link"
                
            }

            public init(verifyMobileLink: Bool?) {
                
                self.verifyMobileLink = verifyMobileLink
                
            }

            public func duplicate() -> SendMobileVerifyLinkSuccess {
                let dict = self.dictionary!
                let copy = SendMobileVerifyLinkSuccess(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    verifyMobileLink = try container.decode(Bool.self, forKey: .verifyMobileLink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(verifyMobileLink, forKey: .verifyMobileLink)
                
                
            }
            
        }
        
        /*
            Model: SendEmailVerifyLinkSuccess
            Used By: User
        */
        class SendEmailVerifyLinkSuccess: Codable {
            
            public var verifyEmailLink: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case verifyEmailLink = "verify_email_link"
                
            }

            public init(verifyEmailLink: Bool?) {
                
                self.verifyEmailLink = verifyEmailLink
                
            }

            public func duplicate() -> SendEmailVerifyLinkSuccess {
                let dict = self.dictionary!
                let copy = SendEmailVerifyLinkSuccess(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    verifyEmailLink = try container.decode(Bool.self, forKey: .verifyEmailLink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(verifyEmailLink, forKey: .verifyEmailLink)
                
                
            }
            
        }
        
        /*
            Model: UserSearchResponseSchema
            Used By: User
        */
        class UserSearchResponseSchema: Codable {
            
            public var users: [UserSchema]?
            

            public enum CodingKeys: String, CodingKey {
                
                case users = "users"
                
            }

            public init(users: [UserSchema]?) {
                
                self.users = users
                
            }

            public func duplicate() -> UserSearchResponseSchema {
                let dict = self.dictionary!
                let copy = UserSearchResponseSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    users = try container.decode([UserSchema].self, forKey: .users)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(users, forKey: .users)
                
                
            }
            
        }
        
        /*
            Model: CustomerListResponseSchema
            Used By: User
        */
        class CustomerListResponseSchema: Codable {
            
            public var items: [UserSchema]?
            
            public var page: PaginationSchema?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
                case page = "page"
                
            }

            public init(items: [UserSchema]?, page: PaginationSchema?) {
                
                self.items = items
                
                self.page = page
                
            }

            public func duplicate() -> CustomerListResponseSchema {
                let dict = self.dictionary!
                let copy = CustomerListResponseSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([UserSchema].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    page = try container.decode(PaginationSchema.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                
            }
            
        }
        
        /*
            Model: SessionListResponseSchema
            Used By: User
        */
        class SessionListResponseSchema: Codable {
            
            public var items: [String]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
            }

            public init(items: [String]?) {
                
                self.items = items
                
            }

            public func duplicate() -> SessionListResponseSchema {
                let dict = self.dictionary!
                let copy = SessionListResponseSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([String].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
            }
            
        }
        
        /*
            Model: SessionDeleteResponseSchema
            Used By: User
        */
        class SessionDeleteResponseSchema: Codable {
            
            public var items: [String]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
            }

            public init(items: [String]?) {
                
                self.items = items
                
            }

            public func duplicate() -> SessionDeleteResponseSchema {
                let dict = self.dictionary!
                let copy = SessionDeleteResponseSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([String].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
            }
            
        }
        
        /*
            Model: UnauthorizedSchema
            Used By: User
        */
        class UnauthorizedSchema: Codable {
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
            }

            public init(message: String?) {
                
                self.message = message
                
            }

            public func duplicate() -> UnauthorizedSchema {
                let dict = self.dictionary!
                let copy = UnauthorizedSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
            }
            
        }
        
        /*
            Model: UnauthenticatedSchema
            Used By: User
        */
        class UnauthenticatedSchema: Codable {
            
            public var authenticated: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case authenticated = "authenticated"
                
            }

            public init(authenticated: Bool?) {
                
                self.authenticated = authenticated
                
            }

            public func duplicate() -> UnauthenticatedSchema {
                let dict = self.dictionary!
                let copy = UnauthenticatedSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    authenticated = try container.decode(Bool.self, forKey: .authenticated)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(authenticated, forKey: .authenticated)
                
                
            }
            
        }
        
        /*
            Model: NotFoundSchema
            Used By: User
        */
        class NotFoundSchema: Codable {
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
            }

            public init(message: String?) {
                
                self.message = message
                
            }

            public func duplicate() -> NotFoundSchema {
                let dict = self.dictionary!
                let copy = NotFoundSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
            }
            
        }
        
        /*
            Model: AuthenticationInternalServerErrorSchema
            Used By: User
        */
        class AuthenticationInternalServerErrorSchema: Codable {
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
            }

            public init(message: String?) {
                
                self.message = message
                
            }

            public func duplicate() -> AuthenticationInternalServerErrorSchema {
                let dict = self.dictionary!
                let copy = AuthenticationInternalServerErrorSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
            }
            
        }
        
        /*
            Model: AuthenticationApiErrorSchema
            Used By: User
        */
        class AuthenticationApiErrorSchema: Codable {
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
            }

            public init(message: String?) {
                
                self.message = message
                
            }

            public func duplicate() -> AuthenticationApiErrorSchema {
                let dict = self.dictionary!
                let copy = AuthenticationApiErrorSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    message = try container.decode(String.self, forKey: .message)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(message, forKey: .message)
                
                
            }
            
        }
        
        /*
            Model: ProfileEditSuccessSchema
            Used By: User
        */
        class ProfileEditSuccessSchema: Codable {
            
            public var email: String?
            
            public var verifyEmailOtp: Bool?
            
            public var verifyEmailLink: Bool?
            
            public var verifyMobileOtp: Bool?
            
            public var user: String?
            
            public var registerToken: String?
            
            public var userExists: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case email = "email"
                
                case verifyEmailOtp = "verify_email_otp"
                
                case verifyEmailLink = "verify_email_link"
                
                case verifyMobileOtp = "verify_mobile_otp"
                
                case user = "user"
                
                case registerToken = "register_token"
                
                case userExists = "user_exists"
                
            }

            public init(email: String?, registerToken: String?, user: String?, userExists: Bool?, verifyEmailLink: Bool?, verifyEmailOtp: Bool?, verifyMobileOtp: Bool?) {
                
                self.email = email
                
                self.verifyEmailOtp = verifyEmailOtp
                
                self.verifyEmailLink = verifyEmailLink
                
                self.verifyMobileOtp = verifyMobileOtp
                
                self.user = user
                
                self.registerToken = registerToken
                
                self.userExists = userExists
                
            }

            public func duplicate() -> ProfileEditSuccessSchema {
                let dict = self.dictionary!
                let copy = ProfileEditSuccessSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    verifyEmailOtp = try container.decode(Bool.self, forKey: .verifyEmailOtp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    verifyEmailLink = try container.decode(Bool.self, forKey: .verifyEmailLink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    verifyMobileOtp = try container.decode(Bool.self, forKey: .verifyMobileOtp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    user = try container.decode(String.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    registerToken = try container.decode(String.self, forKey: .registerToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    userExists = try container.decode(Bool.self, forKey: .userExists)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(verifyEmailOtp, forKey: .verifyEmailOtp)
                
                
                
                
                try? container.encodeIfPresent(verifyEmailLink, forKey: .verifyEmailLink)
                
                
                
                
                try? container.encodeIfPresent(verifyMobileOtp, forKey: .verifyMobileOtp)
                
                
                
                
                try? container.encodeIfPresent(user, forKey: .user)
                
                
                
                
                try? container.encodeIfPresent(registerToken, forKey: .registerToken)
                
                
                
                
                try? container.encodeIfPresent(userExists, forKey: .userExists)
                
                
            }
            
        }
        
        /*
            Model: FormRegisterRequestSchemaPhone
            Used By: User
        */
        class FormRegisterRequestSchemaPhone: Codable {
            
            public var countryCode: String?
            
            public var mobile: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case countryCode = "country_code"
                
                case mobile = "mobile"
                
            }

            public init(countryCode: String?, mobile: String?) {
                
                self.countryCode = countryCode
                
                self.mobile = mobile
                
            }

            public func duplicate() -> FormRegisterRequestSchemaPhone {
                let dict = self.dictionary!
                let copy = FormRegisterRequestSchemaPhone(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mobile = try container.decode(String.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
            }
            
        }
        
        /*
            Model: OAuthRequestSchemaOauth2
            Used By: User
        */
        class OAuthRequestSchemaOauth2: Codable {
            
            public var accessToken: String?
            
            public var expiry: Int?
            
            public var refreshToken: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case accessToken = "access_token"
                
                case expiry = "expiry"
                
                case refreshToken = "refresh_token"
                
            }

            public init(accessToken: String?, expiry: Int?, refreshToken: String?) {
                
                self.accessToken = accessToken
                
                self.expiry = expiry
                
                self.refreshToken = refreshToken
                
            }

            public func duplicate() -> OAuthRequestSchemaOauth2 {
                let dict = self.dictionary!
                let copy = OAuthRequestSchemaOauth2(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    accessToken = try container.decode(String.self, forKey: .accessToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    expiry = try container.decode(Int.self, forKey: .expiry)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    refreshToken = try container.decode(String.self, forKey: .refreshToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(accessToken, forKey: .accessToken)
                
                
                
                
                try? container.encodeIfPresent(expiry, forKey: .expiry)
                
                
                
                
                try? container.encodeIfPresent(refreshToken, forKey: .refreshToken)
                
                
            }
            
        }
        
        /*
            Model: OAuthRequestSchemaProfile
            Used By: User
        */
        class OAuthRequestSchemaProfile: Codable {
            
            public var lastName: String?
            
            public var image: String?
            
            public var id: String?
            
            public var email: String?
            
            public var fullName: String?
            
            public var firstName: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case lastName = "last_name"
                
                case image = "image"
                
                case id = "id"
                
                case email = "email"
                
                case fullName = "full_name"
                
                case firstName = "first_name"
                
            }

            public init(email: String?, firstName: String?, fullName: String?, id: String?, image: String?, lastName: String?) {
                
                self.lastName = lastName
                
                self.image = image
                
                self.id = id
                
                self.email = email
                
                self.fullName = fullName
                
                self.firstName = firstName
                
            }

            public func duplicate() -> OAuthRequestSchemaProfile {
                let dict = self.dictionary!
                let copy = OAuthRequestSchemaProfile(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    lastName = try container.decode(String.self, forKey: .lastName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    image = try container.decode(String.self, forKey: .image)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fullName = try container.decode(String.self, forKey: .fullName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    firstName = try container.decode(String.self, forKey: .firstName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(lastName, forKey: .lastName)
                
                
                
                
                try? container.encodeIfPresent(image, forKey: .image)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(fullName, forKey: .fullName)
                
                
                
                
                try? container.encodeIfPresent(firstName, forKey: .firstName)
                
                
            }
            
        }
        
        /*
            Model: OAuthRequestAppleSchemaOauth
            Used By: User
        */
        class OAuthRequestAppleSchemaOauth: Codable {
            
            public var identityToken: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case identityToken = "identity_token"
                
            }

            public init(identityToken: String?) {
                
                self.identityToken = identityToken
                
            }

            public func duplicate() -> OAuthRequestAppleSchemaOauth {
                let dict = self.dictionary!
                let copy = OAuthRequestAppleSchemaOauth(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    identityToken = try container.decode(String.self, forKey: .identityToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(identityToken, forKey: .identityToken)
                
                
            }
            
        }
        
        /*
            Model: OAuthRequestAppleSchemaProfile
            Used By: User
        */
        class OAuthRequestAppleSchemaProfile: Codable {
            
            public var lastName: String?
            
            public var fullName: String?
            
            public var firstName: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case lastName = "last_name"
                
                case fullName = "full_name"
                
                case firstName = "first_name"
                
            }

            public init(firstName: String?, fullName: String?, lastName: String?) {
                
                self.lastName = lastName
                
                self.fullName = fullName
                
                self.firstName = firstName
                
            }

            public func duplicate() -> OAuthRequestAppleSchemaProfile {
                let dict = self.dictionary!
                let copy = OAuthRequestAppleSchemaProfile(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    lastName = try container.decode(String.self, forKey: .lastName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fullName = try container.decode(String.self, forKey: .fullName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    firstName = try container.decode(String.self, forKey: .firstName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(lastName, forKey: .lastName)
                
                
                
                
                try? container.encodeIfPresent(fullName, forKey: .fullName)
                
                
                
                
                try? container.encodeIfPresent(firstName, forKey: .firstName)
                
                
            }
            
        }
        
        /*
            Model: AuthSuccessUser
            Used By: User
        */
        class AuthSuccessUser: Codable {
            
            public var firstName: String?
            
            public var lastName: String?
            
            public var debug: AuthSuccessUserDebug?
            
            public var active: Bool?
            
            public var emails: AuthSuccessUserEmails?
            

            public enum CodingKeys: String, CodingKey {
                
                case firstName = "first_name"
                
                case lastName = "last_name"
                
                case debug = "debug"
                
                case active = "active"
                
                case emails = "emails"
                
            }

            public init(active: Bool?, debug: AuthSuccessUserDebug?, emails: AuthSuccessUserEmails?, firstName: String?, lastName: String?) {
                
                self.firstName = firstName
                
                self.lastName = lastName
                
                self.debug = debug
                
                self.active = active
                
                self.emails = emails
                
            }

            public func duplicate() -> AuthSuccessUser {
                let dict = self.dictionary!
                let copy = AuthSuccessUser(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    firstName = try container.decode(String.self, forKey: .firstName)
                
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
                    debug = try container.decode(AuthSuccessUserDebug.self, forKey: .debug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    emails = try container.decode(AuthSuccessUserEmails.self, forKey: .emails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(firstName, forKey: .firstName)
                
                
                
                
                try? container.encodeIfPresent(lastName, forKey: .lastName)
                
                
                
                
                try? container.encodeIfPresent(debug, forKey: .debug)
                
                
                
                
                try? container.encodeIfPresent(active, forKey: .active)
                
                
                
                
                try? container.encodeIfPresent(emails, forKey: .emails)
                
                
            }
            
        }
        
        /*
            Model: AuthSuccessUserDebug
            Used By: User
        */
        class AuthSuccessUserDebug: Codable {
            
            public var platform: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case platform = "platform"
                
            }

            public init(platform: String?) {
                
                self.platform = platform
                
            }

            public func duplicate() -> AuthSuccessUserDebug {
                let dict = self.dictionary!
                let copy = AuthSuccessUserDebug(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    platform = try container.decode(String.self, forKey: .platform)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(platform, forKey: .platform)
                
                
            }
            
        }
        
        /*
            Model: AuthSuccessUserEmails
            Used By: User
        */
        class AuthSuccessUserEmails: Codable {
            
            public var email: String?
            
            public var verified: Bool?
            
            public var primary: Bool?
            
            public var active: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case email = "email"
                
                case verified = "verified"
                
                case primary = "primary"
                
                case active = "active"
                
            }

            public init(active: Bool?, email: String?, primary: Bool?, verified: Bool?) {
                
                self.email = email
                
                self.verified = verified
                
                self.primary = primary
                
                self.active = active
                
            }

            public func duplicate() -> AuthSuccessUserEmails {
                let dict = self.dictionary!
                let copy = AuthSuccessUserEmails(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    verified = try container.decode(Bool.self, forKey: .verified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    primary = try container.decode(Bool.self, forKey: .primary)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(verified, forKey: .verified)
                
                
                
                
                try? container.encodeIfPresent(primary, forKey: .primary)
                
                
                
                
                try? container.encodeIfPresent(active, forKey: .active)
                
                
            }
            
        }
        
        /*
            Model: CreateUserRequestSchema
            Used By: User
        */
        class CreateUserRequestSchema: Codable {
            
            public var phoneNumber: String
            
            public var email: String?
            
            public var firstName: String?
            
            public var lastName: String?
            
            public var gender: String?
            
            public var username: String
            
            public var meta: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case phoneNumber = "phone_number"
                
                case email = "email"
                
                case firstName = "first_name"
                
                case lastName = "last_name"
                
                case gender = "gender"
                
                case username = "username"
                
                case meta = "meta"
                
            }

            public init(email: String?, firstName: String?, gender: String?, lastName: String?, meta: [String: Any]?, phoneNumber: String, username: String) {
                
                self.phoneNumber = phoneNumber
                
                self.email = email
                
                self.firstName = firstName
                
                self.lastName = lastName
                
                self.gender = gender
                
                self.username = username
                
                self.meta = meta
                
            }

            public func duplicate() -> CreateUserRequestSchema {
                let dict = self.dictionary!
                let copy = CreateUserRequestSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
                
                
                
                
                do {
                    email = try container.decode(String.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    firstName = try container.decode(String.self, forKey: .firstName)
                
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
                    gender = try container.decode(String.self, forKey: .gender)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                username = try container.decode(String.self, forKey: .username)
                
                
                
                
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(firstName, forKey: .firstName)
                
                
                
                
                try? container.encodeIfPresent(lastName, forKey: .lastName)
                
                
                
                
                try? container.encodeIfPresent(gender, forKey: .gender)
                
                
                
                
                try? container.encodeIfPresent(username, forKey: .username)
                
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
            }
            
        }
        
        /*
            Model: CreateUserResponseSchema
            Used By: User
        */
        class CreateUserResponseSchema: Codable {
            
            public var user: UserSchema?
            

            public enum CodingKeys: String, CodingKey {
                
                case user = "user"
                
            }

            public init(user: UserSchema?) {
                
                self.user = user
                
            }

            public func duplicate() -> CreateUserResponseSchema {
                let dict = self.dictionary!
                let copy = CreateUserResponseSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    user = try container.decode(UserSchema.self, forKey: .user)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(user, forKey: .user)
                
                
            }
            
        }
        
        /*
            Model: CreateUserSessionRequestSchema
            Used By: User
        */
        class CreateUserSessionRequestSchema: Codable {
            
            public var domain: String?
            
            public var maxAge: Double?
            
            public var userId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case domain = "domain"
                
                case maxAge = "max_age"
                
                case userId = "user_id"
                
            }

            public init(domain: String?, maxAge: Double?, userId: String?) {
                
                self.domain = domain
                
                self.maxAge = maxAge
                
                self.userId = userId
                
            }

            public func duplicate() -> CreateUserSessionRequestSchema {
                let dict = self.dictionary!
                let copy = CreateUserSessionRequestSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    domain = try container.decode(String.self, forKey: .domain)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    maxAge = try container.decode(Double.self, forKey: .maxAge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(domain, forKey: .domain)
                
                
                
                
                try? container.encodeIfPresent(maxAge, forKey: .maxAge)
                
                
                
                
                try? container.encodeIfPresent(userId, forKey: .userId)
                
                
            }
            
        }
        
        /*
            Model: CreateUserSessionResponseSchema
            Used By: User
        */
        class CreateUserSessionResponseSchema: Codable {
            
            public var domain: String?
            
            public var maxAge: Double?
            
            public var secure: Bool?
            
            public var httpOnly: Bool?
            
            public var cookie: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case domain = "domain"
                
                case maxAge = "max_age"
                
                case secure = "secure"
                
                case httpOnly = "http_only"
                
                case cookie = "cookie"
                
            }

            public init(cookie: [String: Any]?, domain: String?, httpOnly: Bool?, maxAge: Double?, secure: Bool?) {
                
                self.domain = domain
                
                self.maxAge = maxAge
                
                self.secure = secure
                
                self.httpOnly = httpOnly
                
                self.cookie = cookie
                
            }

            public func duplicate() -> CreateUserSessionResponseSchema {
                let dict = self.dictionary!
                let copy = CreateUserSessionResponseSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    domain = try container.decode(String.self, forKey: .domain)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    maxAge = try container.decode(Double.self, forKey: .maxAge)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    secure = try container.decode(Bool.self, forKey: .secure)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    httpOnly = try container.decode(Bool.self, forKey: .httpOnly)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cookie = try container.decode([String: Any].self, forKey: .cookie)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(domain, forKey: .domain)
                
                
                
                
                try? container.encodeIfPresent(maxAge, forKey: .maxAge)
                
                
                
                
                try? container.encodeIfPresent(secure, forKey: .secure)
                
                
                
                
                try? container.encodeIfPresent(httpOnly, forKey: .httpOnly)
                
                
                
                
                try? container.encodeIfPresent(cookie, forKey: .cookie)
                
                
            }
            
        }
        
        /*
            Model: PlatformSchema
            Used By: User
        */
        class PlatformSchema: Codable {
            
            public var display: String?
            
            public var lookAndFeel: LookAndFeel?
            
            public var updatedAt: String?
            
            public var active: Bool?
            
            public var forgotPassword: Bool?
            
            public var login: Login?
            
            public var skipCaptcha: Bool?
            
            public var name: String?
            
            public var meta: MetaSchema?
            
            public var id: String?
            
            public var social: Social?
            
            public var requiredFields: RequiredFields?
            
            public var registerRequiredFields: RegisterRequiredFields?
            
            public var skipLogin: Bool?
            
            public var flashCard: FlashCard?
            
            public var subtext: String?
            
            public var socialTokens: SocialTokens?
            
            public var createdAt: String?
            
            public var register: Bool?
            
            public var mobileImage: String?
            
            public var desktopImage: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case display = "display"
                
                case lookAndFeel = "look_and_feel"
                
                case updatedAt = "updated_at"
                
                case active = "active"
                
                case forgotPassword = "forgot_password"
                
                case login = "login"
                
                case skipCaptcha = "skip_captcha"
                
                case name = "name"
                
                case meta = "meta"
                
                case id = "_id"
                
                case social = "social"
                
                case requiredFields = "required_fields"
                
                case registerRequiredFields = "register_required_fields"
                
                case skipLogin = "skip_login"
                
                case flashCard = "flash_card"
                
                case subtext = "subtext"
                
                case socialTokens = "social_tokens"
                
                case createdAt = "created_at"
                
                case register = "register"
                
                case mobileImage = "mobile_image"
                
                case desktopImage = "desktop_image"
                
            }

            public init(active: Bool?, createdAt: String?, desktopImage: String?, display: String?, flashCard: FlashCard?, forgotPassword: Bool?, login: Login?, lookAndFeel: LookAndFeel?, meta: MetaSchema?, mobileImage: String?, name: String?, register: Bool?, registerRequiredFields: RegisterRequiredFields?, requiredFields: RequiredFields?, skipCaptcha: Bool?, skipLogin: Bool?, social: Social?, socialTokens: SocialTokens?, subtext: String?, updatedAt: String?, id: String?) {
                
                self.display = display
                
                self.lookAndFeel = lookAndFeel
                
                self.updatedAt = updatedAt
                
                self.active = active
                
                self.forgotPassword = forgotPassword
                
                self.login = login
                
                self.skipCaptcha = skipCaptcha
                
                self.name = name
                
                self.meta = meta
                
                self.id = id
                
                self.social = social
                
                self.requiredFields = requiredFields
                
                self.registerRequiredFields = registerRequiredFields
                
                self.skipLogin = skipLogin
                
                self.flashCard = flashCard
                
                self.subtext = subtext
                
                self.socialTokens = socialTokens
                
                self.createdAt = createdAt
                
                self.register = register
                
                self.mobileImage = mobileImage
                
                self.desktopImage = desktopImage
                
            }

            public func duplicate() -> PlatformSchema {
                let dict = self.dictionary!
                let copy = PlatformSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    lookAndFeel = try container.decode(LookAndFeel.self, forKey: .lookAndFeel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    forgotPassword = try container.decode(Bool.self, forKey: .forgotPassword)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    login = try container.decode(Login.self, forKey: .login)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    skipCaptcha = try container.decode(Bool.self, forKey: .skipCaptcha)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    meta = try container.decode(MetaSchema.self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    social = try container.decode(Social.self, forKey: .social)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    requiredFields = try container.decode(RequiredFields.self, forKey: .requiredFields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    registerRequiredFields = try container.decode(RegisterRequiredFields.self, forKey: .registerRequiredFields)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    skipLogin = try container.decode(Bool.self, forKey: .skipLogin)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    flashCard = try container.decode(FlashCard.self, forKey: .flashCard)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    subtext = try container.decode(String.self, forKey: .subtext)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    socialTokens = try container.decode(SocialTokens.self, forKey: .socialTokens)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    register = try container.decode(Bool.self, forKey: .register)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mobileImage = try container.decode(String.self, forKey: .mobileImage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    desktopImage = try container.decode(String.self, forKey: .desktopImage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(display, forKey: .display)
                
                
                
                
                try? container.encodeIfPresent(lookAndFeel, forKey: .lookAndFeel)
                
                
                
                
                try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
                
                
                
                
                try? container.encodeIfPresent(active, forKey: .active)
                
                
                
                
                try? container.encodeIfPresent(forgotPassword, forKey: .forgotPassword)
                
                
                
                
                try? container.encodeIfPresent(login, forKey: .login)
                
                
                
                
                try? container.encodeIfPresent(skipCaptcha, forKey: .skipCaptcha)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(social, forKey: .social)
                
                
                
                
                try? container.encodeIfPresent(requiredFields, forKey: .requiredFields)
                
                
                
                
                try? container.encodeIfPresent(registerRequiredFields, forKey: .registerRequiredFields)
                
                
                
                
                try? container.encodeIfPresent(skipLogin, forKey: .skipLogin)
                
                
                
                
                try? container.encodeIfPresent(flashCard, forKey: .flashCard)
                
                
                
                
                try? container.encodeIfPresent(subtext, forKey: .subtext)
                
                
                
                
                try? container.encodeIfPresent(socialTokens, forKey: .socialTokens)
                
                
                
                
                try? container.encodeIfPresent(createdAt, forKey: .createdAt)
                
                
                
                
                try? container.encodeIfPresent(register, forKey: .register)
                
                
                
                
                try? container.encodeIfPresent(mobileImage, forKey: .mobileImage)
                
                
                
                
                try? container.encodeIfPresent(desktopImage, forKey: .desktopImage)
                
                
            }
            
        }
        
        /*
            Model: LookAndFeel
            Used By: User
        */
        class LookAndFeel: Codable {
            
            public var cardPosition: String?
            
            public var backgroundColor: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case cardPosition = "card_position"
                
                case backgroundColor = "background_color"
                
            }

            public init(backgroundColor: String?, cardPosition: String?) {
                
                self.cardPosition = cardPosition
                
                self.backgroundColor = backgroundColor
                
            }

            public func duplicate() -> LookAndFeel {
                let dict = self.dictionary!
                let copy = LookAndFeel(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    cardPosition = try container.decode(String.self, forKey: .cardPosition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    backgroundColor = try container.decode(String.self, forKey: .backgroundColor)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(cardPosition, forKey: .cardPosition)
                
                
                
                
                try? container.encodeIfPresent(backgroundColor, forKey: .backgroundColor)
                
                
            }
            
        }
        
        /*
            Model: Login
            Used By: User
        */
        class Login: Codable {
            
            public var password: Bool?
            
            public var otp: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case password = "password"
                
                case otp = "otp"
                
            }

            public init(otp: Bool?, password: Bool?) {
                
                self.password = password
                
                self.otp = otp
                
            }

            public func duplicate() -> Login {
                let dict = self.dictionary!
                let copy = Login(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    password = try container.decode(Bool.self, forKey: .password)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    otp = try container.decode(Bool.self, forKey: .otp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(password, forKey: .password)
                
                
                
                
                try? container.encodeIfPresent(otp, forKey: .otp)
                
                
            }
            
        }
        
        /*
            Model: MetaSchema
            Used By: User
        */
        class MetaSchema: Codable {
            
            public var fyndDefault: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case fyndDefault = "fynd_default"
                
            }

            public init(fyndDefault: Bool?) {
                
                self.fyndDefault = fyndDefault
                
            }

            public func duplicate() -> MetaSchema {
                let dict = self.dictionary!
                let copy = MetaSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    fyndDefault = try container.decode(Bool.self, forKey: .fyndDefault)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(fyndDefault, forKey: .fyndDefault)
                
                
            }
            
        }
        
        /*
            Model: Social
            Used By: User
        */
        class Social: Codable {
            
            public var accountKit: Bool?
            
            public var facebook: Bool?
            
            public var google: Bool?
            
            public var apple: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case accountKit = "account_kit"
                
                case facebook = "facebook"
                
                case google = "google"
                
                case apple = "apple"
                
            }

            public init(accountKit: Bool?, apple: Bool?, facebook: Bool?, google: Bool?) {
                
                self.accountKit = accountKit
                
                self.facebook = facebook
                
                self.google = google
                
                self.apple = apple
                
            }

            public func duplicate() -> Social {
                let dict = self.dictionary!
                let copy = Social(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    accountKit = try container.decode(Bool.self, forKey: .accountKit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    facebook = try container.decode(Bool.self, forKey: .facebook)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    google = try container.decode(Bool.self, forKey: .google)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    apple = try container.decode(Bool.self, forKey: .apple)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(accountKit, forKey: .accountKit)
                
                
                
                
                try? container.encodeIfPresent(facebook, forKey: .facebook)
                
                
                
                
                try? container.encodeIfPresent(google, forKey: .google)
                
                
                
                
                try? container.encodeIfPresent(apple, forKey: .apple)
                
                
            }
            
        }
        
        /*
            Model: RequiredFields
            Used By: User
        */
        class RequiredFields: Codable {
            
            public var email: PlatformEmail?
            
            public var mobile: PlatformMobile?
            

            public enum CodingKeys: String, CodingKey {
                
                case email = "email"
                
                case mobile = "mobile"
                
            }

            public init(email: PlatformEmail?, mobile: PlatformMobile?) {
                
                self.email = email
                
                self.mobile = mobile
                
            }

            public func duplicate() -> RequiredFields {
                let dict = self.dictionary!
                let copy = RequiredFields(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    email = try container.decode(PlatformEmail.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mobile = try container.decode(PlatformMobile.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
            }
            
        }
        
        /*
            Model: PlatformEmail
            Used By: User
        */
        class PlatformEmail: Codable {
            
            public var isRequired: Bool?
            
            public var level: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case isRequired = "is_required"
                
                case level = "level"
                
            }

            public init(isRequired: Bool?, level: String?) {
                
                self.isRequired = isRequired
                
                self.level = level
                
            }

            public func duplicate() -> PlatformEmail {
                let dict = self.dictionary!
                let copy = PlatformEmail(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    isRequired = try container.decode(Bool.self, forKey: .isRequired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    level = try container.decode(String.self, forKey: .level)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(isRequired, forKey: .isRequired)
                
                
                
                
                try? container.encodeIfPresent(level, forKey: .level)
                
                
            }
            
        }
        
        /*
            Model: PlatformMobile
            Used By: User
        */
        class PlatformMobile: Codable {
            
            public var isRequired: Bool?
            
            public var level: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case isRequired = "is_required"
                
                case level = "level"
                
            }

            public init(isRequired: Bool?, level: String?) {
                
                self.isRequired = isRequired
                
                self.level = level
                
            }

            public func duplicate() -> PlatformMobile {
                let dict = self.dictionary!
                let copy = PlatformMobile(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    isRequired = try container.decode(Bool.self, forKey: .isRequired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    level = try container.decode(String.self, forKey: .level)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(isRequired, forKey: .isRequired)
                
                
                
                
                try? container.encodeIfPresent(level, forKey: .level)
                
                
            }
            
        }
        
        /*
            Model: RegisterRequiredFields
            Used By: User
        */
        class RegisterRequiredFields: Codable {
            
            public var email: RegisterRequiredFieldsEmail?
            
            public var mobile: RegisterRequiredFieldsMobile?
            

            public enum CodingKeys: String, CodingKey {
                
                case email = "email"
                
                case mobile = "mobile"
                
            }

            public init(email: RegisterRequiredFieldsEmail?, mobile: RegisterRequiredFieldsMobile?) {
                
                self.email = email
                
                self.mobile = mobile
                
            }

            public func duplicate() -> RegisterRequiredFields {
                let dict = self.dictionary!
                let copy = RegisterRequiredFields(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    email = try container.decode(RegisterRequiredFieldsEmail.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    mobile = try container.decode(RegisterRequiredFieldsMobile.self, forKey: .mobile)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(mobile, forKey: .mobile)
                
                
            }
            
        }
        
        /*
            Model: RegisterRequiredFieldsEmail
            Used By: User
        */
        class RegisterRequiredFieldsEmail: Codable {
            
            public var isRequired: Bool?
            
            public var level: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case isRequired = "is_required"
                
                case level = "level"
                
            }

            public init(isRequired: Bool?, level: String?) {
                
                self.isRequired = isRequired
                
                self.level = level
                
            }

            public func duplicate() -> RegisterRequiredFieldsEmail {
                let dict = self.dictionary!
                let copy = RegisterRequiredFieldsEmail(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    isRequired = try container.decode(Bool.self, forKey: .isRequired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    level = try container.decode(String.self, forKey: .level)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(isRequired, forKey: .isRequired)
                
                
                
                
                try? container.encodeIfPresent(level, forKey: .level)
                
                
            }
            
        }
        
        /*
            Model: RegisterRequiredFieldsMobile
            Used By: User
        */
        class RegisterRequiredFieldsMobile: Codable {
            
            public var isRequired: Bool?
            
            public var level: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case isRequired = "is_required"
                
                case level = "level"
                
            }

            public init(isRequired: Bool?, level: String?) {
                
                self.isRequired = isRequired
                
                self.level = level
                
            }

            public func duplicate() -> RegisterRequiredFieldsMobile {
                let dict = self.dictionary!
                let copy = RegisterRequiredFieldsMobile(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    isRequired = try container.decode(Bool.self, forKey: .isRequired)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    level = try container.decode(String.self, forKey: .level)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(isRequired, forKey: .isRequired)
                
                
                
                
                try? container.encodeIfPresent(level, forKey: .level)
                
                
            }
            
        }
        
        /*
            Model: FlashCard
            Used By: User
        */
        class FlashCard: Codable {
            
            public var text: String?
            
            public var textColor: String?
            
            public var backgroundColor: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case text = "text"
                
                case textColor = "text_color"
                
                case backgroundColor = "background_color"
                
            }

            public init(backgroundColor: String?, text: String?, textColor: String?) {
                
                self.text = text
                
                self.textColor = textColor
                
                self.backgroundColor = backgroundColor
                
            }

            public func duplicate() -> FlashCard {
                let dict = self.dictionary!
                let copy = FlashCard(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    text = try container.decode(String.self, forKey: .text)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    textColor = try container.decode(String.self, forKey: .textColor)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    backgroundColor = try container.decode(String.self, forKey: .backgroundColor)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(text, forKey: .text)
                
                
                
                
                try? container.encodeIfPresent(textColor, forKey: .textColor)
                
                
                
                
                try? container.encodeIfPresent(backgroundColor, forKey: .backgroundColor)
                
                
            }
            
        }
        
        /*
            Model: SocialTokens
            Used By: User
        */
        class SocialTokens: Codable {
            
            public var facebook: Facebook?
            
            public var accountKit: Accountkit?
            
            public var google: Google?
            

            public enum CodingKeys: String, CodingKey {
                
                case facebook = "facebook"
                
                case accountKit = "account_kit"
                
                case google = "google"
                
            }

            public init(accountKit: Accountkit?, facebook: Facebook?, google: Google?) {
                
                self.facebook = facebook
                
                self.accountKit = accountKit
                
                self.google = google
                
            }

            public func duplicate() -> SocialTokens {
                let dict = self.dictionary!
                let copy = SocialTokens(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    facebook = try container.decode(Facebook.self, forKey: .facebook)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    accountKit = try container.decode(Accountkit.self, forKey: .accountKit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    google = try container.decode(Google.self, forKey: .google)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(facebook, forKey: .facebook)
                
                
                
                
                try? container.encodeIfPresent(accountKit, forKey: .accountKit)
                
                
                
                
                try? container.encodeIfPresent(google, forKey: .google)
                
                
            }
            
        }
        
        /*
            Model: Facebook
            Used By: User
        */
        class Facebook: Codable {
            
            public var appId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case appId = "app_id"
                
            }

            public init(appId: String?) {
                
                self.appId = appId
                
            }

            public func duplicate() -> Facebook {
                let dict = self.dictionary!
                let copy = Facebook(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(appId, forKey: .appId)
                
                
            }
            
        }
        
        /*
            Model: Accountkit
            Used By: User
        */
        class Accountkit: Codable {
            
            public var appId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case appId = "app_id"
                
            }

            public init(appId: String?) {
                
                self.appId = appId
                
            }

            public func duplicate() -> Accountkit {
                let dict = self.dictionary!
                let copy = Accountkit(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(appId, forKey: .appId)
                
                
            }
            
        }
        
        /*
            Model: Google
            Used By: User
        */
        class Google: Codable {
            
            public var appId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case appId = "app_id"
                
            }

            public init(appId: String?) {
                
                self.appId = appId
                
            }

            public func duplicate() -> Google {
                let dict = self.dictionary!
                let copy = Google(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(appId, forKey: .appId)
                
                
            }
            
        }
        
        /*
            Model: UpdateUserRequestSchema
            Used By: User
        */
        class UpdateUserRequestSchema: Codable {
            
            public var firstName: String?
            
            public var lastName: String?
            
            public var gender: String?
            
            public var externalId: String?
            
            public var meta: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case firstName = "first_name"
                
                case lastName = "last_name"
                
                case gender = "gender"
                
                case externalId = "external_id"
                
                case meta = "meta"
                
            }

            public init(externalId: String?, firstName: String?, gender: String?, lastName: String?, meta: [String: Any]?) {
                
                self.firstName = firstName
                
                self.lastName = lastName
                
                self.gender = gender
                
                self.externalId = externalId
                
                self.meta = meta
                
            }

            public func duplicate() -> UpdateUserRequestSchema {
                let dict = self.dictionary!
                let copy = UpdateUserRequestSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    firstName = try container.decode(String.self, forKey: .firstName)
                
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
                    gender = try container.decode(String.self, forKey: .gender)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    externalId = try container.decode(String.self, forKey: .externalId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(firstName, forKey: .firstName)
                
                
                
                
                try? container.encodeIfPresent(lastName, forKey: .lastName)
                
                
                
                
                try? container.encodeIfPresent(gender, forKey: .gender)
                
                
                
                
                try? container.encodeIfPresent(externalId, forKey: .externalId)
                
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
            }
            
        }
        
        /*
            Model: UserSchema
            Used By: User
        */
        class UserSchema: Codable {
            
            public var applicationId: String?
            
            public var userId: String?
            
            public var firstName: String?
            
            public var meta: [String: Any]?
            
            public var lastName: String?
            
            public var phoneNumbers: [PhoneNumber]?
            
            public var emails: [Email]?
            
            public var gender: String?
            
            public var dob: String?
            
            public var active: Bool?
            
            public var profilePicUrl: String?
            
            public var username: String?
            
            public var accountType: String?
            
            public var debug: Debug?
            
            public var hasOldPasswordHash: Bool?
            
            public var id: String?
            
            public var createdAt: String?
            
            public var updatedAt: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case applicationId = "application_id"
                
                case userId = "user_id"
                
                case firstName = "first_name"
                
                case meta = "meta"
                
                case lastName = "last_name"
                
                case phoneNumbers = "phone_numbers"
                
                case emails = "emails"
                
                case gender = "gender"
                
                case dob = "dob"
                
                case active = "active"
                
                case profilePicUrl = "profile_pic_url"
                
                case username = "username"
                
                case accountType = "account_type"
                
                case debug = "debug"
                
                case hasOldPasswordHash = "has_old_password_hash"
                
                case id = "_id"
                
                case createdAt = "created_at"
                
                case updatedAt = "updated_at"
                
            }

            public init(accountType: String?, active: Bool?, applicationId: String?, createdAt: String?, debug: Debug?, dob: String?, emails: [Email]?, firstName: String?, gender: String?, hasOldPasswordHash: Bool?, lastName: String?, meta: [String: Any]?, phoneNumbers: [PhoneNumber]?, profilePicUrl: String?, updatedAt: String?, username: String?, userId: String?, id: String?) {
                
                self.applicationId = applicationId
                
                self.userId = userId
                
                self.firstName = firstName
                
                self.meta = meta
                
                self.lastName = lastName
                
                self.phoneNumbers = phoneNumbers
                
                self.emails = emails
                
                self.gender = gender
                
                self.dob = dob
                
                self.active = active
                
                self.profilePicUrl = profilePicUrl
                
                self.username = username
                
                self.accountType = accountType
                
                self.debug = debug
                
                self.hasOldPasswordHash = hasOldPasswordHash
                
                self.id = id
                
                self.createdAt = createdAt
                
                self.updatedAt = updatedAt
                
            }

            public func duplicate() -> UserSchema {
                let dict = self.dictionary!
                let copy = UserSchema(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    firstName = try container.decode(String.self, forKey: .firstName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    meta = try container.decode([String: Any].self, forKey: .meta)
                
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
                    phoneNumbers = try container.decode([PhoneNumber].self, forKey: .phoneNumbers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    emails = try container.decode([Email].self, forKey: .emails)
                
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
                
                
                
                do {
                    dob = try container.decode(String.self, forKey: .dob)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    profilePicUrl = try container.decode(String.self, forKey: .profilePicUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    username = try container.decode(String.self, forKey: .username)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    accountType = try container.decode(String.self, forKey: .accountType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    debug = try container.decode(Debug.self, forKey: .debug)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    hasOldPasswordHash = try container.decode(Bool.self, forKey: .hasOldPasswordHash)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    createdAt = try container.decode(String.self, forKey: .createdAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    updatedAt = try container.decode(String.self, forKey: .updatedAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(applicationId, forKey: .applicationId)
                
                
                
                
                try? container.encodeIfPresent(userId, forKey: .userId)
                
                
                
                
                try? container.encodeIfPresent(firstName, forKey: .firstName)
                
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
                
                
                try? container.encodeIfPresent(lastName, forKey: .lastName)
                
                
                
                
                try? container.encodeIfPresent(phoneNumbers, forKey: .phoneNumbers)
                
                
                
                
                try? container.encodeIfPresent(emails, forKey: .emails)
                
                
                
                
                try? container.encodeIfPresent(gender, forKey: .gender)
                
                
                
                
                try? container.encodeIfPresent(dob, forKey: .dob)
                
                
                
                
                try? container.encodeIfPresent(active, forKey: .active)
                
                
                
                
                try? container.encodeIfPresent(profilePicUrl, forKey: .profilePicUrl)
                
                
                
                
                try? container.encodeIfPresent(username, forKey: .username)
                
                
                
                
                try? container.encodeIfPresent(accountType, forKey: .accountType)
                
                
                
                
                try? container.encodeIfPresent(debug, forKey: .debug)
                
                
                
                
                try? container.encodeIfPresent(hasOldPasswordHash, forKey: .hasOldPasswordHash)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(createdAt, forKey: .createdAt)
                
                
                
                
                try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
                
                
            }
            
        }
        
}
