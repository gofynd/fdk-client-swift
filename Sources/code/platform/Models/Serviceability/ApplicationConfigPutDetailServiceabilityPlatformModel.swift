

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: ApplicationConfigPutDetail
        Used By: Serviceability
    */

    class ApplicationConfigPutDetail: Codable {
        
        
        public var ruleIds: [String]?
        
        public var sort: [String]?
        
        public var manualPriority: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleIds = "rule_ids"
            
            case sort = "sort"
            
            case manualPriority = "manual_priority"
            
        }

        public init(manualPriority: [String]? = nil, ruleIds: [String]? = nil, sort: [String]? = nil) {
            
            self.ruleIds = ruleIds
            
            self.sort = sort
            
            self.manualPriority = manualPriority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ruleIds = try container.decode([String].self, forKey: .ruleIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sort = try container.decode([String].self, forKey: .sort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    manualPriority = try container.decode([String].self, forKey: .manualPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ruleIds, forKey: .ruleIds)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(manualPriority, forKey: .manualPriority)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: ApplicationConfigPutDetail
        Used By: Serviceability
    */

    class ApplicationConfigPutDetail: Codable {
        
        
        public var ruleIds: [String]?
        
        public var sort: [String]?
        
        public var manualPriority: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleIds = "rule_ids"
            
            case sort = "sort"
            
            case manualPriority = "manual_priority"
            
        }

        public init(manualPriority: [String]? = nil, ruleIds: [String]? = nil, sort: [String]? = nil) {
            
            self.ruleIds = ruleIds
            
            self.sort = sort
            
            self.manualPriority = manualPriority
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    ruleIds = try container.decode([String].self, forKey: .ruleIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    sort = try container.decode([String].self, forKey: .sort)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    manualPriority = try container.decode([String].self, forKey: .manualPriority)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(ruleIds, forKey: .ruleIds)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(manualPriority, forKey: .manualPriority)
            
            
        }
        
    }
}


