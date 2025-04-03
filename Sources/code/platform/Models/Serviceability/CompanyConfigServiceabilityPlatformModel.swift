

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CompanyConfig
        Used By: Serviceability
    */

    class CompanyConfig: Codable {
        
        
        public var ruleIds: [String]
        
        public var sort: [String]
        
        public var logisticsAsActual: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleIds = "rule_ids"
            
            case sort = "sort"
            
            case logisticsAsActual = "logistics_as_actual"
            
        }

        public init(logisticsAsActual: Bool? = nil, ruleIds: [String], sort: [String]) {
            
            self.ruleIds = ruleIds
            
            self.sort = sort
            
            self.logisticsAsActual = logisticsAsActual
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                ruleIds = try container.decode([String].self, forKey: .ruleIds)
                
            
            
            
                sort = try container.decode([String].self, forKey: .sort)
                
            
            
            
                do {
                    logisticsAsActual = try container.decode(Bool.self, forKey: .logisticsAsActual)
                
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
            
            
            
            
            try? container.encodeIfPresent(logisticsAsActual, forKey: .logisticsAsActual)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: CompanyConfig
        Used By: Serviceability
    */

    class CompanyConfig: Codable {
        
        
        public var ruleIds: [String]
        
        public var sort: [String]
        
        public var logisticsAsActual: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case ruleIds = "rule_ids"
            
            case sort = "sort"
            
            case logisticsAsActual = "logistics_as_actual"
            
        }

        public init(logisticsAsActual: Bool? = nil, ruleIds: [String], sort: [String]) {
            
            self.ruleIds = ruleIds
            
            self.sort = sort
            
            self.logisticsAsActual = logisticsAsActual
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                ruleIds = try container.decode([String].self, forKey: .ruleIds)
                
            
            
            
                sort = try container.decode([String].self, forKey: .sort)
                
            
            
            
                do {
                    logisticsAsActual = try container.decode(Bool.self, forKey: .logisticsAsActual)
                
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
            
            
            
            
            try? container.encodeIfPresent(logisticsAsActual, forKey: .logisticsAsActual)
            
            
        }
        
    }
}


