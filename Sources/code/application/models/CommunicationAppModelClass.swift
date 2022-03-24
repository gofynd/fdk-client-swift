import Foundation


import Foundation
public extension ApplicationClient {
  
        /*
            Model: CommunicationConsentReq
            Used By: Communication
        */
        class CommunicationConsentReq: Codable {
            
            public var response: String?
            
            public var action: String?
            
            public var channel: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case response = "response"
                
                case action = "action"
                
                case channel = "channel"
                
            }

            public init(action: String? = nil, channel: String? = nil, response: String? = nil) {
                
                self.response = response
                
                self.action = action
                
                self.channel = channel
                
            }

            public func duplicate() -> CommunicationConsentReq {
                let dict = self.dictionary!
                let copy = CommunicationConsentReq(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    response = try container.decode(String.self, forKey: .response)
                
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
                    channel = try container.decode(String.self, forKey: .channel)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(response, forKey: .response)
                
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(channel, forKey: .channel)
                
                
            }
            
        }
        
        /*
            Model: CommunicationConsentRes
            Used By: Communication
        */
        class CommunicationConsentRes: Codable {
            
            public var appId: String?
            
            public var userId: String?
            
            public var channels: CommunicationConsentChannels?
            

            public enum CodingKeys: String, CodingKey {
                
                case appId = "app_id"
                
                case userId = "user_id"
                
                case channels = "channels"
                
            }

            public init(appId: String? = nil, channels: CommunicationConsentChannels? = nil, userId: String? = nil) {
                
                self.appId = appId
                
                self.userId = userId
                
                self.channels = channels
                
            }

            public func duplicate() -> CommunicationConsentRes {
                let dict = self.dictionary!
                let copy = CommunicationConsentRes(dictionary: dict)!
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
                
                
                
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    channels = try container.decode(CommunicationConsentChannels.self, forKey: .channels)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(appId, forKey: .appId)
                
                
                
                
                try? container.encodeIfPresent(userId, forKey: .userId)
                
                
                
                
                try? container.encodeIfPresent(channels, forKey: .channels)
                
                
            }
            
        }
        
        /*
            Model: CommunicationConsentChannelsEmail
            Used By: Communication
        */
        class CommunicationConsentChannelsEmail: Codable {
            
            public var response: String?
            
            public var displayName: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case response = "response"
                
                case displayName = "display_name"
                
            }

            public init(displayName: String? = nil, response: String? = nil) {
                
                self.response = response
                
                self.displayName = displayName
                
            }

            public func duplicate() -> CommunicationConsentChannelsEmail {
                let dict = self.dictionary!
                let copy = CommunicationConsentChannelsEmail(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    response = try container.decode(String.self, forKey: .response)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(response, forKey: .response)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
            }
            
        }
        
        /*
            Model: CommunicationConsentChannelsSms
            Used By: Communication
        */
        class CommunicationConsentChannelsSms: Codable {
            
            public var response: String?
            
            public var displayName: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case response = "response"
                
                case displayName = "display_name"
                
            }

            public init(displayName: String? = nil, response: String? = nil) {
                
                self.response = response
                
                self.displayName = displayName
                
            }

            public func duplicate() -> CommunicationConsentChannelsSms {
                let dict = self.dictionary!
                let copy = CommunicationConsentChannelsSms(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    response = try container.decode(String.self, forKey: .response)
                
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
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(response, forKey: .response)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
            }
            
        }
        
        /*
            Model: CommunicationConsentChannelsWhatsapp
            Used By: Communication
        */
        class CommunicationConsentChannelsWhatsapp: Codable {
            
            public var response: String?
            
            public var displayName: String?
            
            public var countryCode: String?
            
            public var phoneNumber: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case response = "response"
                
                case displayName = "display_name"
                
                case countryCode = "country_code"
                
                case phoneNumber = "phone_number"
                
            }

            public init(countryCode: String? = nil, displayName: String? = nil, phoneNumber: String? = nil, response: String? = nil) {
                
                self.response = response
                
                self.displayName = displayName
                
                self.countryCode = countryCode
                
                self.phoneNumber = phoneNumber
                
            }

