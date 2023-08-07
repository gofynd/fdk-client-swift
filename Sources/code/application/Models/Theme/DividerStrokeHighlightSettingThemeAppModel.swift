

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: DividerStrokeHighlightSetting
        Used By: Theme
    */
    class DividerStrokeHighlightSetting: Codable {
        
        public var dividerStrokes: String?
        
        public var highlight: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case dividerStrokes = "divider_strokes"
            
            case highlight = "highlight"
            
        }

        public init(dividerStrokes: String? = nil, highlight: String? = nil) {
            
            self.dividerStrokes = dividerStrokes
            
            self.highlight = highlight
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                dividerStrokes = try container.decode(String.self, forKey: .dividerStrokes)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                highlight = try container.decode(String.self, forKey: .highlight)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(dividerStrokes, forKey: .dividerStrokes)
            
            
            
            
            try? container.encodeIfPresent(highlight, forKey: .highlight)
            
            
        }
        
    }
}
