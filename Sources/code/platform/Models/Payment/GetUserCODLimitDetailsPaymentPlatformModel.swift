

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: GetUserCODLimitDetails
        Used By: Payment
    */

    class GetUserCODLimitDetails: Codable {
        
        
        public var items: [GetUserBULimitResponseSchema]
        
        public var success: Bool
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case success = "success"
            
            case message = "message"
            
        }

        public init(items: [GetUserBULimitResponseSchema], message: String? = nil, success: Bool) {
            
            self.items = items
            
            self.success = success
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([GetUserBULimitResponseSchema].self, forKey: .items)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: GetUserCODLimitDetails
        Used By: Payment
    */

    class GetUserCODLimitDetails: Codable {
        
        
        public var items: [GetUserBULimitResponseSchema]
        
        public var success: Bool
        
        public var message: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case items = "items"
            
            case success = "success"
            
            case message = "message"
            
        }

        public init(items: [GetUserBULimitResponseSchema], message: String? = nil, success: Bool) {
            
            self.items = items
            
            self.success = success
            
            self.message = message
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                items = try container.decode([GetUserBULimitResponseSchema].self, forKey: .items)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
            
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
            
            
            
            try? container.encodeIfPresent(items, forKey: .items)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(message, forKey: .message)
            
            
        }
        
    }
}


