

import Foundation
public extension ApplicationClient.Logistic {
    /*
        Model: PincodeMetaResult
        Used By: Logistic
    */
    class PincodeMetaResult: Codable {
        
        public var zone: String?
        
        public var internalZoneId: Int?
        
        public var deliverables: [String]?
        

        public enum CodingKeys: String, CodingKey {
            
            case zone = "zone"
            
            case internalZoneId = "internal_zone_id"
            
            case deliverables = "deliverables"
            
        }

        public init(deliverables: [String]? = nil, internalZoneId: Int? = nil, zone: String? = nil) {
            
            self.zone = zone
            
            self.internalZoneId = internalZoneId
            
            self.deliverables = deliverables
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                zone = try container.decode(String.self, forKey: .zone)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                internalZoneId = try container.decode(Int.self, forKey: .internalZoneId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                deliverables = try container.decode([String].self, forKey: .deliverables)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(zone, forKey: .zone)
            
            
            
            try? container.encodeIfPresent(internalZoneId, forKey: .internalZoneId)
            
            
            
            try? container.encodeIfPresent(deliverables, forKey: .deliverables)
            
            
        }
        
    }
}
