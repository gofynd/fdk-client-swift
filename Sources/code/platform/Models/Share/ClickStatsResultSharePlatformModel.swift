

import Foundation




public extension PlatformClient.ApplicationClient.Share {
    /*
        Model: ClickStatsResult
        Used By: Share
    */

    class ClickStatsResult: Codable {
        
        
        public var clickStats: [ClickStatsItem]
        

        public enum CodingKeys: String, CodingKey {
            
            case clickStats = "click_stats"
            
        }

        public init(clickStats: [ClickStatsItem]) {
            
            self.clickStats = clickStats
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                clickStats = try container.decode([ClickStatsItem].self, forKey: .clickStats)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(clickStats, forKey: .clickStats)
            
            
        }
        
    }
}


