

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: SectionPreset
        Used By: Theme
    */
    class SectionPreset: Codable {
        
        public var blocks: [Block]?
        

        public enum CodingKeys: String, CodingKey {
            
            case blocks = "blocks"
            
        }

        public init(blocks: [Block]? = nil) {
            
            self.blocks = blocks
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                blocks = try container.decode([Block].self, forKey: .blocks)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(blocks, forKey: .blocks)
            
            
        }
        
    }
}
