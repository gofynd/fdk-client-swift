

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: GetAffiliateResponse
        Used By: Finance
    */

    class GetAffiliateResponse: Codable {
        
        
        public var reason: String?
        
        public var success: Bool?
        
        public var docs: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case reason = "reason"
            
            case success = "success"
            
            case docs = "docs"
            
        }

        public init(docs: [[String: Any]]? = nil, reason: String? = nil, success: Bool? = nil) {
            
            self.reason = reason
            
            self.success = success
            
            self.docs = docs
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    reason = try container.decode(String.self, forKey: .reason)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    docs = try container.decode([[String: Any]].self, forKey: .docs)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(reason, forKey: .reason)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(docs, forKey: .docs)
            
            
        }
        
    }
}




