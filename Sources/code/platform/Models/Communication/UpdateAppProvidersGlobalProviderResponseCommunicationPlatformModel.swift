

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: UpdateAppProvidersGlobalProviderResponse
        Used By: Communication
    */

    class UpdateAppProvidersGlobalProviderResponse: Codable {
        
        
        public var email: UpdateAppProvidersGlobalProviderResponseEmailSmsObj?
        
        public var sms: UpdateAppProvidersGlobalProviderResponseEmailSmsObj?
        
        public var id: String?
        
        public var slug: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case sms = "sms"
            
            case id = "_id"
            
            case slug = "slug"
            
        }

        public init(email: UpdateAppProvidersGlobalProviderResponseEmailSmsObj? = nil, slug: String? = nil, sms: UpdateAppProvidersGlobalProviderResponseEmailSmsObj? = nil, id: String? = nil) {
            
            self.email = email
            
            self.sms = sms
            
            self.id = id
            
            self.slug = slug
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    email = try container.decode(UpdateAppProvidersGlobalProviderResponseEmailSmsObj.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sms = try container.decode(UpdateAppProvidersGlobalProviderResponseEmailSmsObj.self, forKey: .sms)
                
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
                    slug = try container.decode(String.self, forKey: .slug)
                
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
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: UpdateAppProvidersGlobalProviderResponse
        Used By: Communication
    */

    class UpdateAppProvidersGlobalProviderResponse: Codable {
        
        
        public var email: UpdateAppProvidersGlobalProviderResponseEmailSmsObj?
        
        public var sms: UpdateAppProvidersGlobalProviderResponseEmailSmsObj?
        
        public var id: String?
        
        public var slug: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case email = "email"
            
            case sms = "sms"
            
            case id = "_id"
            
            case slug = "slug"
            
        }

        public init(email: UpdateAppProvidersGlobalProviderResponseEmailSmsObj? = nil, slug: String? = nil, sms: UpdateAppProvidersGlobalProviderResponseEmailSmsObj? = nil, id: String? = nil) {
            
            self.email = email
            
            self.sms = sms
            
            self.id = id
            
            self.slug = slug
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    email = try container.decode(UpdateAppProvidersGlobalProviderResponseEmailSmsObj.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sms = try container.decode(UpdateAppProvidersGlobalProviderResponseEmailSmsObj.self, forKey: .sms)
                
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
                    slug = try container.decode(String.self, forKey: .slug)
                
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
            
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(slug, forKey: .slug)
            
            
        }
        
    }
}


