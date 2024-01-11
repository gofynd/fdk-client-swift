

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: PlatformPaymentModeResponse
        Used By: Payment
    */

    class PlatformPaymentModeResponse: Codable {
        
        
        public var message: String?
        
        public var items: [[String: Any]]?
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case items = "items"
            
            case success = "success"
            
        }

        public init(items: [[String: Any]]? = nil, message: String? = nil, success: Bool) {
            
            self.message = message
            
            self.items = items
            
            self.success = success
            
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
                
            
            
                do {
                    items = try container.decode([[String: Any]].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(message, forKey: .message)
            
            
            
            
            try? container.encode(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: PlatformPaymentModeResponse
        Used By: Payment
    */

    class PlatformPaymentModeResponse: Codable {
        
        
        public var message: String?
        
        public var items: [[String: Any]]?
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case message = "message"
            
            case items = "items"
            
            case success = "success"
            
        }

        public init(items: [[String: Any]]? = nil, message: String? = nil, success: Bool) {
            
            self.message = message
            
            self.items = items
            
            self.success = success
            
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
                
            
            
                do {
                    items = try container.decode([[String: Any]].self, forKey: .items)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(message, forKey: .message)
            
            
            
            
            try? container.encode(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}


