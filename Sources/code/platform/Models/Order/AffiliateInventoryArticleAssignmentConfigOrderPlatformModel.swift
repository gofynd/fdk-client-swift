

import Foundation


public extension PlatformClient.Order {
    /*
        Model: AffiliateInventoryArticleAssignmentConfig
        Used By: Order
    */

    class AffiliateInventoryArticleAssignmentConfig: Codable {
        
        
        public var postOrderReassignment: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case postOrderReassignment = "post_order_reassignment"
            
        }

        public init(postOrderReassignment: Bool? = nil) {
            
            self.postOrderReassignment = postOrderReassignment
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    postOrderReassignment = try container.decode(Bool.self, forKey: .postOrderReassignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(postOrderReassignment, forKey: .postOrderReassignment)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: AffiliateInventoryArticleAssignmentConfig
        Used By: Order
    */

    class AffiliateInventoryArticleAssignmentConfig: Codable {
        
        
        public var postOrderReassignment: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case postOrderReassignment = "post_order_reassignment"
            
        }

        public init(postOrderReassignment: Bool? = nil) {
            
            self.postOrderReassignment = postOrderReassignment
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    postOrderReassignment = try container.decode(Bool.self, forKey: .postOrderReassignment)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(postOrderReassignment, forKey: .postOrderReassignment)
            
            
        }
        
    }
}


