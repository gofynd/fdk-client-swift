import Foundation


import Foundation
public extension ApplicationClient {
  
        /*
            Model: ApplicationAboutResponse
            Used By: Configuration
        */
        class ApplicationAboutResponse: Codable {
            
            public var applicationInfo: ApplicationInfo?
            
            public var companyInfo: CompanyInfo?
            
            public var ownerInfo: OwnerInfo?
            

            public enum CodingKeys: String, CodingKey {
                
                case applicationInfo = "application_info"
                
                case companyInfo = "company_info"
                
                case ownerInfo = "owner_info"
                
            }

            public init(applicationInfo: ApplicationInfo?, companyInfo: CompanyInfo?, ownerInfo: OwnerInfo?) {
                
                self.applicationInfo = applicationInfo
                
                self.companyInfo = companyInfo
                
                self.ownerInfo = ownerInfo
                
            }

            public func duplicate() -> ApplicationAboutResponse {
                let dict = self.dictionary!
                let copy = ApplicationAboutResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    applicationInfo = try container.decode(ApplicationInfo.self, forKey: .applicationInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    companyInfo = try container.decode(CompanyInfo.self, forKey: .companyInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    ownerInfo = try container.decode(OwnerInfo.self, forKey: .ownerInfo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(applicationInfo, forKey: .applicationInfo)
                
                
                
                
                try? container.encodeIfPresent(companyInfo, forKey: .companyInfo)
                
                
                
                
                try? container.encodeIfPresent(ownerInfo, forKey: .ownerInfo)
                
                
            }
            
        }
        
        /*
            Model: ApplicationInfo
            Used By: Configuration
        */
        class ApplicationInfo: Codable {
            
            public var id: String?
            
            public var domain: Domain?
            
            public var website: ApplicationWebsite?
            
            public var cors: ApplicationCors?
            
            public var description: String?
            
            public var name: String?
            
            public var meta: ApplicationMeta?
            
            public var token: String?
            
            public var secret: String?
            
            public var createdAt: String?
            
            public var banner: SecureUrl?
            
            public var logo: SecureUrl?
            
            public var isActive: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "_id"
                
                case domain = "domain"
                
                case website = "website"
                
                case cors = "cors"
                
                case description = "description"
                
                case name = "name"
                
                case meta = "meta"
                
                case token = "token"
                
                case secret = "secret"
                
                case createdAt = "created_at"
                
                case banner = "banner"
                
                case logo = "logo"
                
                case isActive = "is_active"
                
            }

            public init(banner: SecureUrl?, cors: ApplicationCors?, createdAt: String?, description: String?, domain: Domain?, isActive: Bool?, logo: SecureUrl?, meta: ApplicationMeta?, name: String?, secret: String?, token: String?, website: ApplicationWebsite?, id: String?) {
                
                self.id = id
                
                self.domain = domain
                
                self.website = website
                
                self.cors = cors
                
                self.description = description
                
                self.name = name
                
                self.meta = meta
                
                self.token = token
                
                self.secret = secret
                
                self.createdAt = createdAt
                
                self.banner = banner
                
                self.logo = logo
                
                self.isActive = isActive
                
            }

            public func duplicate() -> ApplicationInfo {
                let dict = self.dictionary!
                let copy = ApplicationInfo(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    domain = try container.decode(Domain.self, forKey: .domain)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    website = try container.decode(ApplicationWebsite.self, forKey: .website)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cors = try container.decode(ApplicationCors.self, forKey: .cors)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    description = try container.decode(String.self, forKey: .description)
                
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
                    meta = try container.decode(ApplicationMeta.self, forKey: .meta)
                
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
                    secret = try container.decode(String.self, forKey: .secret)
                
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
                    banner = try container.decode(SecureUrl.self, forKey: .banner)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    logo = try container.decode(SecureUrl.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(domain, forKey: .domain)
                
                
                
                
                try? container.encodeIfPresent(website, forKey: .website)
                
                
                
                
                try? container.encodeIfPresent(cors, forKey: .cors)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(meta, forKey: .meta)
                
                
                
                
                try? container.encodeIfPresent(token, forKey: .token)
                
                
                
                
                try? container.encodeIfPresent(secret, forKey: .secret)
                
                
                
                
                try? container.encodeIfPresent(createdAt, forKey: .createdAt)
                
                
                
                
                try? container.encodeIfPresent(banner, forKey: .banner)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
                
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                
            }
            
        }
        
        /*
            Model: CompanyInfo
            Used By: Configuration
        */
        class CompanyInfo: Codable {
            
            public var id: String?
            
            public var uid: Int?
            
            public var createdOn: String?
            
            public var isActive: Bool?
            
            public var name: String?
            
            public var addresses: [CompanyAboutAddress]?
            
            public var notificationEmails: [String]?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "_id"
                
                case uid = "uid"
                
                case createdOn = "created_on"
                
                case isActive = "is_active"
                
                case name = "name"
                
                case addresses = "addresses"
                
                case notificationEmails = "notification_emails"
                
            }

            public init(addresses: [CompanyAboutAddress]?, createdOn: String?, isActive: Bool?, name: String?, notificationEmails: [String]?, uid: Int?, id: String?) {
                
                self.id = id
                
                self.uid = uid
                
                self.createdOn = createdOn
                
                self.isActive = isActive
                
                self.name = name
                
                self.addresses = addresses
                
                self.notificationEmails = notificationEmails
                
            }

            public func duplicate() -> CompanyInfo {
                let dict = self.dictionary!
                let copy = CompanyInfo(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uid = try container.decode(Int.self, forKey: .uid)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    createdOn = try container.decode(String.self, forKey: .createdOn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    isActive = try container.decode(Bool.self, forKey: .isActive)
                
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
                    addresses = try container.decode([CompanyAboutAddress].self, forKey: .addresses)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    notificationEmails = try container.decode([String].self, forKey: .notificationEmails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(createdOn, forKey: .createdOn)
                
                
                
                
                try? container.encodeIfPresent(isActive, forKey: .isActive)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(addresses, forKey: .addresses)
                
                
                
                
                try? container.encodeIfPresent(notificationEmails, forKey: .notificationEmails)
                
                
            }
            
        }
        
        /*
            Model: OwnerInfo
            Used By: Configuration
        */
        class OwnerInfo: Codable {
            
            public var id: String?
            
            public var emails: [UserEmail]?
            
            public var phoneNumbers: [UserPhoneNumber]?
            
            public var firstName: String?
            
            public var lastName: String?
            
            public var profilePic: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "_id"
                
                case emails = "emails"
                
                case phoneNumbers = "phone_numbers"
                
                case firstName = "first_name"
                
                case lastName = "last_name"
                
                case profilePic = "profile_pic"
                
            }

            public init(emails: [UserEmail]?, firstName: String?, lastName: String?, phoneNumbers: [UserPhoneNumber]?, profilePic: String?, id: String?) {
                
                self.id = id
                
                self.emails = emails
                
                self.phoneNumbers = phoneNumbers
                
                self.firstName = firstName
                
                self.lastName = lastName
                
                self.profilePic = profilePic
                
            }

            public func duplicate() -> OwnerInfo {
                let dict = self.dictionary!
                let copy = OwnerInfo(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    emails = try container.decode([UserEmail].self, forKey: .emails)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    phoneNumbers = try container.decode([UserPhoneNumber].self, forKey: .phoneNumbers)
                
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
                    profilePic = try container.decode(String.self, forKey: .profilePic)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(emails, forKey: .emails)
                
                
                
                
                try? container.encodeIfPresent(phoneNumbers, forKey: .phoneNumbers)
                
                
                
                
                try? container.encodeIfPresent(firstName, forKey: .firstName)
                
                
                
                
                try? container.encodeIfPresent(lastName, forKey: .lastName)
                
                
                
                
                try? container.encodeIfPresent(profilePic, forKey: .profilePic)
                
                
            }
            
        }
        
        /*
            Model: AppVersionRequest
            Used By: Configuration
        */
        class AppVersionRequest: Codable {
            
            public var application: ApplicationVersionRequest
            
            public var device: Device
            
            public var locale: String?
            
            public var timezone: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case application = "application"
                
                case device = "device"
                
                case locale = "locale"
                
                case timezone = "timezone"
                
            }

            public init(application: ApplicationVersionRequest, device: Device, locale: String?, timezone: String?) {
                
                self.application = application
                
                self.device = device
                
                self.locale = locale
                
                self.timezone = timezone
                
            }

            public func duplicate() -> AppVersionRequest {
                let dict = self.dictionary!
                let copy = AppVersionRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                application = try container.decode(ApplicationVersionRequest.self, forKey: .application)
                
                
                
                
                device = try container.decode(Device.self, forKey: .device)
                
                
                
                
                do {
                    locale = try container.decode(String.self, forKey: .locale)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    timezone = try container.decode(String.self, forKey: .timezone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(application, forKey: .application)
                
                
                
                
                try? container.encodeIfPresent(device, forKey: .device)
                
                
                
                
                try? container.encodeIfPresent(locale, forKey: .locale)
                
                
                
                
                try? container.encodeIfPresent(timezone, forKey: .timezone)
                
                
            }
            
        }
        
        /*
            Model: ApplicationVersionRequest
            Used By: Configuration
        */
        class ApplicationVersionRequest: Codable {
            
            public var id: String?
            
            public var name: String
            
            public var namespace: String?
            
            public var token: String?
            
            public var version: String
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "id"
                
                case name = "name"
                
                case namespace = "namespace"
                
                case token = "token"
                
                case version = "version"
                
            }

            public init(id: String?, name: String, namespace: String?, token: String?, version: String) {
                
                self.id = id
                
                self.name = name
                
                self.namespace = namespace
                
                self.token = token
                
                self.version = version
                
            }

            public func duplicate() -> ApplicationVersionRequest {
                let dict = self.dictionary!
                let copy = ApplicationVersionRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
                
                do {
                    namespace = try container.decode(String.self, forKey: .namespace)
                
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
                
                
                
                version = try container.decode(String.self, forKey: .version)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(namespace, forKey: .namespace)
                
                
                
                
                try? container.encodeIfPresent(token, forKey: .token)
                
                
                
                
                try? container.encodeIfPresent(version, forKey: .version)
                
                
            }
            
        }
        
        /*
            Model: Device
            Used By: Configuration
        */
        class Device: Codable {
            
            public var build: Int?
            
            public var model: String?
            
            public var os: OS
            

            public enum CodingKeys: String, CodingKey {
                
                case build = "build"
                
                case model = "model"
                
                case os = "os"
                
            }

            public init(build: Int?, model: String?, os: OS) {
                
                self.build = build
                
                self.model = model
                
                self.os = os
                
            }

            public func duplicate() -> Device {
                let dict = self.dictionary!
                let copy = Device(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    build = try container.decode(Int.self, forKey: .build)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    model = try container.decode(String.self, forKey: .model)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                os = try container.decode(OS.self, forKey: .os)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(build, forKey: .build)
                
                
                
                
                try? container.encodeIfPresent(model, forKey: .model)
                
                
                
                
                try? container.encodeIfPresent(os, forKey: .os)
                
                
            }
            
        }
        
        /*
            Model: OS
            Used By: Configuration
        */
        class OS: Codable {
            
            public var name: String
            
            public var version: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case version = "version"
                
            }

            public init(name: String, version: String?) {
                
                self.name = name
                
                self.version = version
                
            }

            public func duplicate() -> OS {
                let dict = self.dictionary!
                let copy = OS(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
                
                do {
                    version = try container.decode(String.self, forKey: .version)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(version, forKey: .version)
                
                
            }
            
        }
        
        /*
            Model: SupportedLanguage
            Used By: Configuration
        */
        class SupportedLanguage: Codable {
            
            public var name: String?
            
            public var code: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case code = "code"
                
            }

            public init(code: String?, name: String?) {
                
                self.name = name
                
                self.code = code
                
            }

            public func duplicate() -> SupportedLanguage {
                let dict = self.dictionary!
                let copy = SupportedLanguage(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
            }
            
        }
        
        /*
            Model: LanguageResponse
            Used By: Configuration
        */
        class LanguageResponse: Codable {
            
            public var items: [SupportedLanguage]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
            }

            public init(items: [SupportedLanguage]?) {
                
                self.items = items
                
            }

            public func duplicate() -> LanguageResponse {
                let dict = self.dictionary!
                let copy = LanguageResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([SupportedLanguage].self, forKey: .items)
                
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
            Model: AppStaffResponse
            Used By: Configuration
        */
        class AppStaffResponse: Codable {
            
            public var staffUsers: [AppStaff]?
            

            public enum CodingKeys: String, CodingKey {
                
                case staffUsers = "staff_users"
                
            }

            public init(staffUsers: [AppStaff]?) {
                
                self.staffUsers = staffUsers
                
            }

            public func duplicate() -> AppStaffResponse {
                let dict = self.dictionary!
                let copy = AppStaffResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    staffUsers = try container.decode([AppStaff].self, forKey: .staffUsers)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(staffUsers, forKey: .staffUsers)
                
                
            }
            
        }
        
        /*
            Model: AppStaffListResponse
            Used By: Configuration
        */
        class AppStaffListResponse: Codable {
            
            public var page: Page?
            
            public var items: [AppStaff]?
            

            public enum CodingKeys: String, CodingKey {
                
                case page = "page"
                
                case items = "items"
                
            }

            public init(items: [AppStaff]?, page: Page?) {
                
                self.page = page
                
                self.items = items
                
            }

            public func duplicate() -> AppStaffListResponse {
                let dict = self.dictionary!
                let copy = AppStaffListResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([AppStaff].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
            }
            
        }
        
        /*
            Model: UpdateDialog
            Used By: Configuration
        */
        class UpdateDialog: Codable {
            
            public var type: String?
            
            public var interval: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case type = "type"
                
                case interval = "interval"
                
            }

            public init(interval: Int?, type: String?) {
                
                self.type = type
                
                self.interval = interval
                
            }

            public func duplicate() -> UpdateDialog {
                let dict = self.dictionary!
                let copy = UpdateDialog(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    interval = try container.decode(Int.self, forKey: .interval)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(interval, forKey: .interval)
                
                
            }
            
        }
        
        /*
            Model: OrderingStoreSelectRequest
            Used By: Configuration
        */
        class OrderingStoreSelectRequest: Codable {
            
            public var orderingStore: OrderingStoreSelect
            

            public enum CodingKeys: String, CodingKey {
                
                case orderingStore = "ordering_store"
                
            }

            public init(orderingStore: OrderingStoreSelect) {
                
                self.orderingStore = orderingStore
                
            }

            public func duplicate() -> OrderingStoreSelectRequest {
                let dict = self.dictionary!
                let copy = OrderingStoreSelectRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                orderingStore = try container.decode(OrderingStoreSelect.self, forKey: .orderingStore)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(orderingStore, forKey: .orderingStore)
                
                
            }
            
        }
        
        /*
            Model: OrderingStoreSelect
            Used By: Configuration
        */
        class OrderingStoreSelect: Codable {
            
            public var uid: Int
            

            public enum CodingKeys: String, CodingKey {
                
                case uid = "uid"
                
            }

            public init(uid: Int) {
                
                self.uid = uid
                
            }

            public func duplicate() -> OrderingStoreSelect {
                let dict = self.dictionary!
                let copy = OrderingStoreSelect(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                uid = try container.decode(Int.self, forKey: .uid)
                
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
            }
            
        }
        
        /*
            Model: AppStaff
            Used By: Configuration
        */
        class AppStaff: Codable {
            
            public var id: String?
            
            public var orderIncent: Bool?
            
            public var stores: [Int]?
            
            public var application: String?
            
            public var title: String?
            
            public var user: String?
            
            public var employeeCode: String?
            
            public var firstName: String?
            
            public var lastName: String?
            
            public var profilePicUrl: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "_id"
                
                case orderIncent = "order_incent"
                
                case stores = "stores"
                
                case application = "application"
                
                case title = "title"
                
                case user = "user"
                
                case employeeCode = "employee_code"
                
                case firstName = "first_name"
                
                case lastName = "last_name"
                
                case profilePicUrl = "profile_pic_url"
                
            }

            public init(application: String?, employeeCode: String?, firstName: String?, lastName: String?, orderIncent: Bool?, profilePicUrl: String?, stores: [Int]?, title: String?, user: String?, id: String?) {
                
                self.id = id
                
                self.orderIncent = orderIncent
                
                self.stores = stores
                
                self.application = application
                
                self.title = title
                
                self.user = user
                
                self.employeeCode = employeeCode
                
                self.firstName = firstName
                
                self.lastName = lastName
                
                self.profilePicUrl = profilePicUrl
                
            }

            public func duplicate() -> AppStaff {
                let dict = self.dictionary!
                let copy = AppStaff(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    orderIncent = try container.decode(Bool.self, forKey: .orderIncent)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    stores = try container.decode([Int].self, forKey: .stores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    application = try container.decode(String.self, forKey: .application)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
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
                    employeeCode = try container.decode(String.self, forKey: .employeeCode)
                
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
                    profilePicUrl = try container.decode(String.self, forKey: .profilePicUrl)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(orderIncent, forKey: .orderIncent)
                
                
                
                
                try? container.encodeIfPresent(stores, forKey: .stores)
                
                
                
                
                try? container.encodeIfPresent(application, forKey: .application)
                
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(user, forKey: .user)
                
                
                
                
                try? container.encodeIfPresent(employeeCode, forKey: .employeeCode)
                
                
                
                
                try? container.encodeIfPresent(firstName, forKey: .firstName)
                
                
                
                
                try? container.encodeIfPresent(lastName, forKey: .lastName)
                
                
                
                
                try? container.encodeIfPresent(profilePicUrl, forKey: .profilePicUrl)
                
                
            }
            
        }
        
        /*
            Model: AppTokenResponse
            Used By: Configuration
        */
        class AppTokenResponse: Codable {
            
            public var tokens: Tokens?
            
            public var id: String?
            
            public var application: String?
            
            public var createdAt: String?
            
            public var updatedAt: String?
            
            public var v: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case tokens = "tokens"
                
                case id = "_id"
                
                case application = "application"
                
                case createdAt = "created_at"
                
                case updatedAt = "updated_at"
                
                case v = "__v"
                
            }

            public init(application: String?, createdAt: String?, tokens: Tokens?, updatedAt: String?, id: String?, v: Int?) {
                
                self.tokens = tokens
                
                self.id = id
                
                self.application = application
                
                self.createdAt = createdAt
                
                self.updatedAt = updatedAt
                
                self.v = v
                
            }

            public func duplicate() -> AppTokenResponse {
                let dict = self.dictionary!
                let copy = AppTokenResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    tokens = try container.decode(Tokens.self, forKey: .tokens)
                
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
                    application = try container.decode(String.self, forKey: .application)
                
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
                
                
                
                do {
                    v = try container.decode(Int.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(tokens, forKey: .tokens)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(application, forKey: .application)
                
                
                
                
                try? container.encodeIfPresent(createdAt, forKey: .createdAt)
                
                
                
                
                try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
                
                
                
                
                try? container.encodeIfPresent(v, forKey: .v)
                
                
            }
            
        }
        
        /*
            Model: Tokens
            Used By: Configuration
        */
        class Tokens: Codable {
            
            public var firebase: Firebase?
            
            public var moengage: Moengage?
            
            public var segment: Segment?
            
            public var gtm: Gtm?
            
            public var freshchat: Freshchat?
            
            public var safetynet: Safetynet?
            
            public var fyndRewards: FyndRewards?
            
            public var googleMap: GoogleMap?
            

            public enum CodingKeys: String, CodingKey {
                
                case firebase = "firebase"
                
                case moengage = "moengage"
                
                case segment = "segment"
                
                case gtm = "gtm"
                
                case freshchat = "freshchat"
                
                case safetynet = "safetynet"
                
                case fyndRewards = "fynd_rewards"
                
                case googleMap = "google_map"
                
            }

            public init(firebase: Firebase?, freshchat: Freshchat?, fyndRewards: FyndRewards?, googleMap: GoogleMap?, gtm: Gtm?, moengage: Moengage?, safetynet: Safetynet?, segment: Segment?) {
                
                self.firebase = firebase
                
                self.moengage = moengage
                
                self.segment = segment
                
                self.gtm = gtm
                
                self.freshchat = freshchat
                
                self.safetynet = safetynet
                
                self.fyndRewards = fyndRewards
                
                self.googleMap = googleMap
                
            }

            public func duplicate() -> Tokens {
                let dict = self.dictionary!
                let copy = Tokens(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    firebase = try container.decode(Firebase.self, forKey: .firebase)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    moengage = try container.decode(Moengage.self, forKey: .moengage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    segment = try container.decode(Segment.self, forKey: .segment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    gtm = try container.decode(Gtm.self, forKey: .gtm)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    freshchat = try container.decode(Freshchat.self, forKey: .freshchat)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    safetynet = try container.decode(Safetynet.self, forKey: .safetynet)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    fyndRewards = try container.decode(FyndRewards.self, forKey: .fyndRewards)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    googleMap = try container.decode(GoogleMap.self, forKey: .googleMap)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(firebase, forKey: .firebase)
                
                
                
                
                try? container.encodeIfPresent(moengage, forKey: .moengage)
                
                
                
                
                try? container.encodeIfPresent(segment, forKey: .segment)
                
                
                
                
                try? container.encodeIfPresent(gtm, forKey: .gtm)
                
                
                
                
                try? container.encodeIfPresent(freshchat, forKey: .freshchat)
                
                
                
                
                try? container.encodeIfPresent(safetynet, forKey: .safetynet)
                
                
                
                
                try? container.encodeIfPresent(fyndRewards, forKey: .fyndRewards)
                
                
                
                
                try? container.encodeIfPresent(googleMap, forKey: .googleMap)
                
                
            }
            
        }
        
        /*
            Model: Firebase
            Used By: Configuration
        */
        class Firebase: Codable {
            
            public var credentials: Credentials?
            
            public var enabled: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case credentials = "credentials"
                
                case enabled = "enabled"
                
            }

            public init(credentials: Credentials?, enabled: Bool?) {
                
                self.credentials = credentials
                
                self.enabled = enabled
                
            }

            public func duplicate() -> Firebase {
                let dict = self.dictionary!
                let copy = Firebase(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    credentials = try container.decode(Credentials.self, forKey: .credentials)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(credentials, forKey: .credentials)
                
                
                
                
                try? container.encodeIfPresent(enabled, forKey: .enabled)
                
                
            }
            
        }
        
        /*
            Model: Credentials
            Used By: Configuration
        */
        class Credentials: Codable {
            
            public var ios: Ios?
            
            public var android: Android?
            
            public var projectId: String?
            
            public var gcmSenderId: String?
            
            public var applicationId: String?
            
            public var apiKey: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case ios = "ios"
                
                case android = "android"
                
                case projectId = "project_id"
                
                case gcmSenderId = "gcm_sender_id"
                
                case applicationId = "application_id"
                
                case apiKey = "api_key"
                
            }

            public init(android: Android?, apiKey: String?, applicationId: String?, gcmSenderId: String?, ios: Ios?, projectId: String?) {
                
                self.ios = ios
                
                self.android = android
                
                self.projectId = projectId
                
                self.gcmSenderId = gcmSenderId
                
                self.applicationId = applicationId
                
                self.apiKey = apiKey
                
            }

            public func duplicate() -> Credentials {
                let dict = self.dictionary!
                let copy = Credentials(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    ios = try container.decode(Ios.self, forKey: .ios)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    android = try container.decode(Android.self, forKey: .android)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    projectId = try container.decode(String.self, forKey: .projectId)
                
                    if let strong_projectId = projectId,
                       let projectIdData = Data(base64Encoded: strong_projectId) {
                        projectId = String(data: projectIdData, encoding: .utf8) ?? projectId
                    }
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    gcmSenderId = try container.decode(String.self, forKey: .gcmSenderId)
                
                    if let strong_gcmSenderId = gcmSenderId,
                       let gcmSenderIdData = Data(base64Encoded: strong_gcmSenderId) {
                        gcmSenderId = String(data: gcmSenderIdData, encoding: .utf8) ?? gcmSenderId
                    }
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                    if let strong_applicationId = applicationId,
                       let applicationIdData = Data(base64Encoded: strong_applicationId) {
                        applicationId = String(data: applicationIdData, encoding: .utf8) ?? applicationId
                    }
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    apiKey = try container.decode(String.self, forKey: .apiKey)
                
                    if let strong_apiKey = apiKey,
                       let apiKeyData = Data(base64Encoded: strong_apiKey) {
                        apiKey = String(data: apiKeyData, encoding: .utf8) ?? apiKey
                    }
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(ios, forKey: .ios)
                
                
                
                
                try? container.encodeIfPresent(android, forKey: .android)
                
                
                
                
                
                try? container.encodeIfPresent(projectId?.asBase64, forKey: .projectId)
                
                
                
                
                
                
                try? container.encodeIfPresent(gcmSenderId?.asBase64, forKey: .gcmSenderId)
                
                
                
                
                
                
                try? container.encodeIfPresent(applicationId?.asBase64, forKey: .applicationId)
                
                
                
                
                
                
                try? container.encodeIfPresent(apiKey?.asBase64, forKey: .apiKey)
                
                
                
            }
            
        }
        
        /*
            Model: Ios
            Used By: Configuration
        */
        class Ios: Codable {
            
            public var applicationId: String?
            
            public var apiKey: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case applicationId = "application_id"
                
                case apiKey = "api_key"
                
            }

            public init(apiKey: String?, applicationId: String?) {
                
                self.applicationId = applicationId
                
                self.apiKey = apiKey
                
            }

            public func duplicate() -> Ios {
                let dict = self.dictionary!
                let copy = Ios(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                    if let strong_applicationId = applicationId,
                       let applicationIdData = Data(base64Encoded: strong_applicationId) {
                        applicationId = String(data: applicationIdData, encoding: .utf8) ?? applicationId
                    }
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    apiKey = try container.decode(String.self, forKey: .apiKey)
                
                    if let strong_apiKey = apiKey,
                       let apiKeyData = Data(base64Encoded: strong_apiKey) {
                        apiKey = String(data: apiKeyData, encoding: .utf8) ?? apiKey
                    }
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                
                try? container.encodeIfPresent(applicationId?.asBase64, forKey: .applicationId)
                
                
                
                
                
                
                try? container.encodeIfPresent(apiKey?.asBase64, forKey: .apiKey)
                
                
                
            }
            
        }
        
        /*
            Model: Android
            Used By: Configuration
        */
        class Android: Codable {
            
            public var applicationId: String?
            
            public var apiKey: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case applicationId = "application_id"
                
                case apiKey = "api_key"
                
            }

            public init(apiKey: String?, applicationId: String?) {
                
                self.applicationId = applicationId
                
                self.apiKey = apiKey
                
            }

            public func duplicate() -> Android {
                let dict = self.dictionary!
                let copy = Android(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                    if let strong_applicationId = applicationId,
                       let applicationIdData = Data(base64Encoded: strong_applicationId) {
                        applicationId = String(data: applicationIdData, encoding: .utf8) ?? applicationId
                    }
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    apiKey = try container.decode(String.self, forKey: .apiKey)
                
                    if let strong_apiKey = apiKey,
                       let apiKeyData = Data(base64Encoded: strong_apiKey) {
                        apiKey = String(data: apiKeyData, encoding: .utf8) ?? apiKey
                    }
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                
                try? container.encodeIfPresent(applicationId?.asBase64, forKey: .applicationId)
                
                
                
                
                
                
                try? container.encodeIfPresent(apiKey?.asBase64, forKey: .apiKey)
                
                
                
            }
            
        }
        
        /*
            Model: Moengage
            Used By: Configuration
        */
        class Moengage: Codable {
            
            public var credentials: MoengageCredentials?
            
            public var enabled: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case credentials = "credentials"
                
                case enabled = "enabled"
                
            }

            public init(credentials: MoengageCredentials?, enabled: Bool?) {
                
                self.credentials = credentials
                
                self.enabled = enabled
                
            }

            public func duplicate() -> Moengage {
                let dict = self.dictionary!
                let copy = Moengage(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    credentials = try container.decode(MoengageCredentials.self, forKey: .credentials)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(credentials, forKey: .credentials)
                
                
                
                
                try? container.encodeIfPresent(enabled, forKey: .enabled)
                
                
            }
            
        }
        
        /*
            Model: MoengageCredentials
            Used By: Configuration
        */
        class MoengageCredentials: Codable {
            
            public var appId: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case appId = "app_id"
                
            }

            public init(appId: String?) {
                
                self.appId = appId
                
            }

            public func duplicate() -> MoengageCredentials {
                let dict = self.dictionary!
                let copy = MoengageCredentials(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                    if let strong_appId = appId,
                       let appIdData = Data(base64Encoded: strong_appId) {
                        appId = String(data: appIdData, encoding: .utf8) ?? appId
                    }
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                
                try? container.encodeIfPresent(appId?.asBase64, forKey: .appId)
                
                
                
            }
            
        }
        
        /*
            Model: Segment
            Used By: Configuration
        */
        class Segment: Codable {
            
            public var credentials: SegmentCredentials?
            
            public var enabled: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case credentials = "credentials"
                
                case enabled = "enabled"
                
            }

            public init(credentials: SegmentCredentials?, enabled: Bool?) {
                
                self.credentials = credentials
                
                self.enabled = enabled
                
            }

            public func duplicate() -> Segment {
                let dict = self.dictionary!
                let copy = Segment(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    credentials = try container.decode(SegmentCredentials.self, forKey: .credentials)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(credentials, forKey: .credentials)
                
                
                
                
                try? container.encodeIfPresent(enabled, forKey: .enabled)
                
                
            }
            
        }
        
        /*
            Model: SegmentCredentials
            Used By: Configuration
        */
        class SegmentCredentials: Codable {
            
            public var writeKey: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case writeKey = "write_key"
                
            }

            public init(writeKey: String?) {
                
                self.writeKey = writeKey
                
            }

            public func duplicate() -> SegmentCredentials {
                let dict = self.dictionary!
                let copy = SegmentCredentials(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    writeKey = try container.decode(String.self, forKey: .writeKey)
                
                    if let strong_writeKey = writeKey,
                       let writeKeyData = Data(base64Encoded: strong_writeKey) {
                        writeKey = String(data: writeKeyData, encoding: .utf8) ?? writeKey
                    }
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                
                try? container.encodeIfPresent(writeKey?.asBase64, forKey: .writeKey)
                
                
                
            }
            
        }
        
        /*
            Model: Gtm
            Used By: Configuration
        */
        class Gtm: Codable {
            
            public var credentials: GtmCredentials?
            
            public var enabled: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case credentials = "credentials"
                
                case enabled = "enabled"
                
            }

            public init(credentials: GtmCredentials?, enabled: Bool?) {
                
                self.credentials = credentials
                
                self.enabled = enabled
                
            }

            public func duplicate() -> Gtm {
                let dict = self.dictionary!
                let copy = Gtm(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    credentials = try container.decode(GtmCredentials.self, forKey: .credentials)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(credentials, forKey: .credentials)
                
                
                
                
                try? container.encodeIfPresent(enabled, forKey: .enabled)
                
                
            }
            
        }
        
        /*
            Model: GtmCredentials
            Used By: Configuration
        */
        class GtmCredentials: Codable {
            
            public var apiKey: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case apiKey = "api_key"
                
            }

            public init(apiKey: String?) {
                
                self.apiKey = apiKey
                
            }

            public func duplicate() -> GtmCredentials {
                let dict = self.dictionary!
                let copy = GtmCredentials(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    apiKey = try container.decode(String.self, forKey: .apiKey)
                
                    if let strong_apiKey = apiKey,
                       let apiKeyData = Data(base64Encoded: strong_apiKey) {
                        apiKey = String(data: apiKeyData, encoding: .utf8) ?? apiKey
                    }
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                
                try? container.encodeIfPresent(apiKey?.asBase64, forKey: .apiKey)
                
                
                
            }
            
        }
        
        /*
            Model: Freshchat
            Used By: Configuration
        */
        class Freshchat: Codable {
            
            public var credentials: FreshchatCredentials?
            
            public var enabled: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case credentials = "credentials"
                
                case enabled = "enabled"
                
            }

            public init(credentials: FreshchatCredentials?, enabled: Bool?) {
                
                self.credentials = credentials
                
                self.enabled = enabled
                
            }

            public func duplicate() -> Freshchat {
                let dict = self.dictionary!
                let copy = Freshchat(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    credentials = try container.decode(FreshchatCredentials.self, forKey: .credentials)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(credentials, forKey: .credentials)
                
                
                
                
                try? container.encodeIfPresent(enabled, forKey: .enabled)
                
                
            }
            
        }
        
        /*
            Model: FreshchatCredentials
            Used By: Configuration
        */
        class FreshchatCredentials: Codable {
            
            public var appId: String?
            
            public var appKey: String?
            
            public var webToken: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case appId = "app_id"
                
                case appKey = "app_key"
                
                case webToken = "web_token"
                
            }

            public init(appId: String?, appKey: String?, webToken: String?) {
                
                self.appId = appId
                
                self.appKey = appKey
                
                self.webToken = webToken
                
            }

            public func duplicate() -> FreshchatCredentials {
                let dict = self.dictionary!
                let copy = FreshchatCredentials(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    appId = try container.decode(String.self, forKey: .appId)
                
                    if let strong_appId = appId,
                       let appIdData = Data(base64Encoded: strong_appId) {
                        appId = String(data: appIdData, encoding: .utf8) ?? appId
                    }
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    appKey = try container.decode(String.self, forKey: .appKey)
                
                    if let strong_appKey = appKey,
                       let appKeyData = Data(base64Encoded: strong_appKey) {
                        appKey = String(data: appKeyData, encoding: .utf8) ?? appKey
                    }
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    webToken = try container.decode(String.self, forKey: .webToken)
                
                    if let strong_webToken = webToken,
                       let webTokenData = Data(base64Encoded: strong_webToken) {
                        webToken = String(data: webTokenData, encoding: .utf8) ?? webToken
                    }
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                
                try? container.encodeIfPresent(appId?.asBase64, forKey: .appId)
                
                
                
                
                
                
                try? container.encodeIfPresent(appKey?.asBase64, forKey: .appKey)
                
                
                
                
                
                
                try? container.encodeIfPresent(webToken?.asBase64, forKey: .webToken)
                
                
                
            }
            
        }
        
        /*
            Model: Safetynet
            Used By: Configuration
        */
        class Safetynet: Codable {
            
            public var credentials: SafetynetCredentials?
            
            public var enabled: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case credentials = "credentials"
                
                case enabled = "enabled"
                
            }

            public init(credentials: SafetynetCredentials?, enabled: Bool?) {
                
                self.credentials = credentials
                
                self.enabled = enabled
                
            }

            public func duplicate() -> Safetynet {
                let dict = self.dictionary!
                let copy = Safetynet(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    credentials = try container.decode(SafetynetCredentials.self, forKey: .credentials)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(credentials, forKey: .credentials)
                
                
                
                
                try? container.encodeIfPresent(enabled, forKey: .enabled)
                
                
            }
            
        }
        
        /*
            Model: SafetynetCredentials
            Used By: Configuration
        */
        class SafetynetCredentials: Codable {
            
            public var apiKey: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case apiKey = "api_key"
                
            }

            public init(apiKey: String?) {
                
                self.apiKey = apiKey
                
            }

            public func duplicate() -> SafetynetCredentials {
                let dict = self.dictionary!
                let copy = SafetynetCredentials(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    apiKey = try container.decode(String.self, forKey: .apiKey)
                
                    if let strong_apiKey = apiKey,
                       let apiKeyData = Data(base64Encoded: strong_apiKey) {
                        apiKey = String(data: apiKeyData, encoding: .utf8) ?? apiKey
                    }
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                
                try? container.encodeIfPresent(apiKey?.asBase64, forKey: .apiKey)
                
                
                
            }
            
        }
        
        /*
            Model: FyndRewards
            Used By: Configuration
        */
        class FyndRewards: Codable {
            
            public var credentials: FyndRewardsCredentials?
            

            public enum CodingKeys: String, CodingKey {
                
                case credentials = "credentials"
                
            }

            public init(credentials: FyndRewardsCredentials?) {
                
                self.credentials = credentials
                
            }

            public func duplicate() -> FyndRewards {
                let dict = self.dictionary!
                let copy = FyndRewards(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    credentials = try container.decode(FyndRewardsCredentials.self, forKey: .credentials)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(credentials, forKey: .credentials)
                
                
            }
            
        }
        
        /*
            Model: FyndRewardsCredentials
            Used By: Configuration
        */
        class FyndRewardsCredentials: Codable {
            
            public var publicKey: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case publicKey = "public_key"
                
            }

            public init(publicKey: String?) {
                
                self.publicKey = publicKey
                
            }

            public func duplicate() -> FyndRewardsCredentials {
                let dict = self.dictionary!
                let copy = FyndRewardsCredentials(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    publicKey = try container.decode(String.self, forKey: .publicKey)
                
                    if let strong_publicKey = publicKey,
                       let publicKeyData = Data(base64Encoded: strong_publicKey) {
                        publicKey = String(data: publicKeyData, encoding: .utf8) ?? publicKey
                    }
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                
                try? container.encodeIfPresent(publicKey?.asBase64, forKey: .publicKey)
                
                
                
            }
            
        }
        
        /*
            Model: GoogleMap
            Used By: Configuration
        */
        class GoogleMap: Codable {
            
            public var credentials: GoogleMapCredentials?
            

            public enum CodingKeys: String, CodingKey {
                
                case credentials = "credentials"
                
            }

            public init(credentials: GoogleMapCredentials?) {
                
                self.credentials = credentials
                
            }

            public func duplicate() -> GoogleMap {
                let dict = self.dictionary!
                let copy = GoogleMap(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    credentials = try container.decode(GoogleMapCredentials.self, forKey: .credentials)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(credentials, forKey: .credentials)
                
                
            }
            
        }
        
        /*
            Model: GoogleMapCredentials
            Used By: Configuration
        */
        class GoogleMapCredentials: Codable {
            
            public var apiKey: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case apiKey = "api_key"
                
            }

            public init(apiKey: String?) {
                
                self.apiKey = apiKey
                
            }

            public func duplicate() -> GoogleMapCredentials {
                let dict = self.dictionary!
                let copy = GoogleMapCredentials(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    apiKey = try container.decode(String.self, forKey: .apiKey)
                
                    if let strong_apiKey = apiKey,
                       let apiKeyData = Data(base64Encoded: strong_apiKey) {
                        apiKey = String(data: apiKeyData, encoding: .utf8) ?? apiKey
                    }
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                
                try? container.encodeIfPresent(apiKey?.asBase64, forKey: .apiKey)
                
                
                
            }
            
        }
        
        /*
            Model: RewardPointsConfig
            Used By: Configuration
        */
        class RewardPointsConfig: Codable {
            
            public var credit: Credit?
            
            public var debit: Debit?
            

            public enum CodingKeys: String, CodingKey {
                
                case credit = "credit"
                
                case debit = "debit"
                
            }

            public init(credit: Credit?, debit: Debit?) {
                
                self.credit = credit
                
                self.debit = debit
                
            }

            public func duplicate() -> RewardPointsConfig {
                let dict = self.dictionary!
                let copy = RewardPointsConfig(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    credit = try container.decode(Credit.self, forKey: .credit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    debit = try container.decode(Debit.self, forKey: .debit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(credit, forKey: .credit)
                
                
                
                
                try? container.encodeIfPresent(debit, forKey: .debit)
                
                
            }
            
        }
        
        /*
            Model: Credit
            Used By: Configuration
        */
        class Credit: Codable {
            
            public var enabled: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case enabled = "enabled"
                
            }

            public init(enabled: Bool?) {
                
                self.enabled = enabled
                
            }

            public func duplicate() -> Credit {
                let dict = self.dictionary!
                let copy = Credit(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(enabled, forKey: .enabled)
                
                
            }
            
        }
        
        /*
            Model: Debit
            Used By: Configuration
        */
        class Debit: Codable {
            
            public var enabled: Bool?
            
            public var autoApply: Bool?
            
            public var strategyChannel: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case enabled = "enabled"
                
                case autoApply = "auto_apply"
                
                case strategyChannel = "strategy_channel"
                
            }

            public init(autoApply: Bool?, enabled: Bool?, strategyChannel: String?) {
                
                self.enabled = enabled
                
                self.autoApply = autoApply
                
                self.strategyChannel = strategyChannel
                
            }

            public func duplicate() -> Debit {
                let dict = self.dictionary!
                let copy = Debit(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    autoApply = try container.decode(Bool.self, forKey: .autoApply)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    strategyChannel = try container.decode(String.self, forKey: .strategyChannel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(enabled, forKey: .enabled)
                
                
                
                
                try? container.encodeIfPresent(autoApply, forKey: .autoApply)
                
                
                
                
                try? container.encodeIfPresent(strategyChannel, forKey: .strategyChannel)
                
                
            }
            
        }
        
        /*
            Model: ProductDetailFeature
            Used By: Configuration
        */
        class ProductDetailFeature: Codable {
            
            public var similar: [String]?
            
            public var sellerSelection: Bool?
            
            public var updateProductMeta: Bool?
            
            public var requestProduct: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case similar = "similar"
                
                case sellerSelection = "seller_selection"
                
                case updateProductMeta = "update_product_meta"
                
                case requestProduct = "request_product"
                
            }

            public init(requestProduct: Bool?, sellerSelection: Bool?, similar: [String]?, updateProductMeta: Bool?) {
                
                self.similar = similar
                
                self.sellerSelection = sellerSelection
                
                self.updateProductMeta = updateProductMeta
                
                self.requestProduct = requestProduct
                
            }

            public func duplicate() -> ProductDetailFeature {
                let dict = self.dictionary!
                let copy = ProductDetailFeature(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    similar = try container.decode([String].self, forKey: .similar)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sellerSelection = try container.decode(Bool.self, forKey: .sellerSelection)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    updateProductMeta = try container.decode(Bool.self, forKey: .updateProductMeta)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    requestProduct = try container.decode(Bool.self, forKey: .requestProduct)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(similar, forKey: .similar)
                
                
                
                
                try? container.encodeIfPresent(sellerSelection, forKey: .sellerSelection)
                
                
                
                
                try? container.encodeIfPresent(updateProductMeta, forKey: .updateProductMeta)
                
                
                
                
                try? container.encodeIfPresent(requestProduct, forKey: .requestProduct)
                
                
            }
            
        }
        
        /*
            Model: LaunchPage
            Used By: Configuration
        */
        class LaunchPage: Codable {
            
            public var pageType: String?
            
            public var params: [String: Any]?
            
            public var query: [String: Any]?
            

            public enum CodingKeys: String, CodingKey {
                
                case pageType = "page_type"
                
                case params = "params"
                
                case query = "query"
                
            }

            public init(pageType: String?, params: [String: Any]?, query: [String: Any]?) {
                
                self.pageType = pageType
                
                self.params = params
                
                self.query = query
                
            }

            public func duplicate() -> LaunchPage {
                let dict = self.dictionary!
                let copy = LaunchPage(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    pageType = try container.decode(String.self, forKey: .pageType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    params = try container.decode([String: Any].self, forKey: .params)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    query = try container.decode([String: Any].self, forKey: .query)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(pageType, forKey: .pageType)
                
                
                
                
                try? container.encodeIfPresent(params, forKey: .params)
                
                
                
                
                try? container.encodeIfPresent(query, forKey: .query)
                
                
            }
            
        }
        
        /*
            Model: LandingPageFeature
            Used By: Configuration
        */
        class LandingPageFeature: Codable {
            
            public var launchPage: LaunchPage?
            
            public var continueAsGuest: Bool?
            
            public var loginBtnText: String?
            
            public var showDomainTextbox: Bool?
            
            public var showRegisterBtn: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case launchPage = "launch_page"
                
                case continueAsGuest = "continue_as_guest"
                
                case loginBtnText = "login_btn_text"
                
                case showDomainTextbox = "show_domain_textbox"
                
                case showRegisterBtn = "show_register_btn"
                
            }

            public init(continueAsGuest: Bool?, launchPage: LaunchPage?, loginBtnText: String?, showDomainTextbox: Bool?, showRegisterBtn: Bool?) {
                
                self.launchPage = launchPage
                
                self.continueAsGuest = continueAsGuest
                
                self.loginBtnText = loginBtnText
                
                self.showDomainTextbox = showDomainTextbox
                
                self.showRegisterBtn = showRegisterBtn
                
            }

            public func duplicate() -> LandingPageFeature {
                let dict = self.dictionary!
                let copy = LandingPageFeature(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    launchPage = try container.decode(LaunchPage.self, forKey: .launchPage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    continueAsGuest = try container.decode(Bool.self, forKey: .continueAsGuest)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    loginBtnText = try container.decode(String.self, forKey: .loginBtnText)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    showDomainTextbox = try container.decode(Bool.self, forKey: .showDomainTextbox)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    showRegisterBtn = try container.decode(Bool.self, forKey: .showRegisterBtn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(launchPage, forKey: .launchPage)
                
                
                
                
                try? container.encodeIfPresent(continueAsGuest, forKey: .continueAsGuest)
                
                
                
                
                try? container.encodeIfPresent(loginBtnText, forKey: .loginBtnText)
                
                
                
                
                try? container.encodeIfPresent(showDomainTextbox, forKey: .showDomainTextbox)
                
                
                
                
                try? container.encodeIfPresent(showRegisterBtn, forKey: .showRegisterBtn)
                
                
            }
            
        }
        
        /*
            Model: RegistrationPageFeature
            Used By: Configuration
        */
        class RegistrationPageFeature: Codable {
            
            public var askStoreAddress: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case askStoreAddress = "ask_store_address"
                
            }

            public init(askStoreAddress: Bool?) {
                
                self.askStoreAddress = askStoreAddress
                
            }

            public func duplicate() -> RegistrationPageFeature {
                let dict = self.dictionary!
                let copy = RegistrationPageFeature(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    askStoreAddress = try container.decode(Bool.self, forKey: .askStoreAddress)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(askStoreAddress, forKey: .askStoreAddress)
                
                
            }
            
        }
        
        /*
            Model: AppFeature
            Used By: Configuration
        */
        class AppFeature: Codable {
            
            public var productDetail: ProductDetailFeature?
            
            public var landingPage: LandingPageFeature?
            
            public var registrationPage: RegistrationPageFeature?
            
            public var homePage: HomePageFeature?
            
            public var common: CommonFeature?
            
            public var cart: CartFeature?
            
            public var qr: QrFeature?
            
            public var pcr: PcrFeature?
            
            public var order: OrderFeature?
            
            public var id: String?
            
            public var app: String?
            
            public var createdAt: String?
            
            public var updatedAt: String?
            
            public var v: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case productDetail = "product_detail"
                
                case landingPage = "landing_page"
                
                case registrationPage = "registration_page"
                
                case homePage = "home_page"
                
                case common = "common"
                
                case cart = "cart"
                
                case qr = "qr"
                
                case pcr = "pcr"
                
                case order = "order"
                
                case id = "_id"
                
                case app = "app"
                
                case createdAt = "created_at"
                
                case updatedAt = "updated_at"
                
                case v = "__v"
                
            }

            public init(app: String?, cart: CartFeature?, common: CommonFeature?, createdAt: String?, homePage: HomePageFeature?, landingPage: LandingPageFeature?, order: OrderFeature?, pcr: PcrFeature?, productDetail: ProductDetailFeature?, qr: QrFeature?, registrationPage: RegistrationPageFeature?, updatedAt: String?, id: String?, v: Int?) {
                
                self.productDetail = productDetail
                
                self.landingPage = landingPage
                
                self.registrationPage = registrationPage
                
                self.homePage = homePage
                
                self.common = common
                
                self.cart = cart
                
                self.qr = qr
                
                self.pcr = pcr
                
                self.order = order
                
                self.id = id
                
                self.app = app
                
                self.createdAt = createdAt
                
                self.updatedAt = updatedAt
                
                self.v = v
                
            }

            public func duplicate() -> AppFeature {
                let dict = self.dictionary!
                let copy = AppFeature(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    productDetail = try container.decode(ProductDetailFeature.self, forKey: .productDetail)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    landingPage = try container.decode(LandingPageFeature.self, forKey: .landingPage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    registrationPage = try container.decode(RegistrationPageFeature.self, forKey: .registrationPage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    homePage = try container.decode(HomePageFeature.self, forKey: .homePage)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    common = try container.decode(CommonFeature.self, forKey: .common)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    cart = try container.decode(CartFeature.self, forKey: .cart)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    qr = try container.decode(QrFeature.self, forKey: .qr)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pcr = try container.decode(PcrFeature.self, forKey: .pcr)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    order = try container.decode(OrderFeature.self, forKey: .order)
                
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
                    app = try container.decode(String.self, forKey: .app)
                
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
                
                
                
                do {
                    v = try container.decode(Int.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(productDetail, forKey: .productDetail)
                
                
                
                
                try? container.encodeIfPresent(landingPage, forKey: .landingPage)
                
                
                
                
                try? container.encodeIfPresent(registrationPage, forKey: .registrationPage)
                
                
                
                
                try? container.encodeIfPresent(homePage, forKey: .homePage)
                
                
                
                
                try? container.encodeIfPresent(common, forKey: .common)
                
                
                
                
                try? container.encodeIfPresent(cart, forKey: .cart)
                
                
                
                
                try? container.encodeIfPresent(qr, forKey: .qr)
                
                
                
                
                try? container.encodeIfPresent(pcr, forKey: .pcr)
                
                
                
                
                try? container.encodeIfPresent(order, forKey: .order)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(app, forKey: .app)
                
                
                
                
                try? container.encodeIfPresent(createdAt, forKey: .createdAt)
                
                
                
                
                try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
                
                
                
                
                try? container.encodeIfPresent(v, forKey: .v)
                
                
            }
            
        }
        
        /*
            Model: HomePageFeature
            Used By: Configuration
        */
        class HomePageFeature: Codable {
            
            public var orderProcessing: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case orderProcessing = "order_processing"
                
            }

            public init(orderProcessing: Bool?) {
                
                self.orderProcessing = orderProcessing
                
            }

            public func duplicate() -> HomePageFeature {
                let dict = self.dictionary!
                let copy = HomePageFeature(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    orderProcessing = try container.decode(Bool.self, forKey: .orderProcessing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(orderProcessing, forKey: .orderProcessing)
                
                
            }
            
        }
        
        /*
            Model: CommonFeature
            Used By: Configuration
        */
        class CommonFeature: Codable {
            
            public var communicationOptinDialog: CommunicationOptinDialogFeature?
            
            public var deploymentStoreSelection: DeploymentStoreSelectionFeature?
            
            public var listingPrice: ListingPriceFeature?
            
            public var currency: CurrencyFeature?
            
            public var revenueEngine: RevenueEngineFeature?
            
            public var feedback: FeedbackFeature?
            
            public var compareProducts: CompareProductsFeature?
            
            public var rewardPoints: RewardPointsConfig?
            

            public enum CodingKeys: String, CodingKey {
                
                case communicationOptinDialog = "communication_optin_dialog"
                
                case deploymentStoreSelection = "deployment_store_selection"
                
                case listingPrice = "listing_price"
                
                case currency = "currency"
                
                case revenueEngine = "revenue_engine"
                
                case feedback = "feedback"
                
                case compareProducts = "compare_products"
                
                case rewardPoints = "reward_points"
                
            }

            public init(communicationOptinDialog: CommunicationOptinDialogFeature?, compareProducts: CompareProductsFeature?, currency: CurrencyFeature?, deploymentStoreSelection: DeploymentStoreSelectionFeature?, feedback: FeedbackFeature?, listingPrice: ListingPriceFeature?, revenueEngine: RevenueEngineFeature?, rewardPoints: RewardPointsConfig?) {
                
                self.communicationOptinDialog = communicationOptinDialog
                
                self.deploymentStoreSelection = deploymentStoreSelection
                
                self.listingPrice = listingPrice
                
                self.currency = currency
                
                self.revenueEngine = revenueEngine
                
                self.feedback = feedback
                
                self.compareProducts = compareProducts
                
                self.rewardPoints = rewardPoints
                
            }

            public func duplicate() -> CommonFeature {
                let dict = self.dictionary!
                let copy = CommonFeature(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    communicationOptinDialog = try container.decode(CommunicationOptinDialogFeature.self, forKey: .communicationOptinDialog)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deploymentStoreSelection = try container.decode(DeploymentStoreSelectionFeature.self, forKey: .deploymentStoreSelection)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    listingPrice = try container.decode(ListingPriceFeature.self, forKey: .listingPrice)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    currency = try container.decode(CurrencyFeature.self, forKey: .currency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    revenueEngine = try container.decode(RevenueEngineFeature.self, forKey: .revenueEngine)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    feedback = try container.decode(FeedbackFeature.self, forKey: .feedback)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    compareProducts = try container.decode(CompareProductsFeature.self, forKey: .compareProducts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    rewardPoints = try container.decode(RewardPointsConfig.self, forKey: .rewardPoints)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(communicationOptinDialog, forKey: .communicationOptinDialog)
                
                
                
                
                try? container.encodeIfPresent(deploymentStoreSelection, forKey: .deploymentStoreSelection)
                
                
                
                
                try? container.encodeIfPresent(listingPrice, forKey: .listingPrice)
                
                
                
                
                try? container.encodeIfPresent(currency, forKey: .currency)
                
                
                
                
                try? container.encodeIfPresent(revenueEngine, forKey: .revenueEngine)
                
                
                
                
                try? container.encodeIfPresent(feedback, forKey: .feedback)
                
                
                
                
                try? container.encodeIfPresent(compareProducts, forKey: .compareProducts)
                
                
                
                
                try? container.encodeIfPresent(rewardPoints, forKey: .rewardPoints)
                
                
            }
            
        }
        
        /*
            Model: CommunicationOptinDialogFeature
            Used By: Configuration
        */
        class CommunicationOptinDialogFeature: Codable {
            
            public var visibility: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case visibility = "visibility"
                
            }

            public init(visibility: Bool?) {
                
                self.visibility = visibility
                
            }

            public func duplicate() -> CommunicationOptinDialogFeature {
                let dict = self.dictionary!
                let copy = CommunicationOptinDialogFeature(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    visibility = try container.decode(Bool.self, forKey: .visibility)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(visibility, forKey: .visibility)
                
                
            }
            
        }
        
        /*
            Model: DeploymentStoreSelectionFeature
            Used By: Configuration
        */
        class DeploymentStoreSelectionFeature: Codable {
            
            public var enabled: Bool?
            
            public var type: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case enabled = "enabled"
                
                case type = "type"
                
            }

            public init(enabled: Bool?, type: String?) {
                
                self.enabled = enabled
                
                self.type = type
                
            }

            public func duplicate() -> DeploymentStoreSelectionFeature {
                let dict = self.dictionary!
                let copy = DeploymentStoreSelectionFeature(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(enabled, forKey: .enabled)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
            }
            
        }
        
        /*
            Model: ListingPriceFeature
            Used By: Configuration
        */
        class ListingPriceFeature: Codable {
            
            public var value: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case value = "value"
                
            }

            public init(value: String?) {
                
                self.value = value
                
            }

            public func duplicate() -> ListingPriceFeature {
                let dict = self.dictionary!
                let copy = ListingPriceFeature(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
            }
            
        }
        
        /*
            Model: CurrencyFeature
            Used By: Configuration
        */
        class CurrencyFeature: Codable {
            
            public var value: [String]?
            
            public var type: String?
            
            public var defaultCurrency: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case value = "value"
                
                case type = "type"
                
                case defaultCurrency = "default_currency"
                
            }

            public init(defaultCurrency: String?, type: String?, value: [String]?) {
                
                self.value = value
                
                self.type = type
                
                self.defaultCurrency = defaultCurrency
                
            }

            public func duplicate() -> CurrencyFeature {
                let dict = self.dictionary!
                let copy = CurrencyFeature(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    value = try container.decode([String].self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    defaultCurrency = try container.decode(String.self, forKey: .defaultCurrency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(value, forKey: .value)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(defaultCurrency, forKey: .defaultCurrency)
                
                
            }
            
        }
        
        /*
            Model: RevenueEngineFeature
            Used By: Configuration
        */
        class RevenueEngineFeature: Codable {
            
            public var enabled: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case enabled = "enabled"
                
            }

            public init(enabled: Bool?) {
                
                self.enabled = enabled
                
            }

            public func duplicate() -> RevenueEngineFeature {
                let dict = self.dictionary!
                let copy = RevenueEngineFeature(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(enabled, forKey: .enabled)
                
                
            }
            
        }
        
        /*
            Model: FeedbackFeature
            Used By: Configuration
        */
        class FeedbackFeature: Codable {
            
            public var enabled: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case enabled = "enabled"
                
            }

            public init(enabled: Bool?) {
                
                self.enabled = enabled
                
            }

            public func duplicate() -> FeedbackFeature {
                let dict = self.dictionary!
                let copy = FeedbackFeature(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(enabled, forKey: .enabled)
                
                
            }
            
        }
        
        /*
            Model: CompareProductsFeature
            Used By: Configuration
        */
        class CompareProductsFeature: Codable {
            
            public var enabled: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case enabled = "enabled"
                
            }

            public init(enabled: Bool?) {
                
                self.enabled = enabled
                
            }

            public func duplicate() -> CompareProductsFeature {
                let dict = self.dictionary!
                let copy = CompareProductsFeature(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(enabled, forKey: .enabled)
                
                
            }
            
        }
        
        /*
            Model: CartFeature
            Used By: Configuration
        */
        class CartFeature: Codable {
            
            public var gstInput: Bool?
            
            public var staffSelection: Bool?
            
            public var placingForCustomer: Bool?
            
            public var googleMap: Bool?
            
            public var revenueEngineCoupon: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case gstInput = "gst_input"
                
                case staffSelection = "staff_selection"
                
                case placingForCustomer = "placing_for_customer"
                
                case googleMap = "google_map"
                
                case revenueEngineCoupon = "revenue_engine_coupon"
                
            }

            public init(googleMap: Bool?, gstInput: Bool?, placingForCustomer: Bool?, revenueEngineCoupon: Bool?, staffSelection: Bool?) {
                
                self.gstInput = gstInput
                
                self.staffSelection = staffSelection
                
                self.placingForCustomer = placingForCustomer
                
                self.googleMap = googleMap
                
                self.revenueEngineCoupon = revenueEngineCoupon
                
            }

            public func duplicate() -> CartFeature {
                let dict = self.dictionary!
                let copy = CartFeature(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    gstInput = try container.decode(Bool.self, forKey: .gstInput)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    staffSelection = try container.decode(Bool.self, forKey: .staffSelection)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    placingForCustomer = try container.decode(Bool.self, forKey: .placingForCustomer)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    googleMap = try container.decode(Bool.self, forKey: .googleMap)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    revenueEngineCoupon = try container.decode(Bool.self, forKey: .revenueEngineCoupon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(gstInput, forKey: .gstInput)
                
                
                
                
                try? container.encodeIfPresent(staffSelection, forKey: .staffSelection)
                
                
                
                
                try? container.encodeIfPresent(placingForCustomer, forKey: .placingForCustomer)
                
                
                
                
                try? container.encodeIfPresent(googleMap, forKey: .googleMap)
                
                
                
                
                try? container.encodeIfPresent(revenueEngineCoupon, forKey: .revenueEngineCoupon)
                
                
            }
            
        }
        
        /*
            Model: QrFeature
            Used By: Configuration
        */
        class QrFeature: Codable {
            
            public var application: Bool?
            
            public var products: Bool?
            
            public var collections: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case application = "application"
                
                case products = "products"
                
                case collections = "collections"
                
            }

            public init(application: Bool?, collections: Bool?, products: Bool?) {
                
                self.application = application
                
                self.products = products
                
                self.collections = collections
                
            }

            public func duplicate() -> QrFeature {
                let dict = self.dictionary!
                let copy = QrFeature(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    application = try container.decode(Bool.self, forKey: .application)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    products = try container.decode(Bool.self, forKey: .products)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    collections = try container.decode(Bool.self, forKey: .collections)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(application, forKey: .application)
                
                
                
                
                try? container.encodeIfPresent(products, forKey: .products)
                
                
                
                
                try? container.encodeIfPresent(collections, forKey: .collections)
                
                
            }
            
        }
        
        /*
            Model: PcrFeature
            Used By: Configuration
        */
        class PcrFeature: Codable {
            
            public var staffSelection: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case staffSelection = "staff_selection"
                
            }

            public init(staffSelection: Bool?) {
                
                self.staffSelection = staffSelection
                
            }

            public func duplicate() -> PcrFeature {
                let dict = self.dictionary!
                let copy = PcrFeature(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    staffSelection = try container.decode(Bool.self, forKey: .staffSelection)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(staffSelection, forKey: .staffSelection)
                
                
            }
            
        }
        
        /*
            Model: OrderFeature
            Used By: Configuration
        */
        class OrderFeature: Codable {
            
            public var buyAgain: Bool?
            

            public enum CodingKeys: String, CodingKey {
                
                case buyAgain = "buy_again"
                
            }

            public init(buyAgain: Bool?) {
                
                self.buyAgain = buyAgain
                
            }

            public func duplicate() -> OrderFeature {
                let dict = self.dictionary!
                let copy = OrderFeature(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    buyAgain = try container.decode(Bool.self, forKey: .buyAgain)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(buyAgain, forKey: .buyAgain)
                
                
            }
            
        }
        
        /*
            Model: AppFeatureRequest
            Used By: Configuration
        */
        class AppFeatureRequest: Codable {
            
            public var feature: AppFeature?
            

            public enum CodingKeys: String, CodingKey {
                
                case feature = "feature"
                
            }

            public init(feature: AppFeature?) {
                
                self.feature = feature
                
            }

            public func duplicate() -> AppFeatureRequest {
                let dict = self.dictionary!
                let copy = AppFeatureRequest(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    feature = try container.decode(AppFeature.self, forKey: .feature)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(feature, forKey: .feature)
                
                
            }
            
        }
        
        /*
            Model: AppFeatureResponse
            Used By: Configuration
        */
        class AppFeatureResponse: Codable {
            
            public var feature: AppFeature?
            

            public enum CodingKeys: String, CodingKey {
                
                case feature = "feature"
                
            }

            public init(feature: AppFeature?) {
                
                self.feature = feature
                
            }

            public func duplicate() -> AppFeatureResponse {
                let dict = self.dictionary!
                let copy = AppFeatureResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    feature = try container.decode(AppFeature.self, forKey: .feature)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(feature, forKey: .feature)
                
                
            }
            
        }
        
        /*
            Model: UnhandledError
            Used By: Configuration
        */
        class UnhandledError: Codable {
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
            }

            public init(message: String?) {
                
                self.message = message
                
            }

            public func duplicate() -> UnhandledError {
                let dict = self.dictionary!
                let copy = UnhandledError(dictionary: dict)!
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
            Model: InvalidPayloadRequest
            Used By: Configuration
        */
        class InvalidPayloadRequest: Codable {
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
            }

            public init(message: String?) {
                
                self.message = message
                
            }

            public func duplicate() -> InvalidPayloadRequest {
                let dict = self.dictionary!
                let copy = InvalidPayloadRequest(dictionary: dict)!
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
            Model: SuccessMessageResponse
            Used By: Configuration
        */
        class SuccessMessageResponse: Codable {
            
            public var message: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case message = "message"
                
            }

            public init(message: String?) {
                
                self.message = message
                
            }

            public func duplicate() -> SuccessMessageResponse {
                let dict = self.dictionary!
                let copy = SuccessMessageResponse(dictionary: dict)!
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
            Model: InventoryBrandRule
            Used By: Configuration
        */
        class InventoryBrandRule: Codable {
            
            public var criteria: String?
            
            public var brands: [Int]?
            

            public enum CodingKeys: String, CodingKey {
                
                case criteria = "criteria"
                
                case brands = "brands"
                
            }

            public init(brands: [Int]?, criteria: String?) {
                
                self.criteria = criteria
                
                self.brands = brands
                
            }

            public func duplicate() -> InventoryBrandRule {
                let dict = self.dictionary!
                let copy = InventoryBrandRule(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    criteria = try container.decode(String.self, forKey: .criteria)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    brands = try container.decode([Int].self, forKey: .brands)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(criteria, forKey: .criteria)
                
                
                
                
                try? container.encodeIfPresent(brands, forKey: .brands)
                
                
            }
            
        }
        
        /*
            Model: StoreCriteriaRule
            Used By: Configuration
        */
        class StoreCriteriaRule: Codable {
            
            public var companies: [Int]?
            
            public var brands: [Int]?
            

            public enum CodingKeys: String, CodingKey {
                
                case companies = "companies"
                
                case brands = "brands"
                
            }

            public init(brands: [Int]?, companies: [Int]?) {
                
                self.companies = companies
                
                self.brands = brands
                
            }

            public func duplicate() -> StoreCriteriaRule {
                let dict = self.dictionary!
                let copy = StoreCriteriaRule(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    companies = try container.decode([Int].self, forKey: .companies)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    brands = try container.decode([Int].self, forKey: .brands)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(companies, forKey: .companies)
                
                
                
                
                try? container.encodeIfPresent(brands, forKey: .brands)
                
                
            }
            
        }
        
        /*
            Model: InventoryStoreRule
            Used By: Configuration
        */
        class InventoryStoreRule: Codable {
            
            public var criteria: String?
            
            public var rules: [StoreCriteriaRule]?
            
            public var stores: [Int]?
            

            public enum CodingKeys: String, CodingKey {
                
                case criteria = "criteria"
                
                case rules = "rules"
                
                case stores = "stores"
                
            }

            public init(criteria: String?, rules: [StoreCriteriaRule]?, stores: [Int]?) {
                
                self.criteria = criteria
                
                self.rules = rules
                
                self.stores = stores
                
            }

            public func duplicate() -> InventoryStoreRule {
                let dict = self.dictionary!
                let copy = InventoryStoreRule(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    criteria = try container.decode(String.self, forKey: .criteria)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    rules = try container.decode([StoreCriteriaRule].self, forKey: .rules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    stores = try container.decode([Int].self, forKey: .stores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(criteria, forKey: .criteria)
                
                
                
                
                try? container.encodeIfPresent(rules, forKey: .rules)
                
                
                
                
                try? container.encodeIfPresent(stores, forKey: .stores)
                
                
            }
            
        }
        
        /*
            Model: InventoryPaymentConfig
            Used By: Configuration
        */
        class InventoryPaymentConfig: Codable {
            
            public var modeOfPayment: String?
            
            public var source: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case modeOfPayment = "mode_of_payment"
                
                case source = "source"
                
            }

            public init(modeOfPayment: String?, source: String?) {
                
                self.modeOfPayment = modeOfPayment
                
                self.source = source
                
            }

            public func duplicate() -> InventoryPaymentConfig {
                let dict = self.dictionary!
                let copy = InventoryPaymentConfig(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    modeOfPayment = try container.decode(String.self, forKey: .modeOfPayment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    source = try container.decode(String.self, forKey: .source)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(modeOfPayment, forKey: .modeOfPayment)
                
                
                
                
                try? container.encodeIfPresent(source, forKey: .source)
                
                
            }
            
        }
        
        /*
            Model: StorePriorityRule
            Used By: Configuration
        */
        class StorePriorityRule: Codable {
            
            public var enabled: Bool?
            
            public var storetypeOrder: [String]?
            

            public enum CodingKeys: String, CodingKey {
                
                case enabled = "enabled"
                
                case storetypeOrder = "storetype_order"
                
            }

            public init(enabled: Bool?, storetypeOrder: [String]?) {
                
                self.enabled = enabled
                
                self.storetypeOrder = storetypeOrder
                
            }

            public func duplicate() -> StorePriorityRule {
                let dict = self.dictionary!
                let copy = StorePriorityRule(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    storetypeOrder = try container.decode([String].self, forKey: .storetypeOrder)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(enabled, forKey: .enabled)
                
                
                
                
                try? container.encodeIfPresent(storetypeOrder, forKey: .storetypeOrder)
                
                
            }
            
        }
        
        /*
            Model: ArticleAssignmentRule
            Used By: Configuration
        */
        class ArticleAssignmentRule: Codable {
            
            public var storePriority: StorePriorityRule?
            

            public enum CodingKeys: String, CodingKey {
                
                case storePriority = "store_priority"
                
            }

            public init(storePriority: StorePriorityRule?) {
                
                self.storePriority = storePriority
                
            }

            public func duplicate() -> ArticleAssignmentRule {
                let dict = self.dictionary!
                let copy = ArticleAssignmentRule(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    storePriority = try container.decode(StorePriorityRule.self, forKey: .storePriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(storePriority, forKey: .storePriority)
                
                
            }
            
        }
        
        /*
            Model: InventoryArticleAssignment
            Used By: Configuration
        */
        class InventoryArticleAssignment: Codable {
            
            public var postOrderReassignment: Bool?
            
            public var rules: ArticleAssignmentRule?
            

            public enum CodingKeys: String, CodingKey {
                
                case postOrderReassignment = "post_order_reassignment"
                
                case rules = "rules"
                
            }

            public init(postOrderReassignment: Bool?, rules: ArticleAssignmentRule?) {
                
                self.postOrderReassignment = postOrderReassignment
                
                self.rules = rules
                
            }

            public func duplicate() -> InventoryArticleAssignment {
                let dict = self.dictionary!
                let copy = InventoryArticleAssignment(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    postOrderReassignment = try container.decode(Bool.self, forKey: .postOrderReassignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    rules = try container.decode(ArticleAssignmentRule.self, forKey: .rules)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(postOrderReassignment, forKey: .postOrderReassignment)
                
                
                
                
                try? container.encodeIfPresent(rules, forKey: .rules)
                
                
            }
            
        }
        
        /*
            Model: CompanyAboutAddress
            Used By: Configuration
        */
        class CompanyAboutAddress: Codable {
            
            public var pincode: Int?
            
            public var address1: String?
            
            public var address2: String?
            
            public var city: String?
            
            public var state: String?
            
            public var country: String?
            
            public var addressType: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case pincode = "pincode"
                
                case address1 = "address1"
                
                case address2 = "address2"
                
                case city = "city"
                
                case state = "state"
                
                case country = "country"
                
                case addressType = "address_type"
                
            }

            public init(address1: String?, address2: String?, addressType: String?, city: String?, country: String?, pincode: Int?, state: String?) {
                
                self.pincode = pincode
                
                self.address1 = address1
                
                self.address2 = address2
                
                self.city = city
                
                self.state = state
                
                self.country = country
                
                self.addressType = addressType
                
            }

            public func duplicate() -> CompanyAboutAddress {
                let dict = self.dictionary!
                let copy = CompanyAboutAddress(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    pincode = try container.decode(Int.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    address1 = try container.decode(String.self, forKey: .address1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addressType = try container.decode(String.self, forKey: .addressType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                
                
                
                try? container.encodeIfPresent(address1, forKey: .address1)
                
                
                
                
                try? container.encodeIfPresent(address2, forKey: .address2)
                
                
                
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                
                
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                
                
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                
                
                
                try? container.encodeIfPresent(addressType, forKey: .addressType)
                
                
            }
            
        }
        
        /*
            Model: UserEmail
            Used By: Configuration
        */
        class UserEmail: Codable {
            
            public var active: Bool?
            
            public var primary: Bool?
            
            public var verified: Bool?
            
            public var email: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case active = "active"
                
                case primary = "primary"
                
                case verified = "verified"
                
                case email = "email"
                
            }

            public init(active: Bool?, email: String?, primary: Bool?, verified: Bool?) {
                
                self.active = active
                
                self.primary = primary
                
                self.verified = verified
                
                self.email = email
                
            }

            public func duplicate() -> UserEmail {
                let dict = self.dictionary!
                let copy = UserEmail(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
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
                    verified = try container.decode(Bool.self, forKey: .verified)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(active, forKey: .active)
                
                
                
                
                try? container.encodeIfPresent(primary, forKey: .primary)
                
                
                
                
                try? container.encodeIfPresent(verified, forKey: .verified)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
            }
            
        }
        
        /*
            Model: UserPhoneNumber
            Used By: Configuration
        */
        class UserPhoneNumber: Codable {
            
            public var active: Bool?
            
            public var primary: Bool?
            
            public var verified: Bool?
            
            public var countryCode: Int?
            
            public var phone: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case active = "active"
                
                case primary = "primary"
                
                case verified = "verified"
                
                case countryCode = "country_code"
                
                case phone = "phone"
                
            }

            public init(active: Bool?, countryCode: Int?, phone: String?, primary: Bool?, verified: Bool?) {
                
                self.active = active
                
                self.primary = primary
                
                self.verified = verified
                
                self.countryCode = countryCode
                
                self.phone = phone
                
            }

            public func duplicate() -> UserPhoneNumber {
                let dict = self.dictionary!
                let copy = UserPhoneNumber(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    active = try container.decode(Bool.self, forKey: .active)
                
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
                    verified = try container.decode(Bool.self, forKey: .verified)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    countryCode = try container.decode(Int.self, forKey: .countryCode)
                
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
                
                
                
                try? container.encodeIfPresent(active, forKey: .active)
                
                
                
                
                try? container.encodeIfPresent(primary, forKey: .primary)
                
                
                
                
                try? container.encodeIfPresent(verified, forKey: .verified)
                
                
                
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                
                
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                
            }
            
        }
        
        /*
            Model: ApplicationInformation
            Used By: Configuration
        */
        class ApplicationInformation: Codable {
            
            public var address: InformationAddress?
            
            public var support: InformationSupport?
            
            public var socialLinks: SocialLinks?
            
            public var links: Links?
            
            public var copyrightText: String?
            
            public var id: String?
            
            public var businessHighlights: BusinessHighlights?
            
            public var application: String?
            
            public var createdAt: String?
            
            public var updatedAt: String?
            
            public var v: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case address = "address"
                
                case support = "support"
                
                case socialLinks = "social_links"
                
                case links = "links"
                
                case copyrightText = "copyright_text"
                
                case id = "_id"
                
                case businessHighlights = "business_highlights"
                
                case application = "application"
                
                case createdAt = "created_at"
                
                case updatedAt = "updated_at"
                
                case v = "__v"
                
            }

            public init(address: InformationAddress?, application: String?, businessHighlights: BusinessHighlights?, copyrightText: String?, createdAt: String?, links: Links?, socialLinks: SocialLinks?, support: InformationSupport?, updatedAt: String?, id: String?, v: Int?) {
                
                self.address = address
                
                self.support = support
                
                self.socialLinks = socialLinks
                
                self.links = links
                
                self.copyrightText = copyrightText
                
                self.id = id
                
                self.businessHighlights = businessHighlights
                
                self.application = application
                
                self.createdAt = createdAt
                
                self.updatedAt = updatedAt
                
                self.v = v
                
            }

            public func duplicate() -> ApplicationInformation {
                let dict = self.dictionary!
                let copy = ApplicationInformation(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    address = try container.decode(InformationAddress.self, forKey: .address)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    support = try container.decode(InformationSupport.self, forKey: .support)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    socialLinks = try container.decode(SocialLinks.self, forKey: .socialLinks)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    links = try container.decode(Links.self, forKey: .links)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    copyrightText = try container.decode(String.self, forKey: .copyrightText)
                
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
                    businessHighlights = try container.decode(BusinessHighlights.self, forKey: .businessHighlights)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    application = try container.decode(String.self, forKey: .application)
                
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
                
                
                
                do {
                    v = try container.decode(Int.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(support, forKey: .support)
                
                
                
                
                try? container.encodeIfPresent(socialLinks, forKey: .socialLinks)
                
                
                
                
                try? container.encodeIfPresent(links, forKey: .links)
                
                
                
                
                try? container.encodeIfPresent(copyrightText, forKey: .copyrightText)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(businessHighlights, forKey: .businessHighlights)
                
                
                
                
                try? container.encodeIfPresent(application, forKey: .application)
                
                
                
                
                try? container.encodeIfPresent(createdAt, forKey: .createdAt)
                
                
                
                
                try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
                
                
                
                
                try? container.encodeIfPresent(v, forKey: .v)
                
                
            }
            
        }
        
        /*
            Model: InformationAddress
            Used By: Configuration
        */
        class InformationAddress: Codable {
            
            public var loc: String?
            
            public var addressLine: [String]?
            
            public var phone: InformationPhone?
            
            public var city: String?
            
            public var country: String?
            
            public var pincode: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case loc = "loc"
                
                case addressLine = "address_line"
                
                case phone = "phone"
                
                case city = "city"
                
                case country = "country"
                
                case pincode = "pincode"
                
            }

            public init(addressLine: [String]?, city: String?, country: String?, loc: String?, phone: InformationPhone?, pincode: Int?) {
                
                self.loc = loc
                
                self.addressLine = addressLine
                
                self.phone = phone
                
                self.city = city
                
                self.country = country
                
                self.pincode = pincode
                
            }

            public func duplicate() -> InformationAddress {
                let dict = self.dictionary!
                let copy = InformationAddress(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    loc = try container.decode(String.self, forKey: .loc)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    addressLine = try container.decode([String].self, forKey: .addressLine)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    phone = try container.decode(InformationPhone.self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pincode = try container.decode(Int.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(loc, forKey: .loc)
                
                
                
                
                try? container.encodeIfPresent(addressLine, forKey: .addressLine)
                
                
                
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                
                
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                
                
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                
                
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                
            }
            
        }
        
        /*
            Model: InformationPhone
            Used By: Configuration
        */
        class InformationPhone: Codable {
            
            public var code: String?
            
            public var number: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case code = "code"
                
                case number = "number"
                
            }

            public init(code: String?, number: String?) {
                
                self.code = code
                
                self.number = number
                
            }

            public func duplicate() -> InformationPhone {
                let dict = self.dictionary!
                let copy = InformationPhone(dictionary: dict)!
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
                    number = try container.decode(String.self, forKey: .number)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
                
                
                try? container.encodeIfPresent(number, forKey: .number)
                
                
            }
            
        }
        
        /*
            Model: InformationSupport
            Used By: Configuration
        */
        class InformationSupport: Codable {
            
            public var phone: [String]?
            
            public var email: [String]?
            
            public var timing: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case phone = "phone"
                
                case email = "email"
                
                case timing = "timing"
                
            }

            public init(email: [String]?, phone: [String]?, timing: String?) {
                
                self.phone = phone
                
                self.email = email
                
                self.timing = timing
                
            }

            public func duplicate() -> InformationSupport {
                let dict = self.dictionary!
                let copy = InformationSupport(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    phone = try container.decode([String].self, forKey: .phone)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    email = try container.decode([String].self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    timing = try container.decode(String.self, forKey: .timing)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(phone, forKey: .phone)
                
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(timing, forKey: .timing)
                
                
            }
            
        }
        
        /*
            Model: SocialLinks
            Used By: Configuration
        */
        class SocialLinks: Codable {
            
            public var facebook: FacebookLink?
            
            public var instagram: InstagramLink?
            
            public var twitter: TwitterLink?
            
            public var pinterest: PinterestLink?
            
            public var googlePlus: GooglePlusLink?
            
            public var youtube: YoutubeLink?
            
            public var linkedIn: LinkedInLink?
            
            public var vimeo: VimeoLink?
            
            public var blogLink: BlogLink?
            

            public enum CodingKeys: String, CodingKey {
                
                case facebook = "facebook"
                
                case instagram = "instagram"
                
                case twitter = "twitter"
                
                case pinterest = "pinterest"
                
                case googlePlus = "google_plus"
                
                case youtube = "youtube"
                
                case linkedIn = "linked_in"
                
                case vimeo = "vimeo"
                
                case blogLink = "blog_link"
                
            }

            public init(blogLink: BlogLink?, facebook: FacebookLink?, googlePlus: GooglePlusLink?, instagram: InstagramLink?, linkedIn: LinkedInLink?, pinterest: PinterestLink?, twitter: TwitterLink?, vimeo: VimeoLink?, youtube: YoutubeLink?) {
                
                self.facebook = facebook
                
                self.instagram = instagram
                
                self.twitter = twitter
                
                self.pinterest = pinterest
                
                self.googlePlus = googlePlus
                
                self.youtube = youtube
                
                self.linkedIn = linkedIn
                
                self.vimeo = vimeo
                
                self.blogLink = blogLink
                
            }

            public func duplicate() -> SocialLinks {
                let dict = self.dictionary!
                let copy = SocialLinks(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    facebook = try container.decode(FacebookLink.self, forKey: .facebook)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    instagram = try container.decode(InstagramLink.self, forKey: .instagram)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    twitter = try container.decode(TwitterLink.self, forKey: .twitter)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pinterest = try container.decode(PinterestLink.self, forKey: .pinterest)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    googlePlus = try container.decode(GooglePlusLink.self, forKey: .googlePlus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    youtube = try container.decode(YoutubeLink.self, forKey: .youtube)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    linkedIn = try container.decode(LinkedInLink.self, forKey: .linkedIn)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    vimeo = try container.decode(VimeoLink.self, forKey: .vimeo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    blogLink = try container.decode(BlogLink.self, forKey: .blogLink)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(facebook, forKey: .facebook)
                
                
                
                
                try? container.encodeIfPresent(instagram, forKey: .instagram)
                
                
                
                
                try? container.encodeIfPresent(twitter, forKey: .twitter)
                
                
                
                
                try? container.encodeIfPresent(pinterest, forKey: .pinterest)
                
                
                
                
                try? container.encodeIfPresent(googlePlus, forKey: .googlePlus)
                
                
                
                
                try? container.encodeIfPresent(youtube, forKey: .youtube)
                
                
                
                
                try? container.encodeIfPresent(linkedIn, forKey: .linkedIn)
                
                
                
                
                try? container.encodeIfPresent(vimeo, forKey: .vimeo)
                
                
                
                
                try? container.encodeIfPresent(blogLink, forKey: .blogLink)
                
                
            }
            
        }
        
        /*
            Model: FacebookLink
            Used By: Configuration
        */
        class FacebookLink: Codable {
            
            public var title: String?
            
            public var icon: String?
            
            public var link: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case title = "title"
                
                case icon = "icon"
                
                case link = "link"
                
            }

            public init(icon: String?, link: String?, title: String?) {
                
                self.title = title
                
                self.icon = icon
                
                self.link = link
                
            }

            public func duplicate() -> FacebookLink {
                let dict = self.dictionary!
                let copy = FacebookLink(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    icon = try container.decode(String.self, forKey: .icon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    link = try container.decode(String.self, forKey: .link)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(icon, forKey: .icon)
                
                
                
                
                try? container.encodeIfPresent(link, forKey: .link)
                
                
            }
            
        }
        
        /*
            Model: InstagramLink
            Used By: Configuration
        */
        class InstagramLink: Codable {
            
            public var title: String?
            
            public var icon: String?
            
            public var link: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case title = "title"
                
                case icon = "icon"
                
                case link = "link"
                
            }

            public init(icon: String?, link: String?, title: String?) {
                
                self.title = title
                
                self.icon = icon
                
                self.link = link
                
            }

            public func duplicate() -> InstagramLink {
                let dict = self.dictionary!
                let copy = InstagramLink(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    icon = try container.decode(String.self, forKey: .icon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    link = try container.decode(String.self, forKey: .link)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(icon, forKey: .icon)
                
                
                
                
                try? container.encodeIfPresent(link, forKey: .link)
                
                
            }
            
        }
        
        /*
            Model: TwitterLink
            Used By: Configuration
        */
        class TwitterLink: Codable {
            
            public var title: String?
            
            public var icon: String?
            
            public var link: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case title = "title"
                
                case icon = "icon"
                
                case link = "link"
                
            }

            public init(icon: String?, link: String?, title: String?) {
                
                self.title = title
                
                self.icon = icon
                
                self.link = link
                
            }

            public func duplicate() -> TwitterLink {
                let dict = self.dictionary!
                let copy = TwitterLink(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    icon = try container.decode(String.self, forKey: .icon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    link = try container.decode(String.self, forKey: .link)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(icon, forKey: .icon)
                
                
                
                
                try? container.encodeIfPresent(link, forKey: .link)
                
                
            }
            
        }
        
        /*
            Model: PinterestLink
            Used By: Configuration
        */
        class PinterestLink: Codable {
            
            public var title: String?
            
            public var icon: String?
            
            public var link: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case title = "title"
                
                case icon = "icon"
                
                case link = "link"
                
            }

            public init(icon: String?, link: String?, title: String?) {
                
                self.title = title
                
                self.icon = icon
                
                self.link = link
                
            }

            public func duplicate() -> PinterestLink {
                let dict = self.dictionary!
                let copy = PinterestLink(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    icon = try container.decode(String.self, forKey: .icon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    link = try container.decode(String.self, forKey: .link)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(icon, forKey: .icon)
                
                
                
                
                try? container.encodeIfPresent(link, forKey: .link)
                
                
            }
            
        }
        
        /*
            Model: GooglePlusLink
            Used By: Configuration
        */
        class GooglePlusLink: Codable {
            
            public var title: String?
            
            public var icon: String?
            
            public var link: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case title = "title"
                
                case icon = "icon"
                
                case link = "link"
                
            }

            public init(icon: String?, link: String?, title: String?) {
                
                self.title = title
                
                self.icon = icon
                
                self.link = link
                
            }

            public func duplicate() -> GooglePlusLink {
                let dict = self.dictionary!
                let copy = GooglePlusLink(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    icon = try container.decode(String.self, forKey: .icon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    link = try container.decode(String.self, forKey: .link)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(icon, forKey: .icon)
                
                
                
                
                try? container.encodeIfPresent(link, forKey: .link)
                
                
            }
            
        }
        
        /*
            Model: YoutubeLink
            Used By: Configuration
        */
        class YoutubeLink: Codable {
            
            public var title: String?
            
            public var icon: String?
            
            public var link: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case title = "title"
                
                case icon = "icon"
                
                case link = "link"
                
            }

            public init(icon: String?, link: String?, title: String?) {
                
                self.title = title
                
                self.icon = icon
                
                self.link = link
                
            }

            public func duplicate() -> YoutubeLink {
                let dict = self.dictionary!
                let copy = YoutubeLink(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    icon = try container.decode(String.self, forKey: .icon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    link = try container.decode(String.self, forKey: .link)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(icon, forKey: .icon)
                
                
                
                
                try? container.encodeIfPresent(link, forKey: .link)
                
                
            }
            
        }
        
        /*
            Model: LinkedInLink
            Used By: Configuration
        */
        class LinkedInLink: Codable {
            
            public var title: String?
            
            public var icon: String?
            
            public var link: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case title = "title"
                
                case icon = "icon"
                
                case link = "link"
                
            }

            public init(icon: String?, link: String?, title: String?) {
                
                self.title = title
                
                self.icon = icon
                
                self.link = link
                
            }

            public func duplicate() -> LinkedInLink {
                let dict = self.dictionary!
                let copy = LinkedInLink(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    icon = try container.decode(String.self, forKey: .icon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    link = try container.decode(String.self, forKey: .link)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(icon, forKey: .icon)
                
                
                
                
                try? container.encodeIfPresent(link, forKey: .link)
                
                
            }
            
        }
        
        /*
            Model: VimeoLink
            Used By: Configuration
        */
        class VimeoLink: Codable {
            
            public var title: String?
            
            public var icon: String?
            
            public var link: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case title = "title"
                
                case icon = "icon"
                
                case link = "link"
                
            }

            public init(icon: String?, link: String?, title: String?) {
                
                self.title = title
                
                self.icon = icon
                
                self.link = link
                
            }

            public func duplicate() -> VimeoLink {
                let dict = self.dictionary!
                let copy = VimeoLink(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    icon = try container.decode(String.self, forKey: .icon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    link = try container.decode(String.self, forKey: .link)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(icon, forKey: .icon)
                
                
                
                
                try? container.encodeIfPresent(link, forKey: .link)
                
                
            }
            
        }
        
        /*
            Model: BlogLink
            Used By: Configuration
        */
        class BlogLink: Codable {
            
            public var title: String?
            
            public var icon: String?
            
            public var link: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case title = "title"
                
                case icon = "icon"
                
                case link = "link"
                
            }

            public init(icon: String?, link: String?, title: String?) {
                
                self.title = title
                
                self.icon = icon
                
                self.link = link
                
            }

            public func duplicate() -> BlogLink {
                let dict = self.dictionary!
                let copy = BlogLink(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    icon = try container.decode(String.self, forKey: .icon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    link = try container.decode(String.self, forKey: .link)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(icon, forKey: .icon)
                
                
                
                
                try? container.encodeIfPresent(link, forKey: .link)
                
                
            }
            
        }
        
        /*
            Model: Links
            Used By: Configuration
        */
        class Links: Codable {
            
            public var title: String?
            
            public var link: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case title = "title"
                
                case link = "link"
                
            }

            public init(link: String?, title: String?) {
                
                self.title = title
                
                self.link = link
                
            }

            public func duplicate() -> Links {
                let dict = self.dictionary!
                let copy = Links(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    link = try container.decode(String.self, forKey: .link)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(link, forKey: .link)
                
                
            }
            
        }
        
        /*
            Model: BusinessHighlights
            Used By: Configuration
        */
        class BusinessHighlights: Codable {
            
            public var id: String?
            
            public var title: String?
            
            public var icon: String?
            
            public var subTitle: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "_id"
                
                case title = "title"
                
                case icon = "icon"
                
                case subTitle = "sub_title"
                
            }

            public init(icon: String?, subTitle: String?, title: String?, id: String?) {
                
                self.id = id
                
                self.title = title
                
                self.icon = icon
                
                self.subTitle = subTitle
                
            }

            public func duplicate() -> BusinessHighlights {
                let dict = self.dictionary!
                let copy = BusinessHighlights(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    title = try container.decode(String.self, forKey: .title)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    icon = try container.decode(String.self, forKey: .icon)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    subTitle = try container.decode(String.self, forKey: .subTitle)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(title, forKey: .title)
                
                
                
                
                try? container.encodeIfPresent(icon, forKey: .icon)
                
                
                
                
                try? container.encodeIfPresent(subTitle, forKey: .subTitle)
                
                
            }
            
        }
        
        /*
            Model: ApplicationDetail
            Used By: Configuration
        */
        class ApplicationDetail: Codable {
            
            public var name: String
            
            public var description: String
            
            public var logo: SecureUrl
            
            public var mobileLogo: SecureUrl
            
            public var favicon: SecureUrl
            
            public var banner: SecureUrl
            
            public var domain: Domain?
            
            public var domains: [Domain]?
            
            public var id: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case name = "name"
                
                case description = "description"
                
                case logo = "logo"
                
                case mobileLogo = "mobile_logo"
                
                case favicon = "favicon"
                
                case banner = "banner"
                
                case domain = "domain"
                
                case domains = "domains"
                
                case id = "_id"
                
            }

            public init(banner: SecureUrl, description: String, domain: Domain?, domains: [Domain]?, favicon: SecureUrl, logo: SecureUrl, mobileLogo: SecureUrl, name: String, id: String?) {
                
                self.name = name
                
                self.description = description
                
                self.logo = logo
                
                self.mobileLogo = mobileLogo
                
                self.favicon = favicon
                
                self.banner = banner
                
                self.domain = domain
                
                self.domains = domains
                
                self.id = id
                
            }

            public func duplicate() -> ApplicationDetail {
                let dict = self.dictionary!
                let copy = ApplicationDetail(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                name = try container.decode(String.self, forKey: .name)
                
                
                
                
                description = try container.decode(String.self, forKey: .description)
                
                
                
                
                logo = try container.decode(SecureUrl.self, forKey: .logo)
                
                
                
                
                mobileLogo = try container.decode(SecureUrl.self, forKey: .mobileLogo)
                
                
                
                
                favicon = try container.decode(SecureUrl.self, forKey: .favicon)
                
                
                
                
                banner = try container.decode(SecureUrl.self, forKey: .banner)
                
                
                
                
                do {
                    domain = try container.decode(Domain.self, forKey: .domain)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    domains = try container.decode([Domain].self, forKey: .domains)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(description, forKey: .description)
                
                
                
                
                try? container.encodeIfPresent(logo, forKey: .logo)
                
                
                
                
                try? container.encodeIfPresent(mobileLogo, forKey: .mobileLogo)
                
                
                
                
                try? container.encodeIfPresent(favicon, forKey: .favicon)
                
                
                
                
                try? container.encodeIfPresent(banner, forKey: .banner)
                
                
                
                
                try? container.encodeIfPresent(domain, forKey: .domain)
                
                
                
                
                try? container.encodeIfPresent(domains, forKey: .domains)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
            }
            
        }
        
        /*
            Model: CurrenciesResponse
            Used By: Configuration
        */
        class CurrenciesResponse: Codable {
            
            public var items: [Currency]?
            

            public enum CodingKeys: String, CodingKey {
                
                case items = "items"
                
            }

            public init(items: [Currency]?) {
                
                self.items = items
                
            }

            public func duplicate() -> CurrenciesResponse {
                let dict = self.dictionary!
                let copy = CurrenciesResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    items = try container.decode([Currency].self, forKey: .items)
                
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
            Model: DefaultCurrency
            Used By: Configuration
        */
        class DefaultCurrency: Codable {
            
            public var ref: String?
            
            public var code: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case ref = "ref"
                
                case code = "code"
                
            }

            public init(code: String?, ref: String?) {
                
                self.ref = ref
                
                self.code = code
                
            }

            public func duplicate() -> DefaultCurrency {
                let dict = self.dictionary!
                let copy = DefaultCurrency(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    ref = try container.decode(String.self, forKey: .ref)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
                
                
                
                try? container.encodeIfPresent(ref, forKey: .ref)
                
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
            }
            
        }
        
        /*
            Model: AppCurrencyResponse
            Used By: Configuration
        */
        class AppCurrencyResponse: Codable {
            
            public var application: String?
            
            public var defaultCurrency: DefaultCurrency?
            
            public var supportedCurrency: [Currency]?
            

            public enum CodingKeys: String, CodingKey {
                
                case application = "application"
                
                case defaultCurrency = "default_currency"
                
                case supportedCurrency = "supported_currency"
                
            }

            public init(application: String?, defaultCurrency: DefaultCurrency?, supportedCurrency: [Currency]?) {
                
                self.application = application
                
                self.defaultCurrency = defaultCurrency
                
                self.supportedCurrency = supportedCurrency
                
            }

            public func duplicate() -> AppCurrencyResponse {
                let dict = self.dictionary!
                let copy = AppCurrencyResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    application = try container.decode(String.self, forKey: .application)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    defaultCurrency = try container.decode(DefaultCurrency.self, forKey: .defaultCurrency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    supportedCurrency = try container.decode([Currency].self, forKey: .supportedCurrency)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(application, forKey: .application)
                
                
                
                
                try? container.encodeIfPresent(defaultCurrency, forKey: .defaultCurrency)
                
                
                
                
                try? container.encodeIfPresent(supportedCurrency, forKey: .supportedCurrency)
                
                
            }
            
        }
        
        /*
            Model: StoreLatLong
            Used By: Configuration
        */
        class StoreLatLong: Codable {
            
            public var type: String?
            
            public var coordinates: [Double]?
            

            public enum CodingKeys: String, CodingKey {
                
                case type = "type"
                
                case coordinates = "coordinates"
                
            }

            public init(coordinates: [Double]?, type: String?) {
                
                self.type = type
                
                self.coordinates = coordinates
                
            }

            public func duplicate() -> StoreLatLong {
                let dict = self.dictionary!
                let copy = StoreLatLong(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    coordinates = try container.decode([Double].self, forKey: .coordinates)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(coordinates, forKey: .coordinates)
                
                
            }
            
        }
        
        /*
            Model: OptedStoreAddress
            Used By: Configuration
        */
        class OptedStoreAddress: Codable {
            
            public var state: String?
            
            public var address1: String?
            
            public var latLong: StoreLatLong?
            
            public var address2: String?
            
            public var pincode: Int?
            
            public var country: String?
            
            public var city: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case state = "state"
                
                case address1 = "address1"
                
                case latLong = "lat_long"
                
                case address2 = "address2"
                
                case pincode = "pincode"
                
                case country = "country"
                
                case city = "city"
                
            }

            public init(address1: String?, address2: String?, city: String?, country: String?, latLong: StoreLatLong?, pincode: Int?, state: String?) {
                
                self.state = state
                
                self.address1 = address1
                
                self.latLong = latLong
                
                self.address2 = address2
                
                self.pincode = pincode
                
                self.country = country
                
                self.city = city
                
            }

            public func duplicate() -> OptedStoreAddress {
                let dict = self.dictionary!
                let copy = OptedStoreAddress(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    state = try container.decode(String.self, forKey: .state)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    address1 = try container.decode(String.self, forKey: .address1)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    latLong = try container.decode(StoreLatLong.self, forKey: .latLong)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    address2 = try container.decode(String.self, forKey: .address2)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pincode = try container.decode(Int.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    country = try container.decode(String.self, forKey: .country)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    city = try container.decode(String.self, forKey: .city)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(state, forKey: .state)
                
                
                
                
                try? container.encodeIfPresent(address1, forKey: .address1)
                
                
                
                
                try? container.encodeIfPresent(latLong, forKey: .latLong)
                
                
                
                
                try? container.encodeIfPresent(address2, forKey: .address2)
                
                
                
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                
                
                
                try? container.encodeIfPresent(country, forKey: .country)
                
                
                
                
                try? container.encodeIfPresent(city, forKey: .city)
                
                
            }
            
        }
        
        /*
            Model: OrderingStore
            Used By: Configuration
        */
        class OrderingStore: Codable {
            
            public var address: OptedStoreAddress?
            
            public var id: String?
            
            public var uid: Int?
            
            public var name: String?
            
            public var displayName: String?
            
            public var storeType: String?
            
            public var storeCode: String?
            
            public var pincode: Int?
            
            public var code: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case address = "address"
                
                case id = "_id"
                
                case uid = "uid"
                
                case name = "name"
                
                case displayName = "display_name"
                
                case storeType = "store_type"
                
                case storeCode = "store_code"
                
                case pincode = "pincode"
                
                case code = "code"
                
            }

            public init(address: OptedStoreAddress?, code: String?, displayName: String?, name: String?, pincode: Int?, storeCode: String?, storeType: String?, uid: Int?, id: String?) {
                
                self.address = address
                
                self.id = id
                
                self.uid = uid
                
                self.name = name
                
                self.displayName = displayName
                
                self.storeType = storeType
                
                self.storeCode = storeCode
                
                self.pincode = pincode
                
                self.code = code
                
            }

            public func duplicate() -> OrderingStore {
                let dict = self.dictionary!
                let copy = OrderingStore(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    address = try container.decode(OptedStoreAddress.self, forKey: .address)
                
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
                    uid = try container.decode(Int.self, forKey: .uid)
                
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    storeType = try container.decode(String.self, forKey: .storeType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    storeCode = try container.decode(String.self, forKey: .storeCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pincode = try container.decode(Int.self, forKey: .pincode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
                
                
                
                try? container.encodeIfPresent(address, forKey: .address)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(uid, forKey: .uid)
                
                
                
                
                try? container.encodeIfPresent(name, forKey: .name)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
                
                
                try? container.encodeIfPresent(storeType, forKey: .storeType)
                
                
                
                
                try? container.encodeIfPresent(storeCode, forKey: .storeCode)
                
                
                
                
                try? container.encodeIfPresent(pincode, forKey: .pincode)
                
                
                
                
                try? container.encodeIfPresent(code, forKey: .code)
                
                
            }
            
        }
        
        /*
            Model: OrderingStores
            Used By: Configuration
        */
        class OrderingStores: Codable {
            
            public var page: Page?
            
            public var items: [OrderingStore]?
            
            public var deployedStores: [Int]?
            
            public var allStores: Bool?
            
            public var enabled: Bool?
            
            public var type: String?
            
            public var id: String?
            
            public var app: String?
            
            public var v: Int?
            

            public enum CodingKeys: String, CodingKey {
                
                case page = "page"
                
                case items = "items"
                
                case deployedStores = "deployed_stores"
                
                case allStores = "all_stores"
                
                case enabled = "enabled"
                
                case type = "type"
                
                case id = "_id"
                
                case app = "app"
                
                case v = "__v"
                
            }

            public init(allStores: Bool?, app: String?, deployedStores: [Int]?, enabled: Bool?, items: [OrderingStore]?, page: Page?, type: String?, id: String?, v: Int?) {
                
                self.page = page
                
                self.items = items
                
                self.deployedStores = deployedStores
                
                self.allStores = allStores
                
                self.enabled = enabled
                
                self.type = type
                
                self.id = id
                
                self.app = app
                
                self.v = v
                
            }

            public func duplicate() -> OrderingStores {
                let dict = self.dictionary!
                let copy = OrderingStores(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([OrderingStore].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    deployedStores = try container.decode([Int].self, forKey: .deployedStores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    allStores = try container.decode(Bool.self, forKey: .allStores)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    type = try container.decode(String.self, forKey: .type)
                
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
                    app = try container.decode(String.self, forKey: .app)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    v = try container.decode(Int.self, forKey: .v)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
                
                
                try? container.encodeIfPresent(deployedStores, forKey: .deployedStores)
                
                
                
                
                try? container.encodeIfPresent(allStores, forKey: .allStores)
                
                
                
                
                try? container.encodeIfPresent(enabled, forKey: .enabled)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(app, forKey: .app)
                
                
                
                
                try? container.encodeIfPresent(v, forKey: .v)
                
                
            }
            
        }
        
        /*
            Model: OrderingStoresResponse
            Used By: Configuration
        */
        class OrderingStoresResponse: Codable {
            
            public var page: Page?
            
            public var items: [OrderingStore]?
            

            public enum CodingKeys: String, CodingKey {
                
                case page = "page"
                
                case items = "items"
                
            }

            public init(items: [OrderingStore]?, page: Page?) {
                
                self.page = page
                
                self.items = items
                
            }

            public func duplicate() -> OrderingStoresResponse {
                let dict = self.dictionary!
                let copy = OrderingStoresResponse(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    page = try container.decode(Page.self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    items = try container.decode([OrderingStore].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(page, forKey: .page)
                
                
                
                
                try? container.encodeIfPresent(items, forKey: .items)
                
                
            }
            
        }
        
}
