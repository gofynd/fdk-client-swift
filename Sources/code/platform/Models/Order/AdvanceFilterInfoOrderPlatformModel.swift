

import Foundation


public extension PlatformClient.Order {
    /*
        Model: AdvanceFilterInfo
        Used By: Order
    */

    class AdvanceFilterInfo: Codable {
        
        
        public var returned: [FiltersInfo]?
        
        public var actionCentre: [FiltersInfo]?
        
        public var unfulfilled: [FiltersInfo]?
        
        public var filters: [FiltersInfo]?
        
        public var processed: [FiltersInfo]?
        
        public var appliedFilters: [String: Any]?
        
        public var page: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case returned = "returned"
            
            case actionCentre = "action_centre"
            
            case unfulfilled = "unfulfilled"
            
            case filters = "filters"
            
            case processed = "processed"
            
            case appliedFilters = "applied_filters"
            
            case page = "page"
            
        }

        public init(actionCentre: [FiltersInfo]? = nil, appliedFilters: [String: Any]? = nil, filters: [FiltersInfo]? = nil, page: [String: Any]? = nil, processed: [FiltersInfo]? = nil, returned: [FiltersInfo]? = nil, unfulfilled: [FiltersInfo]? = nil) {
            
            self.returned = returned
            
            self.actionCentre = actionCentre
            
            self.unfulfilled = unfulfilled
            
            self.filters = filters
            
            self.processed = processed
            
            self.appliedFilters = appliedFilters
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    returned = try container.decode([FiltersInfo].self, forKey: .returned)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    actionCentre = try container.decode([FiltersInfo].self, forKey: .actionCentre)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unfulfilled = try container.decode([FiltersInfo].self, forKey: .unfulfilled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filters = try container.decode([FiltersInfo].self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    processed = try container.decode([FiltersInfo].self, forKey: .processed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appliedFilters = try container.decode([String: Any].self, forKey: .appliedFilters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode([String: Any].self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(returned, forKey: .returned)
            
            
            
            
            try? container.encode(actionCentre, forKey: .actionCentre)
            
            
            
            
            try? container.encode(unfulfilled, forKey: .unfulfilled)
            
            
            
            
            try? container.encode(filters, forKey: .filters)
            
            
            
            
            try? container.encode(processed, forKey: .processed)
            
            
            
            
            try? container.encode(appliedFilters, forKey: .appliedFilters)
            
            
            
            
            try? container.encode(page, forKey: .page)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: AdvanceFilterInfo
        Used By: Order
    */

    class AdvanceFilterInfo: Codable {
        
        
        public var returned: [FiltersInfo]?
        
        public var actionCentre: [FiltersInfo]?
        
        public var unfulfilled: [FiltersInfo]?
        
        public var filters: [FiltersInfo]?
        
        public var processed: [FiltersInfo]?
        
        public var appliedFilters: [String: Any]?
        
        public var page: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case returned = "returned"
            
            case actionCentre = "action_centre"
            
            case unfulfilled = "unfulfilled"
            
            case filters = "filters"
            
            case processed = "processed"
            
            case appliedFilters = "applied_filters"
            
            case page = "page"
            
        }

        public init(actionCentre: [FiltersInfo]? = nil, appliedFilters: [String: Any]? = nil, filters: [FiltersInfo]? = nil, page: [String: Any]? = nil, processed: [FiltersInfo]? = nil, returned: [FiltersInfo]? = nil, unfulfilled: [FiltersInfo]? = nil) {
            
            self.returned = returned
            
            self.actionCentre = actionCentre
            
            self.unfulfilled = unfulfilled
            
            self.filters = filters
            
            self.processed = processed
            
            self.appliedFilters = appliedFilters
            
            self.page = page
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    returned = try container.decode([FiltersInfo].self, forKey: .returned)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    actionCentre = try container.decode([FiltersInfo].self, forKey: .actionCentre)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    unfulfilled = try container.decode([FiltersInfo].self, forKey: .unfulfilled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filters = try container.decode([FiltersInfo].self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    processed = try container.decode([FiltersInfo].self, forKey: .processed)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    appliedFilters = try container.decode([String: Any].self, forKey: .appliedFilters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    page = try container.decode([String: Any].self, forKey: .page)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encode(returned, forKey: .returned)
            
            
            
            
            try? container.encode(actionCentre, forKey: .actionCentre)
            
            
            
            
            try? container.encode(unfulfilled, forKey: .unfulfilled)
            
            
            
            
            try? container.encode(filters, forKey: .filters)
            
            
            
            
            try? container.encode(processed, forKey: .processed)
            
            
            
            
            try? container.encode(appliedFilters, forKey: .appliedFilters)
            
            
            
            
            try? container.encode(page, forKey: .page)
            
            
        }
        
    }
}


