

import Foundation
public extension ApplicationClient.Theme {
    /*
        Model: StaticProps
        Used By: Theme
    */
    class StaticProps: Codable {
        
        public var colors: Colors?
        
        public var auth: AuthConfig?
        

        public enum CodingKeys: String, CodingKey {
            
            case colors = "colors"
            
            case auth = "auth"
            
        }

        public init(auth: AuthConfig? = nil, colors: Colors? = nil) {
            
            self.colors = colors
            
            self.auth = auth
            
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
            
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(colors, forKey: .colors)
            
            
            
            
            try? container.encodeIfPresent(auth, forKey: .auth)
            
            
        }
        
    }
}
