

import Foundation


public extension PlatformClient.Order {
    /*
        Model: RuleLaneConfigErrorResponse
        Used By: Order
    */

    class RuleLaneConfigErrorResponse: Codable {
        
        
        public var response: RuleLaneConfigResponseSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case response = "response"
            
        }

        public init(response: RuleLaneConfigResponseSchema? = nil) {
            
            self.response = response
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    response = try container.decode(RuleLaneConfigResponseSchema.self, forKey: .response)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(response, forKey: .response)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: RuleLaneConfigErrorResponse
        Used By: Order
    */

    class RuleLaneConfigErrorResponse: Codable {
        
        
        public var response: RuleLaneConfigResponseSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case response = "response"
            
        }

        public init(response: RuleLaneConfigResponseSchema? = nil) {
            
            self.response = response
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    response = try container.decode(RuleLaneConfigResponseSchema.self, forKey: .response)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(response, forKey: .response)
            
            
        }
        
    }
}


