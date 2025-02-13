

import Foundation


public extension PlatformClient.Order {
    /*
        Model: GlobalFiltersResponse
        Used By: Order
    */

    class GlobalFiltersResponse: Codable {
        
        
        public var config: String?
        
        public var filters: [FiltersList]
        
        public var companyId: Int
        
        public var showIn: String
        
        public var requestSource: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case config = "config"
            
            case filters = "filters"
            
            case companyId = "company_id"
            
            case showIn = "show_in"
            
            case requestSource = "request_source"
            
        }

        public init(companyId: Int, config: String? = nil, filters: [FiltersList], requestSource: String? = nil, showIn: String) {
            
            self.config = config
            
            self.filters = filters
            
            self.companyId = companyId
            
            self.showIn = showIn
            
            self.requestSource = requestSource
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    config = try container.decode(String.self, forKey: .config)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                filters = try container.decode([FiltersList].self, forKey: .filters)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                showIn = try container.decode(String.self, forKey: .showIn)
                
            
            
            
                do {
                    requestSource = try container.decode(String.self, forKey: .requestSource)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(showIn, forKey: .showIn)
            
            
            
            
            try? container.encodeIfPresent(requestSource, forKey: .requestSource)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: GlobalFiltersResponse
        Used By: Order
    */

    class GlobalFiltersResponse: Codable {
        
        
        public var config: String?
        
        public var filters: [FiltersList]
        
        public var companyId: Int
        
        public var showIn: String
        
        public var requestSource: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case config = "config"
            
            case filters = "filters"
            
            case companyId = "company_id"
            
            case showIn = "show_in"
            
            case requestSource = "request_source"
            
        }

        public init(companyId: Int, config: String? = nil, filters: [FiltersList], requestSource: String? = nil, showIn: String) {
            
            self.config = config
            
            self.filters = filters
            
            self.companyId = companyId
            
            self.showIn = showIn
            
            self.requestSource = requestSource
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    config = try container.decode(String.self, forKey: .config)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                filters = try container.decode([FiltersList].self, forKey: .filters)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                showIn = try container.decode(String.self, forKey: .showIn)
                
            
            
            
                do {
                    requestSource = try container.decode(String.self, forKey: .requestSource)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(config, forKey: .config)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(showIn, forKey: .showIn)
            
            
            
            
            try? container.encodeIfPresent(requestSource, forKey: .requestSource)
            
            
        }
        
    }
}


