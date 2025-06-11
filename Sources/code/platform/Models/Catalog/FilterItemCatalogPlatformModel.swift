

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: FilterItem
        Used By: Catalog
    */

    class FilterItem: Codable {
        
        
        public var key: String?
        
        public var display: String?
        
        public var filterTypes: [String]?
        
        public var units: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case display = "display"
            
            case filterTypes = "filter_types"
            
            case units = "units"
            
        }

        public init(display: String? = nil, filterTypes: [String]? = nil, key: String? = nil, units: [String]? = nil) {
            
            self.key = key
            
            self.display = display
            
            self.filterTypes = filterTypes
            
            self.units = units
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filterTypes = try container.decode([String].self, forKey: .filterTypes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    units = try container.decode([String].self, forKey: .units)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(filterTypes, forKey: .filterTypes)
            
            
            
            
            try? container.encodeIfPresent(units, forKey: .units)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: FilterItem
        Used By: Catalog
    */

    class FilterItem: Codable {
        
        
        public var key: String?
        
        public var display: String?
        
        public var filterTypes: [String]?
        
        public var units: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case key = "key"
            
            case display = "display"
            
            case filterTypes = "filter_types"
            
            case units = "units"
            
        }

        public init(display: String? = nil, filterTypes: [String]? = nil, key: String? = nil, units: [String]? = nil) {
            
            self.key = key
            
            self.display = display
            
            self.filterTypes = filterTypes
            
            self.units = units
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    display = try container.decode(String.self, forKey: .display)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filterTypes = try container.decode([String].self, forKey: .filterTypes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    units = try container.decode([String].self, forKey: .units)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(filterTypes, forKey: .filterTypes)
            
            
            
            
            try? container.encodeIfPresent(units, forKey: .units)
            
            
        }
        
    }
}


