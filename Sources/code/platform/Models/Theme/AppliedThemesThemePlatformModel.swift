

import Foundation


public extension PlatformClient.Theme {
    /*
        Model: AppliedThemes
        Used By: Theme
    */

    class AppliedThemes: Codable {
        
        
        public var id: String?
        
        public var applicationId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case applicationId = "application_id"
            
        }

        public init(applicationId: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.applicationId = applicationId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Theme {
    /*
        Model: AppliedThemes
        Used By: Theme
    */

    class AppliedThemes: Codable {
        
        
        public var id: String?
        
        public var applicationId: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case id = "_id"
            
            case applicationId = "application_id"
            
        }

        public init(applicationId: String? = nil, id: String? = nil) {
            
            self.id = id
            
            self.applicationId = applicationId
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                do {
                    id = try container.decode(String.self, forKey: .id)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
            
                do {
                    applicationId = try container.decode(String.self, forKey: .applicationId)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(id, forKey: .id)
            
            
            
            
            try? container.encodeIfPresent(applicationId, forKey: .applicationId)
            
            
        }
        
    }
}


