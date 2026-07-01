

import Foundation
public extension ApplicationClient.Order {
    /*
        Model: BagReasonMeta
        Used By: Order
    */
    class BagReasonMeta: Codable {
        
        public var showTextArea: Bool?
        
        public var remarkRequired: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case showTextArea = "show_text_area"
            
            case remarkRequired = "remark_required"
            
        }

        public init(remarkRequired: Bool? = nil, showTextArea: Bool? = nil) {
            
            self.showTextArea = showTextArea
            
            self.remarkRequired = remarkRequired
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                showTextArea = try container.decode(Bool.self, forKey: .showTextArea)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                remarkRequired = try container.decode(Bool.self, forKey: .remarkRequired)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(showTextArea, forKey: .showTextArea)
            
            
            
            try? container.encodeIfPresent(remarkRequired, forKey: .remarkRequired)
            
            
        }
        
    }
}
