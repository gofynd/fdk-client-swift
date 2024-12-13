

import Foundation


public extension PlatformClient.Communication {
    /*
        Model: GlobalVariablesGetResponse
        Used By: Communication
    */

    class GlobalVariablesGetResponse: Codable {
        
        
        public var readOnly: [String: Any]?
        
        public var editable: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case readOnly = "read_only"
            
            case editable = "editable"
            
        }

        public init(editable: [String: Any]? = nil, readOnly: [String: Any]? = nil) {
            
            self.readOnly = readOnly
            
            self.editable = editable
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    readOnly = try container.decode([String: Any].self, forKey: .readOnly)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    editable = try container.decode([String: Any].self, forKey: .editable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(readOnly, forKey: .readOnly)
            
            
            
            
            try? container.encodeIfPresent(editable, forKey: .editable)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Communication {
    /*
        Model: GlobalVariablesGetResponse
        Used By: Communication
    */

    class GlobalVariablesGetResponse: Codable {
        
        
        public var readOnly: [String: Any]?
        
        public var editable: [String: Any]?
        

        public enum CodingKeys: String, CodingKey {
            
            case readOnly = "read_only"
            
            case editable = "editable"
            
        }

        public init(editable: [String: Any]? = nil, readOnly: [String: Any]? = nil) {
            
            self.readOnly = readOnly
            
            self.editable = editable
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    readOnly = try container.decode([String: Any].self, forKey: .readOnly)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    editable = try container.decode([String: Any].self, forKey: .editable)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(readOnly, forKey: .readOnly)
            
            
            
            
            try? container.encodeIfPresent(editable, forKey: .editable)
            
            
        }
        
    }
}


