

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: StaticProps
        Used By: Theme
    */
    class StaticProps: Codable {
        
        public var colors: Colors?
        
        public var auth: AuthConfig?
        
        public var palette: PaletteConfig?
        
        public var orderTracking: [String: Any]?
        
        public var manifest: ManifestConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case colors = "colors"
            
            case auth = "auth"
            
            case palette = "palette"
            
            case orderTracking = "order_tracking"
            
            case manifest = "manifest"
            
        }

        public init(auth: AuthConfig? = nil, colors: Colors? = nil, manifest: ManifestConfig? = nil, orderTracking: [String: Any]? = nil, palette: PaletteConfig? = nil) {
            
            self.colors = colors
            
            self.auth = auth
            
            self.palette = palette
            
            self.orderTracking = orderTracking
            
            self.manifest = manifest
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
            do {
                colors = try container.decode(Colors.self, forKey: .colors)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                auth = try container.decode(AuthConfig.self, forKey: .auth)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                palette = try container.decode(PaletteConfig.self, forKey: .palette)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                orderTracking = try container.decode([String: Any].self, forKey: .orderTracking)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
            
            do {
                manifest = try container.decode(ManifestConfig.self, forKey: .manifest)
            
            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {
                
            }
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            try? container.encodeIfPresent(colors, forKey: .colors)
            
            
            
            try? container.encodeIfPresent(auth, forKey: .auth)
            
            
            
            try? container.encodeIfPresent(palette, forKey: .palette)
            
            
            
            try? container.encodeIfPresent(orderTracking, forKey: .orderTracking)
            
            
            
            try? container.encodeIfPresent(manifest, forKey: .manifest)
            
            
        }
        
    }
}
