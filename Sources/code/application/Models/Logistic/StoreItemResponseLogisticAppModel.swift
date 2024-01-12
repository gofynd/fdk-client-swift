

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: StoreItemResponse
        Used By: Logistic
    */
    class StoreItemResponse: Codable {
        
        public var id: Int?
        
        public var storeType: String?
        
        public var fulfillmentType: String?
        
        public var processingTime: Int?
        
        public var tags: [String]?
        
        public var companyId: Int?
        
        public var latitude: Double?
        
        public var longitude: Double?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "id"
            
            case storeType = "store_type"
            
            case fulfillmentType = "fulfillment_type"
            
            case processingTime = "processing_time"
            
            case tags = "tags"
            
            case companyId = "company_id"
            
            case latitude = "latitude"
            
            case longitude = "longitude"
            
        }

        public init(companyId: Int? = nil, fulfillmentType: String? = nil, id: Int? = nil, latitude: Double? = nil, longitude: Double? = nil, processingTime: Int? = nil, storeType: String? = nil, tags: [String]? = nil) {
            
            self.id = id
            
            self.storeType = storeType
            
            self.fulfillmentType = fulfillmentType
            
            self.processingTime = processingTime
            
            self.tags = tags
            
            self.companyId = companyId
            
            self.latitude = latitude
            
            self.longitude = longitude
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                id = try container.decode(Int.self, forKey: .id)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                storeType = try container.decode(String.self, forKey: .storeType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                fulfillmentType = try container.decode(String.self, forKey: .fulfillmentType)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                processingTime = try container.decode(Int.self, forKey: .processingTime)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                tags = try container.decode([String].self, forKey: .tags)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                companyId = try container.decode(Int.self, forKey: .companyId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                latitude = try container.decode(Double.self, forKey: .latitude)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                longitude = try container.decode(Double.self, forKey: .longitude)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            try? container.encodeIfPresent(storeType, forKey: .storeType)
            
            
            
            try? container.encodeIfPresent(fulfillmentType, forKey: .fulfillmentType)
            
            
            
            try? container.encodeIfPresent(processingTime, forKey: .processingTime)
            
            
            
            try? container.encodeIfPresent(tags, forKey: .tags)
            
            
            
            try? container.encodeIfPresent(companyId, forKey: .companyId)
            
            
            
            try? container.encodeIfPresent(latitude, forKey: .latitude)
            
            
            
            try? container.encodeIfPresent(longitude, forKey: .longitude)
            
            
        }
        
    }
}
