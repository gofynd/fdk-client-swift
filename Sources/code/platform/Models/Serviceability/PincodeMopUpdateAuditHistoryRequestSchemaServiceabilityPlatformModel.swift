

import Foundation


public extension PlatformClient.Serviceability {
    /*
        Model: PincodeMopUpdateAuditHistoryRequestSchema
        Used By: Serviceability
    */

    class PincodeMopUpdateAuditHistoryRequestSchema: Codable {
        
        
        public var entityType: String
        
        public var fileName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case entityType = "entity_type"
            
            case fileName = "file_name"
            
        }

        public init(entityType: String, fileName: String? = nil) {
            
            self.entityType = entityType
            
            self.fileName = fileName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                entityType = try container.decode(String.self, forKey: .entityType)
                
            
            
            
                do {
                    fileName = try container.decode(String.self, forKey: .fileName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            
        }
        
    }
}



public extension PlatformClient.ApplicationClient.Serviceability {
    /*
        Model: PincodeMopUpdateAuditHistoryRequestSchema
        Used By: Serviceability
    */

    class PincodeMopUpdateAuditHistoryRequestSchema: Codable {
        
        
        public var entityType: String
        
        public var fileName: String?
        

        public enum CodingKeys: String, CodingKey {
            
            case entityType = "entity_type"
            
            case fileName = "file_name"
            
        }

        public init(entityType: String, fileName: String? = nil) {
            
            self.entityType = entityType
            
            self.fileName = fileName
            
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            
            
                entityType = try container.decode(String.self, forKey: .entityType)
                
            
            
            
                do {
                    fileName = try container.decode(String.self, forKey: .fileName)
                
                } catch DecodingError.typeMismatch(let type, let context) {
                    print("Type '\(type)' mismatch:", context.debugDescription)
                    print("codingPath:", context.codingPath)
                } catch {
                    
                }
                
            
        }
        
        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)
            
            
            
            try? container.encodeIfPresent(entityType, forKey: .entityType)
            
            
            
            
            try? container.encodeIfPresent(fileName, forKey: .fileName)
            
            
        }
        
    }
}


