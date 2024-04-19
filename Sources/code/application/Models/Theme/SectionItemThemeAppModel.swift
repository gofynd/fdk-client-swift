

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: SectionItem
        Used By: Theme
    */
    class SectionItem: Codable {
        
        public var props: [[String: Any]]?
        
        public var blocks: [[String: Any]]?
        
        public var name: String?
        
        public var label: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case props = "props"
            
            case blocks = "blocks"
            
            case name = "name"
            
            case label = "label"
            
        }

        public init(blocks: [[String: Any]]? = nil, label: String? = nil, name: String? = nil, props: [[String: Any]]? = nil) {
            
            self.props = props
            
            self.blocks = blocks
            
            self.name = name
            
            self.label = label
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                props = try container.decode([[String: Any]].self, forKey: .props)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                blocks = try container.decode([[String: Any]].self, forKey: .blocks)
            
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
                label = try container.decode(String.self, forKey: .label)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(props, forKey: .props)
            
            
            
            
            try? container.encodeIfPresent(blocks, forKey: .blocks)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            
        }
        
    }
}