            public func duplicate() -> CommunicationConsentChannelsWhatsapp {
                let dict = self.dictionary!
                let copy = CommunicationConsentChannelsWhatsapp(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    response = try container.decode(String.self, forKey: .response)
                
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
                    countryCode = try container.decode(String.self, forKey: .countryCode)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    phoneNumber = try container.decode(String.self, forKey: .phoneNumber)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(response, forKey: .response)
                
                
                
                
                try? container.encodeIfPresent(displayName, forKey: .displayName)
                
                
                
                
                try? container.encodeIfPresent(countryCode, forKey: .countryCode)
                
                
                
                
                try? container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
                
                
            }
            
        }
        
        /*
            Model: CommunicationConsentChannels
            Used By: Communication
        */
        class CommunicationConsentChannels: Codable {
            
            public var email: CommunicationConsentChannelsEmail?
            
            public var sms: CommunicationConsentChannelsSms?
            
            public var whatsapp: CommunicationConsentChannelsWhatsapp?
            

            public enum CodingKeys: String, CodingKey {
                
                case email = "email"
                
                case sms = "sms"
                
                case whatsapp = "whatsapp"
                
            }

            public init(email: CommunicationConsentChannelsEmail? = nil, sms: CommunicationConsentChannelsSms? = nil, whatsapp: CommunicationConsentChannelsWhatsapp? = nil) {
                
                self.email = email
                
                self.sms = sms
                
                self.whatsapp = whatsapp
                
            }

