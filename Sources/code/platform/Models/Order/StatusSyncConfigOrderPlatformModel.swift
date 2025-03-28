

import Foundation


public extension PlatformClient.Order {
    /*
        Model: StatusSyncConfig
        Used By: Order
    */

    class StatusSyncConfig: Codable {
        
        
        public var statusData: [StatusData]?
        

        public enum CodingKeys: String, CodingKey {
            
            case statusData = "status_data"
            
        }

        public init(statusData: [StatusData]? = nil) {
            
            self.statusData = statusData
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    statusData = try container.decode([StatusData].self, forKey: .statusData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statusData, forKey: .statusData)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: StatusSyncConfig
        Used By: Order
    */

    class StatusSyncConfig: Codable {
        
        
        public var statusData: [StatusData]?
        

        public enum CodingKeys: String, CodingKey {
            
            case statusData = "status_data"
            
        }

        public init(statusData: [StatusData]? = nil) {
            
            self.statusData = statusData
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    statusData = try container.decode([StatusData].self, forKey: .statusData)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(statusData, forKey: .statusData)
            
            
        }
        
    }
}


