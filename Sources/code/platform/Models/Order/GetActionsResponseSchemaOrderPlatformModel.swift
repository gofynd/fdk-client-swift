

import Foundation


public extension PlatformClient.Order {
    /*
        Model: GetActionsResponseSchema
        Used By: Order
    */

    class GetActionsResponseSchema: Codable {
        
        
        public var permissions: [ActionInfo]?
        

        public enum CodingKeys: String, CodingKey {
            
            case permissions = "permissions"
            
        }

        public init(permissions: [ActionInfo]? = nil) {
            
            self.permissions = permissions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    permissions = try container.decode([ActionInfo].self, forKey: .permissions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(permissions, forKey: .permissions)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: GetActionsResponseSchema
        Used By: Order
    */

    class GetActionsResponseSchema: Codable {
        
        
        public var permissions: [ActionInfo]?
        

        public enum CodingKeys: String, CodingKey {
            
            case permissions = "permissions"
            
        }

        public init(permissions: [ActionInfo]? = nil) {
            
            self.permissions = permissions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    permissions = try container.decode([ActionInfo].self, forKey: .permissions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(permissions, forKey: .permissions)
            
            
        }
        
    }
}


