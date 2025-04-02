

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: SendSyncRequest
        Used By: Communication
    */

    class SendSyncRequest: Codable {
        
        
        public var data: [SendSyncData]?
        
        public var email: PayloadEmailStructure?
        
        public var sms: PayloadSmsStructure?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case email = "email"
            
            case sms = "sms"
            
        }

        public init(data: [SendSyncData]? = nil, email: PayloadEmailStructure? = nil, sms: PayloadSmsStructure? = nil) {
            
            self.data = data
            
            self.email = email
            
            self.sms = sms
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode([SendSyncData].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    email = try container.decode(PayloadEmailStructure.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sms = try container.decode(PayloadSmsStructure.self, forKey: .sms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(sms, forKey: .sms)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: SendSyncRequest
        Used By: Communication
    */

    class SendSyncRequest: Codable {
        
        
        public var data: [SendSyncData]?
        
        public var email: PayloadEmailStructure?
        
        public var sms: PayloadSmsStructure?
        

        public enum CodingKeys: String, CodingKey {
            
            case data = "data"
            
            case email = "email"
            
            case sms = "sms"
            
        }

        public init(data: [SendSyncData]? = nil, email: PayloadEmailStructure? = nil, sms: PayloadSmsStructure? = nil) {
            
            self.data = data
            
            self.email = email
            
            self.sms = sms
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    data = try container.decode([SendSyncData].self, forKey: .data)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    email = try container.decode(PayloadEmailStructure.self, forKey: .email)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sms = try container.decode(PayloadSmsStructure.self, forKey: .sms)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(data, forKey: .data)
            
            
            
            
            try? container.encodeIfPresent(email, forKey: .email)
            
            
            
            
            try? container.encodeIfPresent(sms, forKey: .sms)
            
            
        }
        
    }
}


