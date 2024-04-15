

import Foundation
public extension ApplicationClient.Content {
    /*
        Model: Action
        Used By: Content
    */
    class Action: Codable {
        
        public var type: String?
        
        public var page: ActionPage?
        
        public var popup: ActionPage?
        

        public enum CodingKeys: String, CodingKey {
            
            case type = "type"
            
            case page = "page"
            
            case popup = "popup"
            
        }

        public init(page: ActionPage? = nil, popup: ActionPage? = nil, type: String? = nil) {
            
            self.type = type
            
            self.page = page
            
            self.popup = popup
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                type = try container.decode(String.self, forKey: .type)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                page = try container.decode(ActionPage.self, forKey: .page)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                popup = try container.decode(ActionPage.self, forKey: .popup)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(type, forKey: .type)
            
            
            
            try? container.encodeIfPresent(page, forKey: .page)
            
            
            
            try? container.encodeIfPresent(popup, forKey: .popup)
            
            
        }
        
    }
}
