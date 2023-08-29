

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: GlobalProviders
        Used By: Communication
    */

    class GlobalProviders: Codable {
        
        
        public var email: [GlobalProvidersResObj]?
        
        public var sms: [GlobalProvidersResObj]?
        
        public var voice: [GlobalProvidersResObj]?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case sms = "sms"
            
            case voice = "voice"
            
        }

        public init(email: [GlobalProvidersResObj]? = nil, sms: [GlobalProvidersResObj]? = nil, voice: [GlobalProvidersResObj]? = nil) {
            
            self.email = email
            
            self.sms = sms
            
            self.voice = voice
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    email = try container.decode([GlobalProvidersResObj].self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sms = try container.decode([GlobalProvidersResObj].self, forKey: .sms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    voice = try container.decode([GlobalProvidersResObj].self, forKey: .voice)
                
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
            
            
            
            
            try? container.encodeIfPresent(voice, forKey: .voice)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: GlobalProviders
        Used By: Communication
    */

    class GlobalProviders: Codable {
        
        
        public var email: [GlobalProvidersResObj]?
        
        public var sms: [GlobalProvidersResObj]?
        
        public var voice: [GlobalProvidersResObj]?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case sms = "sms"
            
            case voice = "voice"
            
        }

        public init(email: [GlobalProvidersResObj]? = nil, sms: [GlobalProvidersResObj]? = nil, voice: [GlobalProvidersResObj]? = nil) {
            
            self.email = email
            
            self.sms = sms
            
            self.voice = voice
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    email = try container.decode([GlobalProvidersResObj].self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sms = try container.decode([GlobalProvidersResObj].self, forKey: .sms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    voice = try container.decode([GlobalProvidersResObj].self, forKey: .voice)
                
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
            
            
            
            
            try? container.encodeIfPresent(voice, forKey: .voice)
            
            
        }
        
    }
}


