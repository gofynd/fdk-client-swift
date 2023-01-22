

import Foundation
public extension ApplicationClient {
    /*
        Model: EntityReasonData
        Used By: Order
    */
    class EntityReasonData: Codable {
        
        public var reasonId: Int?
        
        public var reasonText: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case reasonId = "reason_id"
            
            case reasonText = "reason_text"
            
        }

        public init(reasonId: Int? = nil, reasonText: String? = nil) {
            
            self.reasonId = reasonId
            
            self.reasonText = reasonText
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                reasonId = try container.decode(Int.self, forKey: .reasonId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                reasonText = try container.decode(String.self, forKey: .reasonText)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(reasonId, forKey: .reasonId)
            
            
            
            
            try? container.encodeIfPresent(reasonText, forKey: .reasonText)
            
            
        }
        
    }
}
