

import Foundation


public extension PlatformClient.Order {
    /*
        Model: ShipmentHistoryResponse
        Used By: Order
    */

    class ShipmentHistoryResponse: Codable {
        
        
        public var success: Bool?
        
        public var activityHistory: [HistoryDict]
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case activityHistory = "activity_history"
            
        }

        public init(activityHistory: [HistoryDict], success: Bool? = nil) {
            
            self.success = success
            
            self.activityHistory = activityHistory
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                activityHistory = try container.decode([HistoryDict].self, forKey: .activityHistory)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(activityHistory, forKey: .activityHistory)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: ShipmentHistoryResponse
        Used By: Order
    */

    class ShipmentHistoryResponse: Codable {
        
        
        public var success: Bool?
        
        public var activityHistory: [HistoryDict]
        

        public enum CodingKeys: String, CodingKey {
            
            case success = "success"
            
            case activityHistory = "activity_history"
            
        }

        public init(activityHistory: [HistoryDict], success: Bool? = nil) {
            
            self.success = success
            
            self.activityHistory = activityHistory
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    success = try container.decode(Bool.self, forKey: .success)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                activityHistory = try container.decode([HistoryDict].self, forKey: .activityHistory)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(success, forKey: .success)
            
            
            
            
            try? container.encodeIfPresent(activityHistory, forKey: .activityHistory)
            
            
        }
        
    }
}


