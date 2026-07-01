

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: CustomOrder
        Used By: Catalog
    */

    class CustomOrder: Codable {
        
        
        public var manufacturingTimeUnit: String?
        
        public var isCustomOrder: Bool
        
        public var manufacturingTime: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case manufacturingTimeUnit = "manufacturing_time_unit"
            
            case isCustomOrder = "is_custom_order"
            
            case manufacturingTime = "manufacturing_time"
            
        }

        public init(isCustomOrder: Bool, manufacturingTime: Int? = nil, manufacturingTimeUnit: String? = nil) {
            
            self.manufacturingTimeUnit = manufacturingTimeUnit
            
            self.isCustomOrder = isCustomOrder
            
            self.manufacturingTime = manufacturingTime
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    manufacturingTimeUnit = try container.decode(String.self, forKey: .manufacturingTimeUnit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isCustomOrder = try container.decode(Bool.self, forKey: .isCustomOrder)
                
            
            
            
                do {
                    manufacturingTime = try container.decode(Int.self, forKey: .manufacturingTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(manufacturingTimeUnit, forKey: .manufacturingTimeUnit)
            
            
            
            
            try? container.encodeIfPresent(isCustomOrder, forKey: .isCustomOrder)
            
            
            
            
            try? container.encodeIfPresent(manufacturingTime, forKey: .manufacturingTime)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: CustomOrder
        Used By: Catalog
    */

    class CustomOrder: Codable {
        
        
        public var manufacturingTimeUnit: String?
        
        public var isCustomOrder: Bool
        
        public var manufacturingTime: Int?
        

        public enum CodingKeys: String, CodingKey {
            
            case manufacturingTimeUnit = "manufacturing_time_unit"
            
            case isCustomOrder = "is_custom_order"
            
            case manufacturingTime = "manufacturing_time"
            
        }

        public init(isCustomOrder: Bool, manufacturingTime: Int? = nil, manufacturingTimeUnit: String? = nil) {
            
            self.manufacturingTimeUnit = manufacturingTimeUnit
            
            self.isCustomOrder = isCustomOrder
            
            self.manufacturingTime = manufacturingTime
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    manufacturingTimeUnit = try container.decode(String.self, forKey: .manufacturingTimeUnit)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                isCustomOrder = try container.decode(Bool.self, forKey: .isCustomOrder)
                
            
            
            
                do {
                    manufacturingTime = try container.decode(Int.self, forKey: .manufacturingTime)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(manufacturingTimeUnit, forKey: .manufacturingTimeUnit)
            
            
            
            
            try? container.encodeIfPresent(isCustomOrder, forKey: .isCustomOrder)
            
            
            
            
            try? container.encodeIfPresent(manufacturingTime, forKey: .manufacturingTime)
            
            
        }
        
    }
}


