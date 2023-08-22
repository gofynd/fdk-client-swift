

import Foundation
public extension ApplicationClient.User {
    /*
        Model: DeleteAccountReasons
        Used By: User
    */
    class DeleteAccountReasons: Codable {
        
        public var reasonText: String?
        
        public var reasonId: String?
        
        public var showTextArea: Bool?
        

        public enum CodingKeys: String, CodingKey {
            
            case reasonText = "reason_text"
            
            case reasonId = "reason_id"
            
            case showTextArea = "show_text_area"
            
        }

        public init(reasonId: String? = nil, reasonText: String? = nil, showTextArea: Bool? = nil) {
            
            self.reasonText = reasonText
            
            self.reasonId = reasonId
            
            self.showTextArea = showTextArea
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                reasonText = try container.decode(String.self, forKey: .reasonText)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                reasonId = try container.decode(String.self, forKey: .reasonId)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                showTextArea = try container.decode(Bool.self, forKey: .showTextArea)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(reasonText, forKey: .reasonText)
            
            
            
            
            try? container.encodeIfPresent(reasonId, forKey: .reasonId)
            
            
            
            
            try? container.encodeIfPresent(showTextArea, forKey: .showTextArea)
            
            
        }
        
    }
}
