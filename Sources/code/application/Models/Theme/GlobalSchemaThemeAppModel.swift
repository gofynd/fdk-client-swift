

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: GlobalSchema
        Used By: Theme
    */
    class GlobalSchema: Codable {
        
        public var props: [Prop]?
        

        public enum CodingKeys: String, CodingKey {
            
            case props = "props"
            
        }

        public init(props: [Prop]? = nil) {
            
            self.props = props
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                props = try container.decode([Prop].self, forKey: .props)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(props, forKey: .props)
            
            
        }
        
    }
}
