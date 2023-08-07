

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: InventoryExportQuantityFilter
        Used By: Catalog
    */

    class InventoryExportQuantityFilter: Codable {
        
        
        public var max: Int?
        
        public var min: Int?
        
        public var operators: String
        

        public enum CodingKeys: String, CodingKey {
            
            case max = "max"
            
            case min = "min"
            
            case operators = "operators"
            
        }

        public init(max: Int? = nil, min: Int? = nil, operators: String) {
            
            self.max = max
            
            self.min = min
            
            self.operators = operators
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    max = try container.decode(Int.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    min = try container.decode(Int.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                operators = try container.decode(String.self, forKey: .operators)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
            
            
            try? container.encodeIfPresent(operators, forKey: .operators)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: InventoryExportQuantityFilter
        Used By: Catalog
    */

    class InventoryExportQuantityFilter: Codable {
        
        
        public var max: Int?
        
        public var min: Int?
        
        public var operators: String
        

        public enum CodingKeys: String, CodingKey {
            
            case max = "max"
            
            case min = "min"
            
            case operators = "operators"
            
        }

        public init(max: Int? = nil, min: Int? = nil, operators: String) {
            
            self.max = max
            
            self.min = min
            
            self.operators = operators
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    max = try container.decode(Int.self, forKey: .max)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    min = try container.decode(Int.self, forKey: .min)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                operators = try container.decode(String.self, forKey: .operators)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(max, forKey: .max)
            
            
            
            
            try? container.encodeIfPresent(min, forKey: .min)
            
            
            
            
            try? container.encodeIfPresent(operators, forKey: .operators)
            
            
        }
        
    }
}


