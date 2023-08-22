

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ConfigurationListingFilterValue
        Used By: Catalog
    */

    class ConfigurationListingFilterValue: Codable {
        
        
        public var mapValues: [[String: Any]]?
        
        public var map: [String: Any]?
        
        public var condition: String?
        
        public var value: String?
        
        public var sort: String?
        
        public var priority: [String]?
        
        public var bucketPoints: [ConfigurationBucketPoints]?
        

        public enum CodingKeys: String, CodingKey {
            
            case mapValues = "map_values"
            
            case map = "map"
            
            case condition = "condition"
            
            case value = "value"
            
            case sort = "sort"
            
            case priority = "priority"
            
            case bucketPoints = "bucket_points"
            
        }

        public init(bucketPoints: [ConfigurationBucketPoints]? = nil, condition: String? = nil, map: [String: Any]? = nil, mapValues: [[String: Any]]? = nil, priority: [String]? = nil, sort: String? = nil, value: String? = nil) {
            
            self.mapValues = mapValues
            
            self.map = map
            
            self.condition = condition
            
            self.value = value
            
            self.sort = sort
            
            self.priority = priority
            
            self.bucketPoints = bucketPoints
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    mapValues = try container.decode([[String: Any]].self, forKey: .mapValues)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    map = try container.decode([String: Any].self, forKey: .map)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    condition = try container.decode(String.self, forKey: .condition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sort = try container.decode(String.self, forKey: .sort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priority = try container.decode([String].self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bucketPoints = try container.decode([ConfigurationBucketPoints].self, forKey: .bucketPoints)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(mapValues, forKey: .mapValues)
            
            
            
            
            try? container.encodeIfPresent(map, forKey: .map)
            
            
            
            
            try? container.encodeIfPresent(condition, forKey: .condition)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(bucketPoints, forKey: .bucketPoints)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ConfigurationListingFilterValue
        Used By: Catalog
    */

    class ConfigurationListingFilterValue: Codable {
        
        
        public var mapValues: [[String: Any]]?
        
        public var map: [String: Any]?
        
        public var condition: String?
        
        public var value: String?
        
        public var sort: String?
        
        public var priority: [String]?
        
        public var bucketPoints: [ConfigurationBucketPoints]?
        

        public enum CodingKeys: String, CodingKey {
            
            case mapValues = "map_values"
            
            case map = "map"
            
            case condition = "condition"
            
            case value = "value"
            
            case sort = "sort"
            
            case priority = "priority"
            
            case bucketPoints = "bucket_points"
            
        }

        public init(bucketPoints: [ConfigurationBucketPoints]? = nil, condition: String? = nil, map: [String: Any]? = nil, mapValues: [[String: Any]]? = nil, priority: [String]? = nil, sort: String? = nil, value: String? = nil) {
            
            self.mapValues = mapValues
            
            self.map = map
            
            self.condition = condition
            
            self.value = value
            
            self.sort = sort
            
            self.priority = priority
            
            self.bucketPoints = bucketPoints
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    mapValues = try container.decode([[String: Any]].self, forKey: .mapValues)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    map = try container.decode([String: Any].self, forKey: .map)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    condition = try container.decode(String.self, forKey: .condition)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    value = try container.decode(String.self, forKey: .value)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sort = try container.decode(String.self, forKey: .sort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    priority = try container.decode([String].self, forKey: .priority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    bucketPoints = try container.decode([ConfigurationBucketPoints].self, forKey: .bucketPoints)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(mapValues, forKey: .mapValues)
            
            
            
            
            try? container.encodeIfPresent(map, forKey: .map)
            
            
            
            
            try? container.encodeIfPresent(condition, forKey: .condition)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(bucketPoints, forKey: .bucketPoints)
            
            
        }
        
    }
}


