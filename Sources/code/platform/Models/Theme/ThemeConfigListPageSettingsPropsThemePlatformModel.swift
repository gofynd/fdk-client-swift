

import Foundation


public extension PlatformClient.Theme {
    /*
        Model: ThemeConfigListPageSettingsProps
        Used By: Theme
    */

    class ThemeConfigListPageSettingsProps: Codable {
        
        
        public var props: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case props = "props"
            
        }

        public init(props: [String: Any]? = nil) {
            
            self.props = props
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    props = try container.decode([String: Any].self, forKey: .props)
                
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



public extension PlatformClient.ApplicationClient.Theme {
    /*
        Model: ThemeConfigListPageSettingsProps
        Used By: Theme
    */

    class ThemeConfigListPageSettingsProps: Codable {
        
        
        public var props: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case props = "props"
            
        }

        public init(props: [String: Any]? = nil) {
            
            self.props = props
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    props = try container.decode([String: Any].self, forKey: .props)
                
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


