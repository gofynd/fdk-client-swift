

import Foundation
public extension ApplicationClient.Catalog {
    /*
        Model: ApplicationItemSeoBreadcrumbs
        Used By: Catalog
    */
    class ApplicationItemSeoBreadcrumbs: Codable {
        
        public var url: String?
        
        public var action: ApplicationItemSeoAction?
        

        public enum CodingKeys: String, CodingKey {
            
            case url = "url"
            
            case action = "action"
            
        }

        public init(action: ApplicationItemSeoAction? = nil, url: String? = nil) {
            
            self.url = url
            
            self.action = action
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                url = try container.decode(String.self, forKey: .url)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                action = try container.decode(ApplicationItemSeoAction.self, forKey: .action)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(url, forKey: .url)
            
            
            
            try? container.encodeIfPresent(action, forKey: .action)
            
            
        }
        
    }
}
