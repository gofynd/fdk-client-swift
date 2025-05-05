

import Foundation


public extension PlatformClient.Theme {
    /*
        Model: AvailablePageSectionMetaAttributes
        Used By: Theme
    */

    class AvailablePageSectionMetaAttributes: Codable {
        
        
        public var attributes: [String: Any]?
        
        public var canvas: CanvasItem?
        

        public enum CodingKeys: String, CodingKey {
            
            case attributes = "attributes"
            
            case canvas = "canvas"
            
        }

        public init(attributes: [String: Any]? = nil, canvas: CanvasItem? = nil) {
            
            self.attributes = attributes
            
            self.canvas = canvas
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    attributes = try container.decode([String: Any].self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    canvas = try container.decode(CanvasItem.self, forKey: .canvas)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(canvas, forKey: .canvas)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Theme {
    /*
        Model: AvailablePageSectionMetaAttributes
        Used By: Theme
    */

    class AvailablePageSectionMetaAttributes: Codable {
        
        
        public var attributes: [String: Any]?
        
        public var canvas: CanvasItem?
        

        public enum CodingKeys: String, CodingKey {
            
            case attributes = "attributes"
            
            case canvas = "canvas"
            
        }

        public init(attributes: [String: Any]? = nil, canvas: CanvasItem? = nil) {
            
            self.attributes = attributes
            
            self.canvas = canvas
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    attributes = try container.decode([String: Any].self, forKey: .attributes)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    canvas = try container.decode(CanvasItem.self, forKey: .canvas)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(attributes, forKey: .attributes)
            
            
            
            
            try? container.encodeIfPresent(canvas, forKey: .canvas)
            
            
        }
        
    }
}


