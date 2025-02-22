

import Foundation


public extension PlatformClient.Payment {
    /*
        Model: EdcDeviceStatsDetails
        Used By: Payment
    */

    class EdcDeviceStatsDetails: Codable {
        
        
        public var statistics: StatisticsData
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case statistics = "statistics"
            
            case success = "success"
            
        }

        public init(statistics: StatisticsData, success: Bool) {
            
            self.statistics = statistics
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                statistics = try container.decode(StatisticsData.self, forKey: .statistics)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statistics, forKey: .statistics)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Payment {
    /*
        Model: EdcDeviceStatsDetails
        Used By: Payment
    */

    class EdcDeviceStatsDetails: Codable {
        
        
        public var statistics: StatisticsData
        
        public var success: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case statistics = "statistics"
            
            case success = "success"
            
        }

        public init(statistics: StatisticsData, success: Bool) {
            
            self.statistics = statistics
            
            self.success = success
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                statistics = try container.decode(StatisticsData.self, forKey: .statistics)
                
            
            
            
                success = try container.decode(Bool.self, forKey: .success)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statistics, forKey: .statistics)
            
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
        }
        
    }
}


