

import Foundation
public extension PublicClient.Billing {
    /*
        Model: FeatureConfig
        Used By: Billing
    */

    class FeatureConfig: Codable {
        
        
        public var enabled: Bool?
        
        public var limit: Int?
        
        public var hardLimit: Int?
        
        public var softLimit: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case enabled = "enabled"
            
            case limit = "limit"
            
            case hardLimit = "hard_limit"
            
            case softLimit = "soft_limit"
            
        }

        public init(enabled: Bool? = nil, hardLimit: Int? = nil, limit: Int? = nil, softLimit: Int? = nil) {
            
            self.enabled = enabled
            
            self.limit = limit
            
            self.hardLimit = hardLimit
            
            self.softLimit = softLimit
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    enabled = try container.decode(Bool.self, forKey: .enabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    limit = try container.decode(Int.self, forKey: .limit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    hardLimit = try container.decode(Int.self, forKey: .hardLimit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    softLimit = try container.decode(Int.self, forKey: .softLimit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(enabled, forKey: .enabled)
            
            
            
            try? container.encodeIfPresent(limit, forKey: .limit)
            
            
            
            try? container.encodeIfPresent(hardLimit, forKey: .hardLimit)
            
            
            
            try? container.encodeIfPresent(softLimit, forKey: .softLimit)
            
            
        }
        
    }
}
