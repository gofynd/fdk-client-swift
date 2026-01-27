

import Foundation


public extension PlatformClient.Catalog {
    /*
        Model: UpdateTaxVersionRequestBody
        Used By: Catalog
    */

    class UpdateTaxVersionRequestBody: Codable {
        
        
        public var components: [TaxComponentResponseSchema]
        
        public var applicableDate: String
        
        public var regionType: String?
        
        public var areas: TaxGeoArea?
        
        public var storeIds: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case components = "components"
            
            case applicableDate = "applicable_date"
            
            case regionType = "region_type"
            
            case areas = "areas"
            
            case storeIds = "store_ids"
            
        }

        public init(applicableDate: String, areas: TaxGeoArea? = nil, components: [TaxComponentResponseSchema], regionType: String? = nil, storeIds: [Int]? = nil) {
            
            self.components = components
            
            self.applicableDate = applicableDate
            
            self.regionType = regionType
            
            self.areas = areas
            
            self.storeIds = storeIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                components = try container.decode([TaxComponentResponseSchema].self, forKey: .components)
                
            
            
            
                applicableDate = try container.decode(String.self, forKey: .applicableDate)
                
            
            
            
                do {
                    regionType = try container.decode(String.self, forKey: .regionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    areas = try container.decode(TaxGeoArea.self, forKey: .areas)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeIds = try container.decode([Int].self, forKey: .storeIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(components, forKey: .components)
            
            
            
            
            try? container.encodeIfPresent(applicableDate, forKey: .applicableDate)
            
            
            
            
            try? container.encodeIfPresent(regionType, forKey: .regionType)
            
            
            
            
            try? container.encodeIfPresent(areas, forKey: .areas)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Catalog {
    /*
        Model: UpdateTaxVersionRequestBody
        Used By: Catalog
    */

    class UpdateTaxVersionRequestBody: Codable {
        
        
        public var components: [TaxComponentResponseSchema]
        
        public var applicableDate: String
        
        public var regionType: String?
        
        public var areas: TaxGeoArea?
        
        public var storeIds: [Int]?
        

        public enum CodingKeys: String, CodingKey {
            
            case components = "components"
            
            case applicableDate = "applicable_date"
            
            case regionType = "region_type"
            
            case areas = "areas"
            
            case storeIds = "store_ids"
            
        }

        public init(applicableDate: String, areas: TaxGeoArea? = nil, components: [TaxComponentResponseSchema], regionType: String? = nil, storeIds: [Int]? = nil) {
            
            self.components = components
            
            self.applicableDate = applicableDate
            
            self.regionType = regionType
            
            self.areas = areas
            
            self.storeIds = storeIds
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                components = try container.decode([TaxComponentResponseSchema].self, forKey: .components)
                
            
            
            
                applicableDate = try container.decode(String.self, forKey: .applicableDate)
                
            
            
            
                do {
                    regionType = try container.decode(String.self, forKey: .regionType)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    areas = try container.decode(TaxGeoArea.self, forKey: .areas)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    storeIds = try container.decode([Int].self, forKey: .storeIds)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(components, forKey: .components)
            
            
            
            
            try? container.encodeIfPresent(applicableDate, forKey: .applicableDate)
            
            
            
            
            try? container.encodeIfPresent(regionType, forKey: .regionType)
            
            
            
            
            try? container.encodeIfPresent(areas, forKey: .areas)
            
            
            
            
            try? container.encodeIfPresent(storeIds, forKey: .storeIds)
            
            
        }
        
    }
}