            public func duplicate() -> CommunicationConsentChannels {
                let dict = self.dictionary!
                let copy = CommunicationConsentChannels(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    email = try container.decode(CommunicationConsentChannelsEmail.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    sms = try container.decode(CommunicationConsentChannelsSms.self, forKey: .sms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    whatsapp = try container.decode(CommunicationConsentChannelsWhatsapp.self, forKey: .whatsapp)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(email, forKey: .email)
                
                
                
                
                try? container.encodeIfPresent(sms, forKey: .sms)
                
                
                
                
                try? container.encodeIfPresent(whatsapp, forKey: .whatsapp)
                
                
            }
            
        }
        
        /*
            Model: CommunicationConsent
            Used By: Communication
        */
        class CommunicationConsent: Codable {
            
            public var appId: String?
            
            public var userId: String?
            
            public var channels: CommunicationConsentChannels?
            

            public enum CodingKeys: String, CodingKey {
                
                case appId = "app_id"
                
                case userId = "user_id"
                
                case channels = "channels"
                
            }

            public init(appId: String? = nil, channels: CommunicationConsentChannels? = nil, userId: String? = nil) {
                
                self.appId = appId
                
                self.userId = userId
                
                self.channels = channels
                
            }

            public func duplicate() -> CommunicationConsent {
                let dict = self.dictionary!
                let copy = CommunicationConsent(dictionary: dict)!
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
                
                
                
                do {
                    userId = try container.decode(String.self, forKey: .userId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    channels = try container.decode(CommunicationConsentChannels.self, forKey: .channels)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(appId, forKey: .appId)
                
                
                
                
                try? container.encodeIfPresent(userId, forKey: .userId)
                
                
                
                
                try? container.encodeIfPresent(channels, forKey: .channels)
                
                
            }
            
        }
        
        /*
            Model: PushtokenReq
            Used By: Communication
        */
        class PushtokenReq: Codable {
            
            public var action: String?
            
            public var bundleIdentifier: String?
            
            public var pushToken: String?
            
            public var uniqueDeviceId: String?
            
            public var type: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case action = "action"
                
                case bundleIdentifier = "bundle_identifier"
                
                case pushToken = "push_token"
                
                case uniqueDeviceId = "unique_device_id"
                
                case type = "type"
                
            }

            public init(action: String? = nil, bundleIdentifier: String? = nil, pushToken: String? = nil, type: String? = nil, uniqueDeviceId: String? = nil) {
                
                self.action = action
                
                self.bundleIdentifier = bundleIdentifier
                
                self.pushToken = pushToken
                
                self.uniqueDeviceId = uniqueDeviceId
                
                self.type = type
                
            }

            public func duplicate() -> PushtokenReq {
                let dict = self.dictionary!
                let copy = PushtokenReq(dictionary: dict)!
                return copy
            }

            required public init(from decoder: Decoder) throws {
                let container = try decoder.container(keyedBy: CodingKeys.self)
                
                
                do {
                    action = try container.decode(String.self, forKey: .action)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    bundleIdentifier = try container.decode(String.self, forKey: .bundleIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pushToken = try container.decode(String.self, forKey: .pushToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uniqueDeviceId = try container.decode(String.self, forKey: .uniqueDeviceId)
                
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
                
                
                
                try? container.encodeIfPresent(action, forKey: .action)
                
                
                
                
                try? container.encodeIfPresent(bundleIdentifier, forKey: .bundleIdentifier)
                
                
                
                
                try? container.encodeIfPresent(pushToken, forKey: .pushToken)
                
                
                
                
                try? container.encodeIfPresent(uniqueDeviceId, forKey: .uniqueDeviceId)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
            }
            
        }
        
        /*
            Model: PushtokenRes
            Used By: Communication
        */
        class PushtokenRes: Codable {
            
            public var id: String?
            
            public var bundleIdentifier: String?
            
            public var pushToken: String?
            
            public var uniqueDeviceId: String?
            
            public var type: String?
            
            public var platform: String?
            
            public var applicationId: String?
            
            public var userId: String?
            
            public var createdAt: String?
            
            public var updatedAt: String?
            
            public var expiredAt: String?
            

            public enum CodingKeys: String, CodingKey {
                
                case id = "_id"
                
                case bundleIdentifier = "bundle_identifier"
                
                case pushToken = "push_token"
                
                case uniqueDeviceId = "unique_device_id"
                
                case type = "type"
                
                case platform = "platform"
                
                case applicationId = "application_id"
                
                case userId = "user_id"
                
                case createdAt = "created_at"
                
                case updatedAt = "updated_at"
                
                case expiredAt = "expired_at"
                
            }

            public init(applicationId: String? = nil, bundleIdentifier: String? = nil, createdAt: String? = nil, expiredAt: String? = nil, platform: String? = nil, pushToken: String? = nil, type: String? = nil, uniqueDeviceId: String? = nil, updatedAt: String? = nil, userId: String? = nil, id: String? = nil) {
                
                self.id = id
                
                self.bundleIdentifier = bundleIdentifier
                
                self.pushToken = pushToken
                
                self.uniqueDeviceId = uniqueDeviceId
                
                self.type = type
                
                self.platform = platform
                
                self.applicationId = applicationId
                
                self.userId = userId
                
                self.createdAt = createdAt
                
                self.updatedAt = updatedAt
                
                self.expiredAt = expiredAt
                
            }

            public func duplicate() -> PushtokenRes {
                let dict = self.dictionary!
                let copy = PushtokenRes(dictionary: dict)!
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
                    bundleIdentifier = try container.decode(String.self, forKey: .bundleIdentifier)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    pushToken = try container.decode(String.self, forKey: .pushToken)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
                do {
                    uniqueDeviceId = try container.decode(String.self, forKey: .uniqueDeviceId)
                
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
                    platform = try container.decode(String.self, forKey: .platform)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
                
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
                    expiredAt = try container.decode(String.self, forKey: .expiredAt)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
                
            }
            
            public func encode(to encoder: Encoder) throws {
                var container = encoder.container(keyedBy: CodingKeys.self)
                
                
                
                try? container.encodeIfPresent(id, forKey: .id)
                
                
                
                
                try? container.encodeIfPresent(bundleIdentifier, forKey: .bundleIdentifier)
                
                
                
                
                try? container.encodeIfPresent(pushToken, forKey: .pushToken)
                
                
                
                
                try? container.encodeIfPresent(uniqueDeviceId, forKey: .uniqueDeviceId)
                
                
                
                
                try? container.encodeIfPresent(type, forKey: .type)
                
                
                
                
                try? container.encodeIfPresent(platform, forKey: .platform)
                
                
                
                
                try? container.encodeIfPresent(applicationId, forKey: .applicationId)
                
                
                
                
                try? container.encodeIfPresent(userId, forKey: .userId)
                
                
                
                
                try? container.encodeIfPresent(createdAt, forKey: .createdAt)
                
                
                
                
                try? container.encodeIfPresent(updatedAt, forKey: .updatedAt)
                
                
                
                
                try? container.encodeIfPresent(expiredAt, forKey: .expiredAt)
                
                
            }
            
        }
        
}
