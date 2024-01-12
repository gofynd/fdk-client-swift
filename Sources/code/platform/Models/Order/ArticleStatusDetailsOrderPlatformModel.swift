

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ArticleStatusDetails
        Used By: Order
    */

    class ArticleStatusDetails: Codable {
        
        
        public var status: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
        }

        public init(status: [String: Any]? = nil) {
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode([String: Any].self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ArticleStatusDetails
        Used By: Order
    */

    class ArticleStatusDetails: Codable {
        
        
        public var status: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case status = "status"
            
        }

        public init(status: [String: Any]? = nil) {
            
            self.status = status
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    status = try container.decode([String: Any].self, forKey: .status)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(status, forKey: .status)
            
            
        }
        
    }
}


