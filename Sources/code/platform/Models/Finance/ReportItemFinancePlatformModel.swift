

import Foundation


public extension PlatformClient.Finance {
    /*
        Model: ReportItem
        Used By: Finance
    */

    class ReportItem: Codable {
        
        
        public var id: String?
        
        public var name: String?
        
        public var description: String?
        
        public var allowedFilters: [String]?
        
        public var configMeta: [String: Any]?
        
        public var reportType: String?
        
        public var displayDate: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case name = "name"
            
            case description = "description"
            
            case allowedFilters = "allowed_filters"
            
            case configMeta = "config_meta"
            
            case reportType = "report_type"
            
            case displayDate = "display_date"
            
        }

        public init(allowedFilters: [String]? = nil, configMeta: [String: Any]? = nil, description: String? = nil, displayDate: String? = nil, id: String? = nil, name: String? = nil, reportType: String? = nil) {
            
            self.id = id
            
            self.name = name
            
            self.description = description
            
            self.allowedFilters = allowedFilters
            
            self.configMeta = configMeta
            
            self.reportType = reportType
            
            self.displayDate = displayDate
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
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
                
            
            
                do {
                    description = try container.decode(String.self, forKey: .description)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    allowedFilters = try container.decode([String].self, forKey: .allowedFilters)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    configMeta = try container.decode([String: Any].self, forKey: .configMeta)
                
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
                    displayDate = try container.decode(String.self, forKey: .displayDate)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(description, forKey: .description)
            
            
            
            
            try? container.encodeIfPresent(allowedFilters, forKey: .allowedFilters)
            
            
            
            
            try? container.encodeIfPresent(configMeta, forKey: .configMeta)
            
            
            
            
            try? container.encodeIfPresent(reportType, forKey: .reportType)
            
            
            
            
            try? container.encode(displayDate, forKey: .displayDate)
            
            
        }
        
    }
}




