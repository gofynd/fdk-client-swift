

import Foundation
public extension PlatformClient {
    /*
        Model: GiveawayAudience
        Used By: Rewards
    */

    class GiveawayAudience: Codable {
        
        
        public var audienceId: String?
        
        public var currentCount: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case audienceId = "audience_id"
            
            case currentCount = "current_count"
            
        }

        public init(audienceId: String? = nil, currentCount: Double? = nil) {
            
            self.audienceId = audienceId
            
            self.currentCount = currentCount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    audienceId = try container.decode(String.self, forKey: .audienceId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    currentCount = try container.decode(Double.self, forKey: .currentCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(audienceId, forKey: .audienceId)
            
            
            
            
            try? container.encodeIfPresent(currentCount, forKey: .currentCount)
            
            
        }
        
    }
}
