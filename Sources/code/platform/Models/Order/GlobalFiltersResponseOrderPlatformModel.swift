

import Foundation


public extension PlatformClient.Order {
    /*
        Model: GlobalFiltersResponse
        Used By: Order
    */

    class GlobalFiltersResponse: Codable {
        
        
        public var filters: [FiltersList]
        
        public var companyId: Int
        
        public var requestSource: String?
        
        public var showIn: String
        

        public enum CodingKeys: String, CodingKey {
            
            case filters = "filters"
            
            case companyId = "company_id"
            
            case requestSource = "request_source"
            
            case showIn = "show_in"
            
        }

        public init(companyId: Int, filters: [FiltersList], requestSource: String? = nil, showIn: String) {
            
            self.filters = filters
            
            self.companyId = companyId
            
            self.requestSource = requestSource
            
            self.showIn = showIn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                filters = try container.decode([FiltersList].self, forKey: .filters)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                do {
                    requestSource = try container.decode(String.self, forKey: .requestSource)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                showIn = try container.decode(String.self, forKey: .showIn)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(requestSource, forKey: .requestSource)
            
            
            
            
            try? container.encodeIfPresent(showIn, forKey: .showIn)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: GlobalFiltersResponse
        Used By: Order
    */

    class GlobalFiltersResponse: Codable {
        
        
        public var filters: [FiltersList]
        
        public var companyId: Int
        
        public var requestSource: String?
        
        public var showIn: String
        

        public enum CodingKeys: String, CodingKey {
            
            case filters = "filters"
            
            case companyId = "company_id"
            
            case requestSource = "request_source"
            
            case showIn = "show_in"
            
        }

        public init(companyId: Int, filters: [FiltersList], requestSource: String? = nil, showIn: String) {
            
            self.filters = filters
            
            self.companyId = companyId
            
            self.requestSource = requestSource
            
            self.showIn = showIn
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                filters = try container.decode([FiltersList].self, forKey: .filters)
                
            
            
            
                companyId = try container.decode(Int.self, forKey: .companyId)
                
            
            
            
                do {
                    requestSource = try container.decode(String.self, forKey: .requestSource)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                showIn = try container.decode(String.self, forKey: .showIn)
                
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            
            try? container.encodeIfPresent(requestSource, forKey: .requestSource)
            
            
            
            
            try? container.encodeIfPresent(showIn, forKey: .showIn)
            
            
        }
        
    }
}


