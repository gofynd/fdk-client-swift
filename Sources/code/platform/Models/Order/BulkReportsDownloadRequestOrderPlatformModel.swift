

import Foundation


public extension PlatformClient.Order {
    /*
        Model: BulkReportsDownloadRequest
        Used By: Order
    */

    class BulkReportsDownloadRequest: Codable {
        
        
        public var storeIds: [String]?
        
        public var laneType: String?
        
        public var customHeaders: String?
        
        public var reportType: String?
        
        public var startDate: String?
        
        public var endDate: String?
        
        public var entities: [String]?
        
        public var filterType: String?
        
        public var isCrossCompanyEnabled: Bool?
        
        public var customFiltersForLane: [String: Any]?
        
        public var filters: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeIds = "store_ids"
            
            case laneType = "lane_type"
            
            case customHeaders = "custom_headers"
            
            case reportType = "report_type"
            
            case startDate = "start_date"
            
            case endDate = "end_date"
            
            case entities = "entities"
            
            case filterType = "filter_type"
            
            case isCrossCompanyEnabled = "is_cross_company_enabled"
            
            case customFiltersForLane = "custom_filters_for_lane"
            
            case filters = "filters"
            
        }

        public init(customFiltersForLane: [String: Any]? = nil, customHeaders: String? = nil, endDate: String? = nil, entities: [String]? = nil, filters: [String: Any]? = nil, filterType: String? = nil, isCrossCompanyEnabled: Bool? = nil, laneType: String? = nil, reportType: String? = nil, startDate: String? = nil, storeIds: [String]? = nil) {
            
            self.storeIds = storeIds
            
            self.laneType = laneType
            
            self.customHeaders = customHeaders
            
            self.reportType = reportType
            
            self.startDate = startDate
            
            self.endDate = endDate
            
            self.entities = entities
            
            self.filterType = filterType
            
            self.isCrossCompanyEnabled = isCrossCompanyEnabled
            
            self.customFiltersForLane = customFiltersForLane
            
            self.filters = filters
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storeIds = try container.decode([String].self, forKey: .storeIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    laneType = try container.decode(String.self, forKey: .laneType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customHeaders = try container.decode(String.self, forKey: .customHeaders)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reportType = try container.decode(String.self, forKey: .reportType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    startDate = try container.decode(String.self, forKey: .startDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    endDate = try container.decode(String.self, forKey: .endDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entities = try container.decode([String].self, forKey: .entities)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filterType = try container.decode(String.self, forKey: .filterType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isCrossCompanyEnabled = try container.decode(Bool.self, forKey: .isCrossCompanyEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customFiltersForLane = try container.decode([String: Any].self, forKey: .customFiltersForLane)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filters = try container.decode([String: Any].self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(laneType, forKey: .laneType)
            
            
            
            
            try? container.encodeIfPresent(customHeaders, forKey: .customHeaders)
            
            
            
            
            try? container.encodeIfPresent(reportType, forKey: .reportType)
            
            
            
            
            try? container.encodeIfPresent(startDate, forKey: .startDate)
            
            
            
            
            try? container.encodeIfPresent(endDate, forKey: .endDate)
            
            
            
            
            try? container.encodeIfPresent(entities, forKey: .entities)
            
            
            
            
            try? container.encodeIfPresent(filterType, forKey: .filterType)
            
            
            
            
            try? container.encodeIfPresent(isCrossCompanyEnabled, forKey: .isCrossCompanyEnabled)
            
            
            
            
            try? container.encodeIfPresent(customFiltersForLane, forKey: .customFiltersForLane)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Order {
    /*
        Model: BulkReportsDownloadRequest
        Used By: Order
    */

    class BulkReportsDownloadRequest: Codable {
        
        
        public var storeIds: [String]?
        
        public var laneType: String?
        
        public var customHeaders: String?
        
        public var reportType: String?
        
        public var startDate: String?
        
        public var endDate: String?
        
        public var entities: [String]?
        
        public var filterType: String?
        
        public var isCrossCompanyEnabled: Bool?
        
        public var customFiltersForLane: [String: Any]?
        
        public var filters: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeIds = "store_ids"
            
            case laneType = "lane_type"
            
            case customHeaders = "custom_headers"
            
            case reportType = "report_type"
            
            case startDate = "start_date"
            
            case endDate = "end_date"
            
            case entities = "entities"
            
            case filterType = "filter_type"
            
            case isCrossCompanyEnabled = "is_cross_company_enabled"
            
            case customFiltersForLane = "custom_filters_for_lane"
            
            case filters = "filters"
            
        }

        public init(customFiltersForLane: [String: Any]? = nil, customHeaders: String? = nil, endDate: String? = nil, entities: [String]? = nil, filters: [String: Any]? = nil, filterType: String? = nil, isCrossCompanyEnabled: Bool? = nil, laneType: String? = nil, reportType: String? = nil, startDate: String? = nil, storeIds: [String]? = nil) {
            
            self.storeIds = storeIds
            
            self.laneType = laneType
            
            self.customHeaders = customHeaders
            
            self.reportType = reportType
            
            self.startDate = startDate
            
            self.endDate = endDate
            
            self.entities = entities
            
            self.filterType = filterType
            
            self.isCrossCompanyEnabled = isCrossCompanyEnabled
            
            self.customFiltersForLane = customFiltersForLane
            
            self.filters = filters
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    storeIds = try container.decode([String].self, forKey: .storeIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    laneType = try container.decode(String.self, forKey: .laneType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customHeaders = try container.decode(String.self, forKey: .customHeaders)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    reportType = try container.decode(String.self, forKey: .reportType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    startDate = try container.decode(String.self, forKey: .startDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    endDate = try container.decode(String.self, forKey: .endDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    entities = try container.decode([String].self, forKey: .entities)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filterType = try container.decode(String.self, forKey: .filterType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    isCrossCompanyEnabled = try container.decode(Bool.self, forKey: .isCrossCompanyEnabled)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    customFiltersForLane = try container.decode([String: Any].self, forKey: .customFiltersForLane)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    filters = try container.decode([String: Any].self, forKey: .filters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
            
            
            try? container.encodeIfPresent(laneType, forKey: .laneType)
            
            
            
            
            try? container.encodeIfPresent(customHeaders, forKey: .customHeaders)
            
            
            
            
            try? container.encodeIfPresent(reportType, forKey: .reportType)
            
            
            
            
            try? container.encodeIfPresent(startDate, forKey: .startDate)
            
            
            
            
            try? container.encodeIfPresent(endDate, forKey: .endDate)
            
            
            
            
            try? container.encodeIfPresent(entities, forKey: .entities)
            
            
            
            
            try? container.encodeIfPresent(filterType, forKey: .filterType)
            
            
            
            
            try? container.encodeIfPresent(isCrossCompanyEnabled, forKey: .isCrossCompanyEnabled)
            
            
            
            
            try? container.encodeIfPresent(customFiltersForLane, forKey: .customFiltersForLane)
            
            
            
            
            try? container.encodeIfPresent(filters, forKey: .filters)
            
            
        }
        
    }
}


