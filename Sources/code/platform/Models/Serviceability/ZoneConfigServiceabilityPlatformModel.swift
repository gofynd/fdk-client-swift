

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ZoneConfig
        Used By: Serviceability
    */

    class ZoneConfig: Codable {
        
        
        public var serviceabilityType: String?
        
        public var activeCount: Int?
        
        public var totalCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case serviceabilityType = "serviceability_type"
            
            case activeCount = "active_count"
            
            case totalCount = "total_count"
            
        }

        public init(activeCount: Int? = nil, serviceabilityType: String? = nil, totalCount: Int? = nil) {
            
            self.serviceabilityType = serviceabilityType
            
            self.activeCount = activeCount
            
            self.totalCount = totalCount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    activeCount = try container.decode(Int.self, forKey: .activeCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalCount = try container.decode(Int.self, forKey: .totalCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)
            
            
            
            
            try? container.encodeIfPresent(activeCount, forKey: .activeCount)
            
            
            
            
            try? container.encodeIfPresent(totalCount, forKey: .totalCount)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ZoneConfig
        Used By: Serviceability
    */

    class ZoneConfig: Codable {
        
        
        public var serviceabilityType: String?
        
        public var activeCount: Int?
        
        public var totalCount: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case serviceabilityType = "serviceability_type"
            
            case activeCount = "active_count"
            
            case totalCount = "total_count"
            
        }

        public init(activeCount: Int? = nil, serviceabilityType: String? = nil, totalCount: Int? = nil) {
            
            self.serviceabilityType = serviceabilityType
            
            self.activeCount = activeCount
            
            self.totalCount = totalCount
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    serviceabilityType = try container.decode(String.self, forKey: .serviceabilityType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    activeCount = try container.decode(Int.self, forKey: .activeCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    totalCount = try container.decode(Int.self, forKey: .totalCount)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(serviceabilityType, forKey: .serviceabilityType)
            
            
            
            
            try? container.encodeIfPresent(activeCount, forKey: .activeCount)
            
            
            
            
            try? container.encodeIfPresent(totalCount, forKey: .totalCount)
            
            
        }
        
    }
}


