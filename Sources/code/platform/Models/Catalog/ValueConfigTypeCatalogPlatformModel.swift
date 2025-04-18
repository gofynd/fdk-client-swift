

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: ValueConfigType
        Used By: Catalog
    */

    class ValueConfigType: Codable {
        
        
        public var bucketPoints: [[String: Any]]?
        
        public var map: [String: Any]?
        
        public var sort: String?
        
        public var condition: String?
        
        public var value: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case bucketPoints = "bucket_points"
            
            case map = "map"
            
            case sort = "sort"
            
            case condition = "condition"
            
            case value = "value"
            
        }

        public init(bucketPoints: [[String: Any]]? = nil, condition: String? = nil, map: [String: Any]? = nil, sort: String? = nil, value: String? = nil) {
            
            self.bucketPoints = bucketPoints
            
            self.map = map
            
            self.sort = sort
            
            self.condition = condition
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    bucketPoints = try container.decode([[String: Any]].self, forKey: .bucketPoints)
                
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
                    sort = try container.decode(String.self, forKey: .sort)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(bucketPoints, forKey: .bucketPoints)
            
            
            
            
            try? container.encodeIfPresent(map, forKey: .map)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(condition, forKey: .condition)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: ValueConfigType
        Used By: Catalog
    */

    class ValueConfigType: Codable {
        
        
        public var bucketPoints: [[String: Any]]?
        
        public var map: [String: Any]?
        
        public var sort: String?
        
        public var condition: String?
        
        public var value: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case bucketPoints = "bucket_points"
            
            case map = "map"
            
            case sort = "sort"
            
            case condition = "condition"
            
            case value = "value"
            
        }

        public init(bucketPoints: [[String: Any]]? = nil, condition: String? = nil, map: [String: Any]? = nil, sort: String? = nil, value: String? = nil) {
            
            self.bucketPoints = bucketPoints
            
            self.map = map
            
            self.sort = sort
            
            self.condition = condition
            
            self.value = value
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    bucketPoints = try container.decode([[String: Any]].self, forKey: .bucketPoints)
                
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
                    sort = try container.decode(String.self, forKey: .sort)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(bucketPoints, forKey: .bucketPoints)
            
            
            
            
            try? container.encodeIfPresent(map, forKey: .map)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(condition, forKey: .condition)
            
            
            
            
            try? container.encodeIfPresent(value, forKey: .value)
            
            
        }
        
    }
}


