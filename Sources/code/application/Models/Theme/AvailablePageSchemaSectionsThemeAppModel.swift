

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: AvailablePageSchemaSections
        Used By: Theme
    */
    class AvailablePageSchemaSections: Codable {
        
        public var name: String?
        
        public var label: String?
        
        public var canvas: String?
        
        public var props: [String: Any]?
        
        public var customCss: String?
        
        public var blocks: [[String: Any]]?
        
        public var preset: [String: Any]?
        
        public var predicate: AvailablePagePredicate?
        
        public var source: SectionSource?
        
        public var assets: SectionAssets?
        

        public enum CodingKeys: String, CodingKey {
            
            case name = "name"
            
            case label = "label"
            
            case canvas = "canvas"
            
            case props = "props"
            
            case customCss = "custom_css"
            
            case blocks = "blocks"
            
            case preset = "preset"
            
            case predicate = "predicate"
            
            case source = "__source"
            
            case assets = "assets"
            
        }

        public init(assets: SectionAssets? = nil, blocks: [[String: Any]]? = nil, canvas: String? = nil, customCss: String? = nil, label: String? = nil, name: String? = nil, predicate: AvailablePagePredicate? = nil, preset: [String: Any]? = nil, props: [String: Any]? = nil, source: SectionSource? = nil) {
            
            self.name = name
            
            self.label = label
            
            self.canvas = canvas
            
            self.props = props
            
            self.customCss = customCss
            
            self.blocks = blocks
            
            self.preset = preset
            
            self.predicate = predicate
            
            self.source = source
            
            self.assets = assets
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
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
            
            
            
            do {
                canvas = try container.decode(String.self, forKey: .canvas)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                props = try container.decode([String: Any].self, forKey: .props)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                customCss = try container.decode(String.self, forKey: .customCss)
            
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
                preset = try container.decode([String: Any].self, forKey: .preset)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                predicate = try container.decode(AvailablePagePredicate.self, forKey: .predicate)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                source = try container.decode(SectionSource.self, forKey: .source)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                assets = try container.decode(SectionAssets.self, forKey: .assets)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            
            
            try? container.encodeIfPresent(canvas, forKey: .canvas)
            
            
            
            try? container.encodeIfPresent(props, forKey: .props)
            
            
            
            try? container.encodeIfPresent(customCss, forKey: .customCss)
            
            
            
            try? container.encodeIfPresent(blocks, forKey: .blocks)
            
            
            
            try? container.encodeIfPresent(preset, forKey: .preset)
            
            
            
            try? container.encodeIfPresent(predicate, forKey: .predicate)
            
            
            
            try? container.encodeIfPresent(source, forKey: .source)
            
            
            
            try? container.encodeIfPresent(assets, forKey: .assets)
            
            
        }
        
    }
}
