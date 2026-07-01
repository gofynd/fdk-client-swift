

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: PickupStoreDetailSchema
        Used By: Catalog
    */
    class PickupStoreDetailSchema: Codable {
        
        public var storeId: Int?
        
        public var name: String?
        
        public var pincode: String?
        
        public var distance: Double?
        
        public var address: String?
        
        public var storeHours: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case storeId = "store_id"
            
            case name = "name"
            
            case pincode = "pincode"
            
            case distance = "distance"
            
            case address = "address"
            
            case storeHours = "store_hours"
            
        }

        public init(address: String? = nil, distance: Double? = nil, name: String? = nil, pincode: String? = nil, storeHours: [String: Any]? = nil, storeId: Int? = nil) {
            
            self.storeId = storeId
            
            self.name = name
            
            self.pincode = pincode
            
            self.distance = distance
            
            self.address = address
            
            self.storeHours = storeHours
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                storeId = try container.decode(Int.self, forKey: .storeId)
            
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
                pincode = try container.decode(String.self, forKey: .pincode)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                distance = try container.decode(Double.self, forKey: .distance)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                address = try container.decode(String.self, forKey: .address)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                storeHours = try container.decode([String: Any].self, forKey: .storeHours)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(storeId, forKey: .storeId)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(pincode, forKey: .pincode)
            
            
            
            try? container.encodeIfPresent(distance, forKey: .distance)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
            
            try? container.encodeIfPresent(storeHours, forKey: .storeHours)
            
            
        }
        
    }
}
