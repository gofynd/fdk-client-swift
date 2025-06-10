

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: StoreV4
        Used By: Catalog
    */
    class StoreV4: Codable {
        
        public var uid: Int?
        
        public var name: String?
        
        public var count: Int?
        
        public var longLat: [Double]?
        
        public var code: String?
        
        public var address: StoreAddressSchema?
        

        public enum CodingKeys: String, CodingKey {
            
            case uid = "uid"
            
            case name = "name"
            
            case count = "count"
            
            case longLat = "long_lat"
            
            case code = "code"
            
            case address = "address"
            
        }

        public init(address: StoreAddressSchema? = nil, code: String? = nil, count: Int? = nil, longLat: [Double]? = nil, name: String? = nil, uid: Int? = nil) {
            
            self.uid = uid
            
            self.name = name
            
            self.count = count
            
            self.longLat = longLat
            
            self.code = code
            
            self.address = address
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                uid = try container.decode(Int.self, forKey: .uid)
            
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
                count = try container.decode(Int.self, forKey: .count)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                longLat = try container.decode([Double].self, forKey: .longLat)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                code = try container.decode(String.self, forKey: .code)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                address = try container.decode(StoreAddressSchema.self, forKey: .address)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(uid, forKey: .uid)
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(count, forKey: .count)
            
            
            
            try? container.encodeIfPresent(longLat, forKey: .longLat)
            
            
            
            try? container.encodeIfPresent(code, forKey: .code)
            
            
            
            try? container.encodeIfPresent(address, forKey: .address)
            
            
        }
        
    }
}
