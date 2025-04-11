

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: MerchandisingRuleSave
        Used By: Catalog
    */

    class MerchandisingRuleSave: Codable {
        
        
        public var ruleName: String
        
        public var schedule: CollectionSchedule
        
        public var isActive: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleName = "rule_name"
            
            case schedule = "_schedule"
            
            case isActive = "is_active"
            
        }

        public init(isActive: Bool, ruleName: String, schedule: CollectionSchedule) {
            
            self.ruleName = ruleName
            
            self.schedule = schedule
            
            self.isActive = isActive
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                ruleName = try container.decode(String.self, forKey: .ruleName)
                
            
            
            
                schedule = try container.decode(CollectionSchedule.self, forKey: .schedule)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ruleName, forKey: .ruleName)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: MerchandisingRuleSave
        Used By: Catalog
    */

    class MerchandisingRuleSave: Codable {
        
        
        public var ruleName: String
        
        public var schedule: CollectionSchedule
        
        public var isActive: Bool
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleName = "rule_name"
            
            case schedule = "_schedule"
            
            case isActive = "is_active"
            
        }

        public init(isActive: Bool, ruleName: String, schedule: CollectionSchedule) {
            
            self.ruleName = ruleName
            
            self.schedule = schedule
            
            self.isActive = isActive
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                ruleName = try container.decode(String.self, forKey: .ruleName)
                
            
            
            
                schedule = try container.decode(CollectionSchedule.self, forKey: .schedule)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ruleName, forKey: .ruleName)
            
            
            
            
            try? container.encodeIfPresent(schedule, forKey: .schedule)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
        }
        
    }
}


