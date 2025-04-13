

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: SendInstantResponse
        Used By: Communication
    */

    class SendInstantResponse: Codable {
        
        
        public var success: Bool?
        
        public var provider: String?
        
        public var response: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case provider = "provider"
            
            case response = "response"
            
        }

        public init(provider: String? = nil, response: Bool? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.provider = provider
            
            self.response = response
            
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
                
            
            
                do {
                    provider = try container.decode(String.self, forKey: .provider)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    response = try container.decode(Bool.self, forKey: .response)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(provider, forKey: .provider)
            
            
            
            
            try? container.encodeIfPresent(response, forKey: .response)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: SendInstantResponse
        Used By: Communication
    */

    class SendInstantResponse: Codable {
        
        
        public var success: Bool?
        
        public var provider: String?
        
        public var response: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case provider = "provider"
            
            case response = "response"
            
        }

        public init(provider: String? = nil, response: Bool? = nil, success: Bool? = nil) {
            
            self.success = success
            
            self.provider = provider
            
            self.response = response
            
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
                
            
            
                do {
                    provider = try container.decode(String.self, forKey: .provider)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    response = try container.decode(Bool.self, forKey: .response)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(provider, forKey: .provider)
            
            
            
            
            try? container.encodeIfPresent(response, forKey: .response)
            
            
        }
        
    }
}


