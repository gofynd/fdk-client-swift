

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: AppConfigurationsSort
        Used By: Catalog
    */

    class AppConfigurationsSort: Codable {
        
        
        public var appId: String
        
        public var defaultKey: String
        
        public var isActive: Bool
        
        public var isDefault: Bool
        
        public var key: String
        
        public var logo: String?
        
        public var name: String?
        
        public var priority: Int
        
        public var weights: SortWeights?
        
        public var cohorts: CohortSortingConfiguration?
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case defaultKey = "default_key"
            
            case isActive = "is_active"
            
            case isDefault = "is_default"
            
            case key = "key"
            
            case logo = "logo"
            
            case name = "name"
            
            case priority = "priority"
            
            case weights = "weights"
            
            case cohorts = "cohorts"
            
        }

        public init(appId: String, cohorts: CohortSortingConfiguration? = nil, defaultKey: String, isActive: Bool, isDefault: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int, weights: SortWeights? = nil) {
            
            self.appId = appId
            
            self.defaultKey = defaultKey
            
            self.isActive = isActive
            
            self.isDefault = isDefault
            
            self.key = key
            
            self.logo = logo
            
            self.name = name
            
            self.priority = priority
            
            self.weights = weights
            
            self.cohorts = cohorts
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                defaultKey = try container.decode(String.self, forKey: .defaultKey)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                key = try container.decode(String.self, forKey: .key)
                
            
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                priority = try container.decode(Int.self, forKey: .priority)
                
            
            
            
                do {
                    weights = try container.decode(SortWeights.self, forKey: .weights)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cohorts = try container.decode(CohortSortingConfiguration.self, forKey: .cohorts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(defaultKey, forKey: .defaultKey)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(weights, forKey: .weights)
            
            
            
            
            try? container.encodeIfPresent(cohorts, forKey: .cohorts)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: AppConfigurationsSort
        Used By: Catalog
    */

    class AppConfigurationsSort: Codable {
        
        
        public var appId: String
        
        public var defaultKey: String
        
        public var isActive: Bool
        
        public var isDefault: Bool
        
        public var key: String
        
        public var logo: String?
        
        public var name: String?
        
        public var priority: Int
        
        public var weights: SortWeights?
        
        public var cohorts: CohortSortingConfiguration?
        

        public enum CodingKeys: String, CodingKey {
            
            case appId = "app_id"
            
            case defaultKey = "default_key"
            
            case isActive = "is_active"
            
            case isDefault = "is_default"
            
            case key = "key"
            
            case logo = "logo"
            
            case name = "name"
            
            case priority = "priority"
            
            case weights = "weights"
            
            case cohorts = "cohorts"
            
        }

        public init(appId: String, cohorts: CohortSortingConfiguration? = nil, defaultKey: String, isActive: Bool, isDefault: Bool, key: String, logo: String? = nil, name: String? = nil, priority: Int, weights: SortWeights? = nil) {
            
            self.appId = appId
            
            self.defaultKey = defaultKey
            
            self.isActive = isActive
            
            self.isDefault = isDefault
            
            self.key = key
            
            self.logo = logo
            
            self.name = name
            
            self.priority = priority
            
            self.weights = weights
            
            self.cohorts = cohorts
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                appId = try container.decode(String.self, forKey: .appId)
                
            
            
            
                defaultKey = try container.decode(String.self, forKey: .defaultKey)
                
            
            
            
                isActive = try container.decode(Bool.self, forKey: .isActive)
                
            
            
            
                isDefault = try container.decode(Bool.self, forKey: .isDefault)
                
            
            
            
                key = try container.decode(String.self, forKey: .key)
                
            
            
            
                do {
                    logo = try container.decode(String.self, forKey: .logo)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    name = try container.decode(String.self, forKey: .name)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                priority = try container.decode(Int.self, forKey: .priority)
                
            
            
            
                do {
                    weights = try container.decode(SortWeights.self, forKey: .weights)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    cohorts = try container.decode(CohortSortingConfiguration.self, forKey: .cohorts)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(appId, forKey: .appId)
            
            
            
            
            try? container.encodeIfPresent(defaultKey, forKey: .defaultKey)
            
            
            
            
            try? container.encodeIfPresent(isActive, forKey: .isActive)
            
            
            
            
            try? container.encodeIfPresent(isDefault, forKey: .isDefault)
            
            
            
            
            try? container.encodeIfPresent(key, forKey: .key)
            
            
            
            
            try? container.encodeIfPresent(logo, forKey: .logo)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(priority, forKey: .priority)
            
            
            
            
            try? container.encodeIfPresent(weights, forKey: .weights)
            
            
            
            
            try? container.encodeIfPresent(cohorts, forKey: .cohorts)
            
            
        }
        
    }
}


