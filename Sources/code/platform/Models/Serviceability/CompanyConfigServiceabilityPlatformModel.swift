

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: CompanyConfig
        Used By: Serviceability
    */

    class CompanyConfig: Codable {
        
        
        public var companyId: Int?
        
        public var isRateCardEnabled: Bool?
        
        public var sort: [String]?
        
        public var logisticsAsActual: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case isRateCardEnabled = "is_rate_card_enabled"
            
            case sort = "sort"
            
            case logisticsAsActual = "logistics_as_actual"
            
        }

        public init(companyId: Int? = nil, isRateCardEnabled: Bool? = nil, logisticsAsActual: String? = nil, sort: [String]? = nil) {
            
            self.companyId = companyId
            
            self.isRateCardEnabled = isRateCardEnabled
            
            self.sort = sort
            
            self.logisticsAsActual = logisticsAsActual
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isRateCardEnabled = try container.decode(Bool.self, forKey: .isRateCardEnabled)
                
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
                    logisticsAsActual = try container.decode(String.self, forKey: .logisticsAsActual)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(isRateCardEnabled, forKey: .isRateCardEnabled)
            
            
            
            
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
        
        
        public var companyId: Int?
        
        public var isRateCardEnabled: Bool?
        
        public var sort: [String]?
        
        public var logisticsAsActual: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case companyId = "company_id"
            
            case isRateCardEnabled = "is_rate_card_enabled"
            
            case sort = "sort"
            
            case logisticsAsActual = "logistics_as_actual"
            
        }

        public init(companyId: Int? = nil, isRateCardEnabled: Bool? = nil, logisticsAsActual: String? = nil, sort: [String]? = nil) {
            
            self.companyId = companyId
            
            self.isRateCardEnabled = isRateCardEnabled
            
            self.sort = sort
            
            self.logisticsAsActual = logisticsAsActual
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    companyId = try container.decode(Int.self, forKey: .companyId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isRateCardEnabled = try container.decode(Bool.self, forKey: .isRateCardEnabled)
                
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
                    logisticsAsActual = try container.decode(String.self, forKey: .logisticsAsActual)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(isRateCardEnabled, forKey: .isRateCardEnabled)
            
            
            
            
            try? container.encodeIfPresent(sort, forKey: .sort)
            
            
            
            
            try? container.encodeIfPresent(logisticsAsActual, forKey: .logisticsAsActual)
            
            
        }
        
    }
}


