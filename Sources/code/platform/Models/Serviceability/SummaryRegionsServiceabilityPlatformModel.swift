

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: SummaryRegions
        Used By: Serviceability
    */

    class SummaryRegions: Codable {
        
        
        public var regions: [RegionSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case regions = "regions"
            
        }

        public init(regions: [RegionSchema]? = nil) {
            
            self.regions = regions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    regions = try container.decode([RegionSchema].self, forKey: .regions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(regions, forKey: .regions)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: SummaryRegions
        Used By: Serviceability
    */

    class SummaryRegions: Codable {
        
        
        public var regions: [RegionSchema]?
        

        public enum CodingKeys: String, CodingKey {
            
            case regions = "regions"
            
        }

        public init(regions: [RegionSchema]? = nil) {
            
            self.regions = regions
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    regions = try container.decode([RegionSchema].self, forKey: .regions)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(regions, forKey: .regions)
            
            
        }
        
    }
}


