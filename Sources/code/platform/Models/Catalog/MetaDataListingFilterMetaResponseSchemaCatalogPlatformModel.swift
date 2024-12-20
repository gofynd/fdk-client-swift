

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: MetaDataListingFilterMetaResponseSchema
        Used By: Catalog
    */

    class MetaDataListingFilterMetaResponseSchema: Codable {
        
        
        public var display: String?
        
        public var filterTypes: [String]?
        
        public var key: String?
        
        public var units: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case filterTypes = "filter_types"
            
            case key = "key"
            
            case units = "units"
            
        }

        public init(display: String? = nil, filterTypes: [String]? = nil, key: String? = nil, units: [[String: Any]]? = nil) {
            
            self.display = display
            
            self.filterTypes = filterTypes
            
            self.key = key
            
            self.units = units
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    units = try container.decode([[String: Any]].self, forKey: .units)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(filterTypes, forKey: .filterTypes)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(units, forKey: .units)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: MetaDataListingFilterMetaResponseSchema
        Used By: Catalog
    */

    class MetaDataListingFilterMetaResponseSchema: Codable {
        
        
        public var display: String?
        
        public var filterTypes: [String]?
        
        public var key: String?
        
        public var units: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case display = "display"
            
            case filterTypes = "filter_types"
            
            case key = "key"
            
            case units = "units"
            
        }

        public init(display: String? = nil, filterTypes: [String]? = nil, key: String? = nil, units: [[String: Any]]? = nil) {
            
            self.display = display
            
            self.filterTypes = filterTypes
            
            self.key = key
            
            self.units = units
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
                    key = try container.decode(String.self, forKey: .key)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    units = try container.decode([[String: Any]].self, forKey: .units)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(display, forKey: .display)
            
            
            
            
            try? container.encodeIfPresent(filterTypes, forKey: .filterTypes)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(units, forKey: .units)
            
            
        }
        
    }
}


