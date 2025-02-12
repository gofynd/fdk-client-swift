

import Foundation


public extension PlatformClient.Billing {
    /*
        Model: PlanMeta
        Used By: Billing
    */

    class PlanMeta: Codable {
        
        
        public var sellerStatus: String?
        
        public var company: String?
        
        public var planPlatformDisplayName: String?
        
        public var tags: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case sellerStatus = "seller_status"
            
            case company = "company"
            
            case planPlatformDisplayName = "plan_platform_display_name"
            
            case tags = "tags"
            
        }

        public init(company: String? = nil, planPlatformDisplayName: String? = nil, sellerStatus: String? = nil, tags: [String]? = nil) {
            
            self.sellerStatus = sellerStatus
            
            self.company = company
            
            self.planPlatformDisplayName = planPlatformDisplayName
            
            self.tags = tags
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    sellerStatus = try container.decode(String.self, forKey: .sellerStatus)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    company = try container.decode(String.self, forKey: .company)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    planPlatformDisplayName = try container.decode(String.self, forKey: .planPlatformDisplayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    tags = try container.decode([String].self, forKey: .tags)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(sellerStatus, forKey: .sellerStatus)
            
            
            
            
            try? container.encodeIfPresent(company, forKey: .company)
            
            
            
            
            try? container.encodeIfPresent(planPlatformDisplayName, forKey: .planPlatformDisplayName)
            
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
        }
        
    }
}




