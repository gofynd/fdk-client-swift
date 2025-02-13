

import Foundation
public extension PublicClient.Billing {
    /*
        Model: PlanMeta
        Used By: Billing
    */

    class PlanMeta: Codable {
        
        
        public var planPlatformDisplayName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case planPlatformDisplayName = "plan_platform_display_name"
            
        }

        public init(planPlatformDisplayName: String? = nil) {
            
            self.planPlatformDisplayName = planPlatformDisplayName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    planPlatformDisplayName = try container.decode(String.self, forKey: .planPlatformDisplayName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(planPlatformDisplayName, forKey: .planPlatformDisplayName)
            
            
        }
        
    }
}
