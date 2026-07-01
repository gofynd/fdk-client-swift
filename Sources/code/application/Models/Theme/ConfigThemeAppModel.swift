

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: Config
        Used By: Theme
    */
    class Config: Codable {
        
        public var current: String
        
        public var list: [ThemeConfiguration]
        
        public var globalSchema: GlobalSchema?
        
        public var preset: Preset?
        

        public enum CodingKeys: String, CodingKey {
            
            case current = "current"
            
            case list = "list"
            
            case globalSchema = "global_schema"
            
            case preset = "preset"
            
        }

        public init(current: String, globalSchema: GlobalSchema? = nil, list: [ThemeConfiguration], preset: Preset? = nil) {
            
            self.current = current
            
            self.list = list
            
            self.globalSchema = globalSchema
            
            self.preset = preset
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            current = try container.decode(String.self, forKey: .current)
            
            
            
            
            list = try container.decode([ThemeConfiguration].self, forKey: .list)
            
            
            
            
            do {
                globalSchema = try container.decode(GlobalSchema.self, forKey: .globalSchema)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                preset = try container.decode(Preset.self, forKey: .preset)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(current, forKey: .current)
            
            
            
            try? container.encodeIfPresent(list, forKey: .list)
            
            
            
            try? container.encodeIfPresent(globalSchema, forKey: .globalSchema)
            
            
            
            try? container.encodeIfPresent(preset, forKey: .preset)
            
            
        }
        
    }
}
