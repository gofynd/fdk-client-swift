

import Foundation


public extension PlatformClient.Theme {
    /*
        Model: ExtensionSection
        Used By: Theme
    */

    class ExtensionSection: Codable {
        
        
        public var label: String?
        
        public var name: String?
        
        public var props: [PropExtension]?
        
        public var blocks: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case label = "label"
            
            case name = "name"
            
            case props = "props"
            
            case blocks = "blocks"
            
        }

        public init(blocks: [[String: Any]]? = nil, label: String? = nil, name: String? = nil, props: [PropExtension]? = nil) {
            
            self.label = label
            
            self.name = name
            
            self.props = props
            
            self.blocks = blocks
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    label = try container.decode(String.self, forKey: .label)
                
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
                    props = try container.decode([PropExtension].self, forKey: .props)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(props, forKey: .props)
            
            
            
            
            try? container.encodeIfPresent(blocks, forKey: .blocks)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Theme {
    /*
        Model: ExtensionSection
        Used By: Theme
    */

    class ExtensionSection: Codable {
        
        
        public var label: String?
        
        public var name: String?
        
        public var props: [PropExtension]?
        
        public var blocks: [[String: Any]]?
        

        public enum CodingKeys: String, CodingKey {
            
            case label = "label"
            
            case name = "name"
            
            case props = "props"
            
            case blocks = "blocks"
            
        }

        public init(blocks: [[String: Any]]? = nil, label: String? = nil, name: String? = nil, props: [PropExtension]? = nil) {
            
            self.label = label
            
            self.name = name
            
            self.props = props
            
            self.blocks = blocks
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    label = try container.decode(String.self, forKey: .label)
                
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
                    props = try container.decode([PropExtension].self, forKey: .props)
                
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
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(label, forKey: .label)
            
            
            
            
            try? container.encodeIfPresent(name, forKey: .name)
            
            
            
            
            try? container.encodeIfPresent(props, forKey: .props)
            
            
            
            
            try? container.encodeIfPresent(blocks, forKey: .blocks)
            
            
        }
        
    }
}


