

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RefundStates
        Used By: Order
    */

    class RefundStates: Codable {
        
        
        public var state: String?
        
        public var displayName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case state = "state"
            
            case displayName = "display_name"
            
        }

        public init(displayName: String? = nil, state: String? = nil) {
            
            self.state = state
            
            self.displayName = displayName
            
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: RefundStates
        Used By: Order
    */

    class RefundStates: Codable {
        
        
        public var state: String?
        
        public var displayName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case state = "state"
            
            case displayName = "display_name"
            
        }

        public init(displayName: String? = nil, state: String? = nil) {
            
            self.state = state
            
            self.displayName = displayName
            
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
                    displayName = try container.decode(String.self, forKey: .displayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(state, forKey: .state)
            
            
            
            
            try? container.encodeIfPresent(displayName, forKey: .displayName)
            
            
        }
        
    }
}


